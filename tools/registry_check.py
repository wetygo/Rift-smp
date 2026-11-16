"""Validate against the real Minecraft registries (PrismarineJS minecraft-data 1.21.11 + the 1.21.6 Brigadier command tree):
 1. every block name + block-state property/value in the master schematic (all regions)
 2. every data-pack command line against the real command grammar
 3. every item / entity / effect / particle / enchantment / sound id used in commands and tile entities
Usage: registry_check.py <mcdata_dir> <master.litematic> <datapack_dir>"""
import sys, os, re, json, gzip
import numpy as np
sys.path.insert(0, os.path.dirname(__file__))
import validate
from riftbrek import nbt

D = os.path.join(sys.argv[1], "node_modules", "minecraft-data", "minecraft-data", "data", "pc")
def J(v, f): return json.load(open(os.path.join(D, v, f)))
blocks = {b["name"]: b for b in J("1.21.11", "blocks.json")}
items = {i["name"] for i in J("1.21.11", "items.json")}
entities = {e["name"] for e in J("1.21.11", "entities.json")}
effects = {re.sub(r"(?<!^)(?=[A-Z])", "_", e["name"]).lower() for e in J("1.21.11", "effects.json")}
particles = {p["name"] for p in J("1.21.11", "particles.json")}
ench = {e["name"] for e in J("1.21.11", "enchantments.json")}
sounds = {s["name"] for s in J("1.21.11", "sounds.json")}
tree = J("1.21.6", "commands.json")
errs = []


# ---------------------------------------------------------------------------------------------------------- 1. blocks
def allowed_values(st):
    if st["type"] == "bool": return {"true", "false"}
    if st["type"] == "int": return {str(i) for i in range(st["num_values"])} if "values" not in st else {str(v) for v in st["values"]}
    return set(st.get("values", []))


def check_palette(master):
    d = nbt.loads(gzip.open(master).read())
    bad = {}
    n = 0
    for rn, r in d["Regions"].items():
        for p in r["BlockStatePalette"]:
            nm = p["Name"].split(":")[1]; n += 1
            b = blocks.get(nm)
            if b is None:
                bad.setdefault(f"unknown block {nm}", set()).add(rn); continue
            sts = {s["name"]: s for s in b.get("states", [])}
            for k, v in p.get("Properties", {}).items():
                if k not in sts:
                    bad.setdefault(f"{nm}: unknown property '{k}'", set()).add(rn)
                elif v not in allowed_values(sts[k]):
                    bad.setdefault(f"{nm}: bad value {k}={v}", set()).add(rn)
    return n, bad


# ---------------------------------------------------------------------------------------------------------- 2. commands
def split_tokens(line):
    toks, cur, depth, q = [], "", 0, None
    i = 0
    while i < len(line):
        ch = line[i]
        if q:
            cur += ch
            if ch == "\\" and i + 1 < len(line):
                cur += line[i + 1]; i += 1
            elif ch == q:
                q = None
        else:
            if ch in "\"'":
                q = ch; cur += ch
            elif ch in "[{(":
                depth += 1; cur += ch
            elif ch in "]})":
                depth -= 1; cur += ch
            elif ch == " " and depth == 0:
                toks.append(cur); cur = ""
            else:
                cur += ch
        i += 1
    toks.append(cur)
    return [t for t in toks if t != ""]


SPAN = {"minecraft:vec3": 3, "minecraft:block_pos": 3, "minecraft:vec2": 2, "minecraft:column_pos": 2, "minecraft:rotation": 2, "minecraft:angle": 1}
ROOT = {c["name"]: c for c in tree["root"]["children"]}


def node_at(path):
    n = tree["root"]
    for p in path:
        n = next(c for c in n["children"] if c["name"] == p)
    return n


def walk(toks, i, node, memo):
    """True if toks[i:] can be consumed starting from children of node and ending on an executable node"""
    key = (i, id(node))
    if key in memo: return memo[key]
    res = False
    if i == len(toks):
        res = bool(node.get("executable"))
    else:
        kids = node["children"]
        if node.get("redirects"):
            kids = kids + node_at(node["redirects"])["children"]
        if node["name"] == "run" and node["type"] == "literal" and not node.get("children"):
            kids = tree["root"]["children"]
        for c in kids:
            if c["type"] == "literal":
                if toks[i] == c["name"] and walk(toks, i + 1, c, memo):
                    res = True; break
            else:
                par = c.get("parser", {}).get("parser", "")
                if par in ("brigadier:string",) and c["parser"].get("modifier", {}).get("type") == "greedy" or par == "minecraft:message":
                    if c.get("executable") or walk(toks, len(toks), c, memo):
                        res = True; break
                    continue
                span = SPAN.get(par, 1)
                if i + span <= len(toks) and walk(toks, i + span, c, memo):
                    res = True; break
    memo[key] = res
    return res


def check_command(line):
    body = line[1:] if line.startswith("$") else line
    body = re.sub(r"\$\((\w+)\)", "X1", body)
    toks = split_tokens(body)
    if not toks or toks[0] not in ROOT:
        return False
    node = ROOT[toks[0]]
    return walk(toks, 1, node, {})


def check_functions(pack):
    ids, texts = validate.functions(pack)
    bad, n = [], 0
    seen = {}
    for fid, t in texts.items():
        for ln_no, line in enumerate(t.rstrip("\n").split("\n"), 1):
            if not line.strip() or line.startswith("#"):
                continue
            n += 1
            key = re.sub(r"-?\d+", "N", re.sub(r'"[^"]*"', '"s"', line))
            if key in seen:
                ok = seen[key]
            else:
                ok = check_command(line); seen[key] = ok
            if not ok:
                bad.append((f"{fid}:{ln_no}", line[:140]))
    return n, bad, texts


# ---------------------------------------------------------------------------------------------------------- 3. ids
SKIP_NS = ("minecraft:enchantments", "minecraft:potion_contents", "minecraft:written_book_content", "minecraft:writable_book_content", "minecraft:custom_name",
           "minecraft:base_color", "minecraft:container", "minecraft:stored_enchantments", "minecraft:food", "minecraft:lore")


def check_ids(texts, master):
    bad = {}
    for fid, t in texts.items():
        for line in t.split("\n"):
            if line.startswith("#"):
                continue
            for m in re.finditer(r"(?<![\w/])minecraft:([a-z0-9_./]+)", line):
                nm = m.group(1)
                full = "minecraft:" + nm
                if full in SKIP_NS or full.startswith("minecraft:entities/") or nm in ("redstone_block",):
                    continue
                ok = nm in items or nm in blocks or nm in entities or nm in effects or nm in particles or nm in ench or nm in sounds
                if not ok:
                    # tag / sound event names (block.bell.use etc), loot tables, biomes, potions
                    if re.match(r"(block|entity|item|ui|music|ambient)\.", nm) or nm in ("long_invisibility", "fire_resistance", "plains") or ("potion" in line and nm.startswith(("long_", "strong_"))):
                        ok = True
                if not ok:
                    bad.setdefault(full, set()).add(fid)
    # tile-entity / entity ids in the master
    d = nbt.loads(gzip.open(master).read())
    bt = {}
    ent_bad = {}
    def items_in(o):
        if isinstance(o, dict):
            if "id" in o and "count" in o and isinstance(o["id"], str):
                yield o["id"]
            for v in o.values():
                yield from items_in(v)
        elif isinstance(o, list):
            for v in o:
                yield from items_in(v)
    for rn, r in d["Regions"].items():
        for t in r["TileEntities"]:
            for iid in items_in(t):
                if iid.split(":")[1] not in items:
                    bt.setdefault(iid, set()).add(rn)
        for e in r["Entities"]:
            eid = e.get("id", "?")
            if eid.split(":")[-1] not in entities:
                ent_bad.setdefault(eid, set()).add(rn)
            for iid in items_in(e):
                if iid.split(":")[1] not in items:
                    bt.setdefault(iid, set()).add(rn)
    return bad, bt, ent_bad


if __name__ == "__main__":
    mc, master, pack = sys.argv[1], sys.argv[2], sys.argv[3]
    out = ["# Registry validation (Minecraft 1.21.11 data: PrismarineJS minecraft-data 3.119.0; command grammar from the 1.21.6 Brigadier tree)", ""]
    n, bad = check_palette(master)
    out.append(f"## 1. Block states in the master schematic\n{n} palette entries across all regions checked against 1.21.11 blocks + state properties: **{sum(len(v) > 0 for v in bad.values())} problems**")
    for k, v in sorted(bad.items()):
        out.append(f"- {k}  (in {', '.join(sorted(v))[:100]})")
    nc, badc, texts = check_functions(pack)
    out.append(f"\n## 2. Data-pack commands vs the real command grammar\n{nc} command lines checked: **{len(badc)} rejected**")
    for where, line in badc[:60]:
        out.append(f"- {where}: `{line}`")
    bi, bt, be = check_ids(texts, master)
    out.append(f"\n## 3. Item / entity / effect / particle / sound ids\n- ids in data-pack commands not found in the 1.21.11 registries: **{len(bi)}**")
    for k, v in sorted(bi.items()):
        out.append(f"  - `{k}` in {', '.join(sorted(v))[:90]}")
    out.append(f"- item ids inside tile entities / entities of the schematic not in the registry: **{len(bt)}**")
    for k, v in sorted(bt.items()):
        out.append(f"  - `{k}` ({', '.join(sorted(v))[:90]})")
    out.append(f"- entity types in the schematic not in the registry: **{len(be)}**")
    for k, v in sorted(be.items()):
        out.append(f"  - `{k}` ({', '.join(sorted(v))[:90]})")
    print("\n".join(out))
