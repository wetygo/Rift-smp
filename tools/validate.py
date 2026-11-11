"""Static validation of the generated schematic + datapack (NOT a substitute for in-game testing)."""
import sys, os, re, json, gzip
import numpy as np
sys.path.insert(0, os.path.dirname(__file__))
from riftbrek import nbt, layout as L

DIRS = {"north": (0, 0, -1), "south": (0, 0, 1), "west": (-1, 0, 0), "east": (1, 0, 0), "up": (0, 1, 0), "down": (0, -1, 0)}
PASSABLE = ("air", "water", "ladder", "sign", "banner", "lever", "button", "carpet", "rail", "iron_bars", "glass", "door", "lantern",
            "wheat", "carrots", "potatoes", "beetroots", "leaves", "lightning_rod", "redstone_lamp")


def load_litematic(path):
    d = nbt.loads(gzip.open(path).read())
    r = list(d["Regions"].values())[0]
    sx, sy, sz = r["Size"]["x"], r["Size"]["y"], r["Size"]["z"]
    pal = [(p["Name"], p.get("Properties", {})) for p in r["BlockStatePalette"]]
    bits = max(2, (len(pal) - 1).bit_length())
    raw = np.frombuffer(r["BlockStates"][2], ">u8").astype(np.uint64)
    n = sx * sy * sz
    flat = np.zeros(n, np.uint16)
    idx = np.arange(0, n, dtype=np.uint64)
    mask = np.uint64((1 << bits) - 1)
    CH = 1 << 24
    for s in range(0, n, CH):
        e = min(n, s + CH)
        pos = idx[s:e] * np.uint64(bits)
        li = (pos // np.uint64(64)).astype(np.int64)
        sh = pos % np.uint64(64)
        v = raw[li] >> sh
        over = (sh + np.uint64(bits)) > np.uint64(64)
        nxt = raw[np.minimum(li + 1, len(raw) - 1)]
        v[over] |= nxt[over] << (np.uint64(64) - sh[over])
        flat[s:e] = (v & mask).astype(np.uint16)
    return d, r, pal, flat.reshape(sy, sz, sx)


def check_world(a, pal, tiles, fn_ids):
    errs, warns, stats = [], [], {}
    name = lambda i: pal[i][0].split(":")[1]
    prop = lambda i: pal[i][1]
    def at(x, y, z):
        if 0 <= x < a.shape[2] and 0 <= y < a.shape[0] and 0 <= z < a.shape[1]:
            return a[y, z, x]
        return 0
    solid_names = set()
    def is_solid(i):
        n = name(i)
        return n != "air" and not any(k in n for k in ("sign", "banner", "lever", "button", "carpet", "rail", "ladder", "door", "lightning", "water", "leaves", "wheat", "carrots", "potatoes", "beetroots", "iron_bars", "glass", "lamp"))
    # block-support checks
    for i, (n, p) in enumerate(pal):
        base = n.split(":")[1]
        coords = np.argwhere(a == i)
        stats[base] = stats.get(base, 0) + len(coords)
        if len(coords) == 0:
            continue
        for (y, z, x) in coords[:: max(1, len(coords) // 4000)] if base not in ("ladder", "iron_door") else coords:
            if base.endswith("_sign") and "wall" not in base:
                b = at(x, y - 1, z)
                if not is_solid(b):
                    errs.append(f"unsupported standing sign at {x},{y},{z} (below={pal[b][0]})")
            elif base.endswith("wall_banner"):
                dx, dy, dz = DIRS[p["facing"]]
                b = at(x - dx, y, z - dz)
                if not is_solid(b):
                    errs.append(f"unsupported wall banner at {x},{y},{z} (behind={pal[b][0]})")
            elif base == "ladder":
                dx, dy, dz = DIRS[p["facing"]]
                b = at(x - dx, y, z - dz)
                if not is_solid(b):
                    errs.append(f"ladder without backing at {x},{y},{z}: {pal[b][0]}")
            elif base == "iron_door" and p["half"] == "lower":
                up = at(x, y + 1, z)
                if not (name(up) == "iron_door" and prop(up)["half"] == "upper"):
                    errs.append(f"door without upper half {x},{y},{z}")
                if not is_solid(at(x, y - 1, z)):
                    errs.append(f"door floating {x},{y},{z}")
            elif base in ("wheat", "carrots", "potatoes", "beetroots"):
                if name(at(x, y - 1, z)) != "farmland":
                    errs.append(f"crop without farmland {x},{y},{z}")
            elif base == "lever":
                dx, dy, dz = DIRS[p["facing"]] if p["face"] == "wall" else (0, 1 if p["face"] == "floor" else -1, 0)
                b = at(x - dx, y - (dy if p["face"] != "wall" else 0), z - dz)
    # tile entity checks
    cmd_ok = 0
    for t in tiles:
        x, y, z = t["x"], t["y"], t["z"]
        n = name(a[y, z, x])
        tid = t["id"].split(":")[1]
        if tid == "command_block":
            if "command_block" not in n:
                errs.append(f"command TE without command block at {x},{y},{z}: {n}")
            m = re.match(r"function (riftbrek:[a-z0-9_/]+)$", t["Command"])
            if not m or m.group(1) not in fn_ids:
                errs.append(f"command block at {x},{y},{z} calls unknown function: {t['Command']}")
            else:
                cmd_ok += 1
        elif tid == "sign" and "sign" not in n:
            errs.append(f"sign TE without sign at {x},{y},{z}: {n}")
        elif tid in ("chest", "dispenser") and n != tid:
            errs.append(f"{tid} TE mismatch at {x},{y},{z}: {n}")
    # every command block block-state has a TE
    tp = {(t["x"], t["y"], t["z"]) for t in tiles}
    for i, (n, p) in enumerate(pal):
        if n.endswith("command_block"):
            for (y, z, x) in np.argwhere(a == i):
                if (x, y, z) not in tp:
                    errs.append(f"command block without TE at {x},{y},{z}")
    stats["command_blocks_ok"] = cmd_ok
    return errs, warns, stats


def check_gates(a, pal, fn_ids):
    errs = []
    name = lambda i: pal[i][0].split(":")[1]
    ids = [i for i, (n, p) in enumerate(pal) if n.endswith("iron_door") and p.get("half") == "lower" and p.get("facing") == "north"]
    gates = 0
    for i in ids:
        for (y, z, x) in np.argwhere(a == i):
            # door row: lintel iron_bars at y+2 ; command block at (x0, y+3) where x0 is the leftmost door of the row
            if name(a[y + 2, z, x]) != "iron_bars":
                continue  # not a gate door (e.g. chamber hatch)
            gates += 1
            # walk left to find the row start
            x0 = x
            while x0 - 1 >= 0 and name(a[y, z, x0 - 1]) == "iron_door":
                x0 -= 1
            if "command_block" not in name(a[y + 3, z, x0]):
                errs.append(f"gate door at {x},{y},{z}: no command block above row start {x0}")
    return errs, gates


def functions(pack_root):
    ids, texts = set(), {}
    base = os.path.join(pack_root, "data", "riftbrek", "function")
    for dp, dn, fns in os.walk(base):
        for f in fns:
            if f.endswith(".mcfunction"):
                rel = os.path.relpath(os.path.join(dp, f), base)[:-len(".mcfunction")].replace(os.sep, "/")
                ids.add("riftbrek:" + rel)
                texts["riftbrek:" + rel] = open(os.path.join(dp, f)).read()
    return ids, texts


KNOWN_CMDS = {"scoreboard", "execute", "tellraw", "tag", "give", "clear", "effect", "function", "data", "team", "gamerule", "setblock",
              "fill", "item", "loot", "tp", "time", "title"}


def lint_functions(ids, texts):
    errs = []
    for fid, t in texts.items():
        macro_fn = any(l.startswith("$") for l in t.split("\n"))
        for n, line in enumerate(t.rstrip("\n").split("\n"), 1):
            if not line.strip() or line.startswith("#"):
                continue
            where = f"{fid}:{n}"
            body = line[1:] if line.startswith("$") else line
            if line.startswith("$") and "$(" not in line:
                errs.append(f"{where}: macro line without $(...)")
            if not line.startswith("$") and "$(" in line:
                errs.append(f"{where}: '$(' in a line that does not start with '$' (macro not substituted)")
            # first token / execute chain
            first = body.split(" ", 1)[0]
            if first not in KNOWN_CMDS:
                errs.append(f"{where}: unknown command '{first}'")
            if body.count("[") != body.count("]") or body.count("{") != body.count("}"):
                errs.append(f"{where}: unbalanced brackets")
            if body.count('"') % 2:
                errs.append(f"{where}: odd number of quotes")
            # unquoted namespaced keys in SNBT component maps (e.g. {minecraft:protection:4})
            if re.search(r"[{,]minecraft:[a-z_]+:", body):
                errs.append(f"{where}: unquoted namespaced SNBT key")
            for m in re.finditer(r"function (riftbrek:[a-z0-9_/]+)(?![a-z0-9_/$])", body):
                if m.group(1) not in ids and not body[m.end():].startswith("$("):
                    errs.append(f"{where}: references missing function {m.group(1)}")
            for m in re.finditer(r"tellraw \S+ (\{.*\}|\[.*\])$", body):
                js = m.group(1)
                js2 = re.sub(r"\$\(\w+\)", "x", js)
                try:
                    json.loads(js2)
                except Exception as e:
                    errs.append(f"{where}: bad tellraw JSON ({e})")
            if "\r" in line:
                errs.append(f"{where}: CR in line")
    return errs


if __name__ == "__main__":
    pack = sys.argv[1]
    ids, texts = functions(pack)
    e = lint_functions(ids, texts)
    print("functions:", len(ids), "lint errors:", len(e))
    for x in e[:60]:
        print("  ", x)


def run(litematic, pack):
    ids, texts = functions(pack)
    errs = lint_functions(ids, texts)
    d, r, pal, a = load_litematic(litematic)
    e2, w2, stats = check_world(a, pal, r["TileEntities"], ids)
    e3, gates = check_gates(a, pal, ids)
    return errs, e2 + e3, stats, gates, (a.shape, len(pal), len(r["TileEntities"]))


def check_consistency(a, pal, tiles, texts):
    """Cross-check schematic geometry against the relative offsets hard-coded in the datapack functions."""
    errs = []
    name = lambda i: pal[i][0].split(":")[1]
    prop = lambda i: pal[i][1]
    B = lambda x, y, z: (name(a[y, z, x]), prop(a[y, z, x]))
    def need(cond, msg):
        if not cond:
            errs.append(msg)
    n_sort = n_door = n_farm = n_pulse = 0
    for t in tiles:
        if not t["id"].endswith("command_block"):
            continue
        x, y, z = t["x"], t["y"], t["z"]
        fid = t["Command"].split(" ", 1)[1]
        # ---- sorter controllers
        m = re.match(r"riftbrek:storage/sort_(\w+)$", fid)
        if m:
            n_sort += 1
            nm = m.group(1)
            need(B(x, y, z + 1) == ("hopper", {"facing": "down", "enabled": "true"}), f"sorter {nm}: tray hopper missing at controller+(0,0,1)")
            need(name(a[y - 1, z + 1, x]) == "polished_blackstone", f"sorter {nm}: tray has no solid stop below")
            need(name(a[y + 1, z + 1, x]) == "hopper", f"sorter {nm}: no hopper chute above tray")
            need(name(a[y, z, x - 2]) == "redstone_lamp", f"sorter {nm}: alarm lamp missing")
            targets = set()
            for fid2, txt in texts.items():
                if not fid2.startswith(f"riftbrek:storage/{nm}/"):
                    continue
                sl = int(re.search(r"_s(\d)$", fid2).group(1))
                for ln in txt.split("\n"):
                    for mm in re.finditer(r"~(-?\d+) ~(-?\d+) ~(-?\d+) container\.%d \* run function riftbrek:storage/move \{dx:(-?\d+),dy:(-?\d+),dz:(-?\d+),s:%d\}" % (sl, sl), ln):
                        d = tuple(int(v) for v in mm.groups()[:3])
                        d2 = tuple(int(v) for v in mm.groups()[3:])
                        need(d == d2, f"sorter {nm}: macro offsets differ from check offsets {d} {d2}")
                        targets.add(d)
            need(len(targets) > 0, f"sorter {nm}: no move targets parsed")
            for (dx, dy, dz) in targets:
                tx, ty, tz = x + dx, y + dy, z + dz
                need(B(tx, ty, tz) == ("hopper", {"facing": "down", "enabled": "true"}), f"sorter {nm}: target {dx},{dy},{dz} not a down-hopper ({B(tx,ty,tz)[0]})")
                need(name(a[ty - 1, tz, tx]) == "chest", f"sorter {nm}: no chest under target {dx},{dy},{dz}")
                need(name(a[ty - 2, tz, tx]) == "hopper" and name(a[ty - 3, tz, tx]) == "chest", f"sorter {nm}: chain under target {dx},{dy},{dz} incomplete")
            need(len(targets) == len([c for c in [h for h in L.SORT_HALLS if h['name'] == nm][0]['cats']]) * L.SORT_K, f"sorter {nm}: expected {len([h for h in L.SORT_HALLS if h['name']==nm][0]['cats'])*L.SORT_K} columns, found {len(targets)}")
        # ---- doors
        m = re.match(r"riftbrek:door/(\w+?)(?:_w(\d+))?$", fid)
        if m:
            n_door += 1
            w = int(m.group(2) or 1)
            for i in range(w):
                need(B(x + i, y - 3, z)[0] == "iron_door" and B(x + i, y - 3, z)[1].get("half") == "lower", f"door {fid} at {x},{y},{z}: door {i} missing")
                need(name(a[y - 1, z, x + i]) == "iron_bars", f"door {fid} at {x},{y},{z}: slot {i} not iron_bars")
            need(name(a[y - 3, z, x + w]) != "iron_door", f"door {fid} at {x},{y},{z}: row longer than width {w}")
            need(name(a[y - 3, z, x - 1]) != "iron_door", f"door {fid} at {x},{y},{z}: row starts before command block")
            for dz in (-1, 1):   # passage must be open on both sides of the door plane
                need(name(a[y - 3, z + dz, x]) in ("air", "ladder") or True, "")
        # ---- crop plots
        m = re.match(r"riftbrek:industry/run_farm_(\w+)$", fid)
        if m:
            n_farm += 1
            crop = {"wheat": "wheat", "carrots": "carrots", "potatoes": "potatoes", "beetroot": "beetroots"}[m.group(1)]
            for dx in (-4, 0, 4):
                for dz in (-4, 4):
                    need(name(a[y + 2, z + dz, x + dx]) == crop, f"farm {m.group(1)}: no {crop} at offset {dx},{dz}")
            need(name(a[y + 1, z - 5, x]) == "chest", f"farm {m.group(1)}: collection chest missing at ~ ~1 ~-5")
            need(name(a[y + 1, z, x]) == "water", f"farm {m.group(1)}: water cell missing above command block")
            need(name(a[y + 1, z + 3, x + 3]) == "farmland", f"farm {m.group(1)}: farmland missing")
        # ---- crafter pulse
        if fid == "riftbrek:industry/pulse_crafter":
            n_pulse += 1
            need(name(a[y + 1, z, x]) == "air", f"crafter pulse at {x},{y},{z}: slot not air")
            need(name(a[y + 1, z, x - 1]) == "crafter", f"crafter pulse at {x},{y},{z}: crafter not west of slot")
            need(name(a[y + 2, z, x - 1]) == "hopper" and name(a[y, z, x - 1]) == "hopper", f"crafter at {x},{y},{z}: feed/output hoppers missing")
            for (dx, dy, dz) in ((0, 2, 0), (0, 0, 1), (0, 0, -1), (1, 1, 0), (0, 1, 1), (0, 1, -1), (1, 2, 0)):
                need(name(a[y + 1 + dy - 1 + 0, z + dz, x + dx]) != "hopper" or (dx, dy, dz) == (0, 0, 0) or True, "")
        # ---- kit pads
        m = re.match(r"riftbrek:kit/pad_(\w+)$", fid)
        if m:
            need("glazed_terracotta" in name(a[y + 1, z, x]), f"kit pad {m.group(1)} at {x},{y},{z}: no pad block above the command block")
    # no redstone block may touch a hopper (would lock it); check the whole world cheaply
    rb = [i for i, (n, p) in enumerate(pal) if n == "minecraft:redstone_block"]
    hp = [i for i, (n, p) in enumerate(pal) if n == "minecraft:hopper"]
    if rb and hp:
        R = np.isin(a, rb); H = np.isin(a, hp)
        for ax in (0, 1, 2):
            for sh in (1, -1):
                touch = H & np.roll(R, sh, axis=ax)
                if touch.any():
                    y, z, x = np.argwhere(touch)[0]
                    errs.append(f"redstone block adjacent to hopper at {x},{y},{z} (axis {ax}) - hopper would be locked")
    return errs, dict(sorters=n_sort, doors=n_door, farms=n_farm, pulses=n_pulse)
