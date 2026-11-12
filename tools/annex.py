"""Import third-party .litematic builds, retheme them (purple / black / white / blue), make them 1.21.11-safe, colour-code switches."""
import sys, os, re, gzip, time, collections
import numpy as np
sys.path.insert(0, os.path.dirname(__file__))
from riftbrek import nbt
from riftbrek.nbt import Long

WARM = {"red", "orange", "yellow", "pink", "brown", "magenta", "purple"}
COOL = {"lime", "green", "cyan", "light_blue", "blue"}
COLOURS = ["red", "orange", "yellow", "lime", "cyan", "light_blue", "magenta", "pink", "white", "green"]
WOODS = ["pale_oak", "dark_oak", "mangrove", "spruce", "jungle", "acacia", "birch", "cherry", "bamboo", "oak", "crimson", "warped"]
COLOR_RE = re.compile(r"^(red|orange|yellow|pink|brown|magenta|purple|lime|green|cyan|light_blue|blue|white|black|gray|light_gray)_(.+)$")


def read_lit(path):
    d = nbt.loads(gzip.open(path).read())
    r = list(d["Regions"].values())[0]
    sx, sy, sz = (abs(r["Size"][k]) for k in "xyz")
    pal = [(p["Name"], dict(p.get("Properties", {}))) for p in r["BlockStatePalette"]]
    bits = max(2, (len(pal) - 1).bit_length())
    raw = np.frombuffer(r["BlockStates"][2], ">u8").astype(np.uint64)
    n = sx * sy * sz
    flat = np.zeros(n, np.uint32)
    mask = np.uint64((1 << bits) - 1)
    for s in range(0, n, 1 << 24):
        e = min(n, s + (1 << 24))
        pos = np.arange(s, e, dtype=np.uint64) * np.uint64(bits)
        li = (pos // np.uint64(64)).astype(np.int64)
        sh = pos % np.uint64(64)
        v = raw[li] >> sh
        over = (sh + np.uint64(bits)) > np.uint64(64)
        nxt = raw[np.minimum(li + 1, len(raw) - 1)]
        v[over] |= nxt[over] << (np.uint64(64) - sh[over])
        flat[s:e] = (v & mask).astype(np.uint32)
    return d, r, pal, flat.reshape(sy, sz, sx)


def map_block(name, props):
    """returns (name, props) in 1.21.11 + purple theme.  props is not mutated."""
    n = name.split(":")[1]
    p = dict(props)
    if n == "chain":
        return "minecraft:iron_chain", p
    if n == "grass":
        return "minecraft:short_grass", {}
    # --- blocks that do not exist in 1.21.11 (newer game versions) ---
    if "cinnabar" in n or n.endswith("sulfur") or "sulfur_" in n or n == "potent_sulfur":
        if "sulfur" in n or "potent" in n:
            base = "purple_concrete" if n in ("potent_sulfur",) else "purpur_block"
        else:
            base = "polished_blackstone_bricks"
        for suf, to in (("_stairs", "polished_blackstone_brick_stairs"), ("_slab", "polished_blackstone_brick_slab"), ("_wall", "polished_blackstone_brick_wall")):
            if n.endswith(suf):
                return "minecraft:" + to, p
        if n.startswith("chiseled"):
            return "minecraft:chiseled_polished_blackstone", {}
        return "minecraft:" + base, {}
    # --- copper family ---
    if "copper" in n and n != "copper_ore" and "lightning" not in n:
        if n.endswith("_bulb"):
            return "minecraft:redstone_lamp", {"lit": p.get("lit", "false")}
        if "trapdoor" in n:
            return "minecraft:iron_trapdoor", p
        if "bars" in n:
            return "minecraft:iron_bars", p
        if "grate" in n:
            return "minecraft:tinted_glass", {}
        if n.endswith("_stairs"):
            return "minecraft:purpur_stairs", p
        if n.endswith("_slab"):
            return "minecraft:purpur_slab", p
        if "chiseled" in n:
            return "minecraft:chiseled_polished_blackstone", {}
        if "oxidized" in n or "weathered" in n:
            return "minecraft:blue_concrete", {}
        if "door" in n:
            return name, p
        return "minecraft:amethyst_block", {}
    if "lightning_rod" in n:
        return "minecraft:lightning_rod", p
    # --- red sandstone ---
    if "red_sandstone" in n or n == "sandstone_wall":
        for suf, to in (("_stairs", "polished_blackstone_stairs"), ("_slab", "polished_blackstone_slab"), ("_wall", "polished_blackstone_wall")):
            if n.endswith(suf):
                return "minecraft:" + to, p
        return "minecraft:chiseled_polished_blackstone" if "chiseled" in n else ("minecraft:polished_blackstone_bricks" if "cut" in n else "minecraft:polished_blackstone"), {}
    if n.startswith("red_nether_brick") or n.startswith("resin_brick") or n == "resin_clump":
        if n == "resin_clump":
            return "minecraft:air", {}
        for suf, to in (("_stairs", "purpur_stairs"), ("_slab", "purpur_slab"), ("_wall", "polished_blackstone_wall")):
            if n.endswith(suf):
                return "minecraft:" + to, p
        return "minecraft:purpur_block", {}
    # --- lights ---
    if n in ("shroomlight", "ochre_froglight", "glowstone", "verdant_froglight", "pearlescent_froglight"):
        return "minecraft:sea_lantern", {}
    if n in ("gold_block", "emerald_block", "diamond_block", "raw_gold_block"):
        return "minecraft:amethyst_block", {}
    if n == "lapis_block":
        return "minecraft:blue_concrete", {}
    if n.endswith("_leaves"):
        return "minecraft:cherry_leaves", p
    if n.startswith("stripped_") and (n.endswith("_log") or n.endswith("_wood") or n.endswith("_block")):
        return "minecraft:purple_concrete", {}
    # --- wood families -> purple materials / crimson for functional wooden shapes ---
    for w in WOODS:
        if n.startswith(w + "_") or n == w + "_planks":
            rest = n[len(w) + 1:]
            if w == "oak" and n.startswith("oak_") is False:
                continue
            if rest == "planks" or rest == "mosaic":
                return "minecraft:purple_terracotta", {}
            if rest in ("log", "wood", "stripped_log", "stripped_wood", "block", "stripped_block") or rest.startswith("stripped"):
                return "minecraft:purple_concrete", {}
            if rest == "stairs":
                return "minecraft:purpur_stairs", p
            if rest == "slab":
                return "minecraft:purpur_slab", p
            if rest in ("fence", "fence_gate", "trapdoor", "door", "button", "pressure_plate", "sign", "wall_sign", "hanging_sign", "wall_hanging_sign", "shelf"):
                return "minecraft:crimson_" + rest, p
            if rest == "leaves":
                return "minecraft:cherry_leaves", p
    # --- coloured families ---
    m = COLOR_RE.match(n)
    if m:
        col, rest = m.groups()
        new = "purple" if col in WARM else ("blue" if col in COOL else col)
        if new != col:
            return f"minecraft:{new}_{rest}", p
    return name, p


def key(name, props):
    return name + "|" + ",".join(f"{k}={v}" for k, v in sorted(props.items()))


def find_switch_groups(arr, pal):
    lev = [i for i, (nm, p) in enumerate(pal) if nm.endswith(":lever")]
    pts = []
    for i in lev:
        face, facing = pal[i][1].get("face", "wall"), pal[i][1].get("facing", "north")
        for (y, z, x) in np.argwhere(arr == i):
            if face == "floor": s = (x, y - 1, z)
            elif face == "ceiling": s = (x, y + 1, z)
            else:
                dx, dz = {"north": (0, 1), "south": (0, -1), "west": (1, 0), "east": (-1, 0)}[facing]
                s = (x + dx, y, z + dz)
            pts.append((x, y, z, face, facing, s))
    # union-find clusters (radius 6)
    parent = list(range(len(pts)))
    def f(a):
        while parent[a] != a:
            parent[a] = parent[parent[a]]; a = parent[a]
        return a
    for a in range(len(pts)):
        for b in range(a + 1, len(pts)):
            if max(abs(pts[a][k] - pts[b][k]) for k in range(3)) <= 6:
                parent[f(a)] = f(b)
    groups = collections.defaultdict(list)
    for a in range(len(pts)):
        groups[f(a)].append(pts[a])
    return sorted(groups.values(), key=lambda g: (g[0][1], g[0][0], g[0][2])), pts


DECOR = re.compile(r"(_concrete|_wool|_terracotta|polished_blackstone|_bricks|smooth_|quartz_block|deepslate_tiles|polished_deepslate|^stone$|purpur_block|tuff|andesite|diorite)$")


def prepare(src, theme=True, recolor_switches=True):
    """read a litematic, make it 1.21.11-safe (+ optional purple retheme), return arrays + metadata (no file written)."""
    import legacy
    legacy.WARN.clear()
    t0 = time.time()
    d, r, pal, arr = read_lit(src)
    dv = d.get("MinecraftDataVersion", 0)
    sy, sz, sx = arr.shape
    newpal, remap, changed = [], np.zeros(len(pal), np.uint32), collections.Counter()
    pidx = {}
    def pid(nm, pr):
        k = key(nm, pr)
        if k not in pidx:
            pidx[k] = len(newpal); newpal.append((nm, pr))
        return pidx[k]
    pid("minecraft:air", {})
    for i, (nm, pr) in enumerate(pal):
        nn, np_ = map_block(nm, pr) if theme else compat_block(nm, pr)
        remap[i] = pid(nn, np_)
        if nn != nm:
            changed[nm.split(":")[1] + " -> " + nn.split(":")[1]] += 1
    out = remap[arr]
    gcol = {}
    if recolor_switches:
        groups, pts = find_switch_groups(arr, pal)
        for gi, g in enumerate(groups):
            col = COLOURS[gi % len(COLOURS)]
            cb = pid(f"minecraft:{col}_concrete", {})
            for (x, y, z, face, facing, s_) in g:
                sx_, sy_, sz_ = s_
                offs = [(a, 0, b) for a in (-1, 0, 1) for b in (-1, 0, 1)] if face in ("floor", "ceiling") else \
                       ([(a, b, 0) for a in (-1, 0, 1) for b in (-1, 0, 1)] if facing in ("north", "south") else [(0, b, a) for a in (-1, 0, 1) for b in (-1, 0, 1)])
                for (ox, oy, oz) in offs:
                    X, Y, Z = sx_ + ox, sy_ + oy, sz_ + oz
                    if 0 <= X < sx and 0 <= Y < sy and 0 <= Z < sz:
                        nm = newpal[out[Y, Z, X]][0].split(":")[1]
                        if (ox, oy, oz) == (0, 0, 0) and nm not in ("air",) or DECOR.search(nm):
                            out[Y, Z, X] = cb
            gcol[gi] = (col, len(g), g[0][:3])
    tiles = []
    for t in r["TileEntities"]:
        if "id" not in t:                                   # 1.19-era litematics omit the id: infer from the block
            t = dict(t)
            bn = pal[arr[t["y"], t["z"], t["x"]]][0].split(":")[1]
            t["id"] = "minecraft:" + ("shulker_box" if bn.endswith("shulker_box") else "hanging_sign" if "hanging_sign" in bn else
                                      "sign" if bn.endswith("sign") else "banner" if bn.endswith("banner") else
                                      "chest" if bn in ("chest", "trapped_chest") else "command_block" if "command_block" in bn else bn)
        if t["id"].endswith("potent_sulfur"):
            continue
        tiles.append(t)
    ents = r["Entities"]
    tiles, ents = legacy.convert_all(tiles, ents, dv)
    meta = d["Metadata"]
    return dict(arr=out, pal=newpal, tiles=tiles, ents=ents, size=(sx, sy, sz), meta=meta, dv=dv, changed=changed,
                switches=gcol, tiles_in=len(r["TileEntities"]), warn=dict(legacy.WARN), secs=time.time() - t0)


def compat_block(name, props):
    """version fixes only (no recolour)"""
    n = name.split(":")[1]
    if n == "chain":
        return "minecraft:iron_chain", dict(props)
    if n == "grass":
        return "minecraft:short_grass", {}
    if "cinnabar" in n or "sulfur" in n:
        return map_block(name, props)
    return name, dict(props)


def pack_region(prep, position=(0, 0, 0)):
    out, newpal = prep["arr"], prep["pal"]
    sx, sy, sz = prep["size"]
    bits = max(2, (len(newpal) - 1).bit_length())
    n = out.size
    pad = (-n) % 64
    flat = np.concatenate([out.reshape(-1).astype(np.uint64), np.zeros(pad, np.uint64)]).reshape(-1, 64)
    packed = np.zeros((flat.shape[0], bits), dtype=np.uint64)
    for j in range(64):
        li, sh = divmod(j * bits, 64)
        packed[:, li] |= flat[:, j] << np.uint64(sh)
        if sh + bits > 64:
            packed[:, li + 1] |= flat[:, j] >> np.uint64(64 - sh)
    longs_needed = (n * bits + 63) // 64
    data = packed.reshape(-1)[:longs_needed].astype(">u8").tobytes()
    palnbt = [{"Name": nm, **({"Properties": pr} if pr else {})} for nm, pr in newpal]
    return {"Position": {"x": int(position[0]), "y": int(position[1]), "z": int(position[2])}, "Size": {"x": sx, "y": sy, "z": sz},
            "BlockStatePalette": palnbt, "BlockStates": data, "TileEntities": prep["tiles"], "Entities": prep["ents"],
            "PendingBlockTicks": [], "PendingFluidTicks": []}


def write_litematic(path, regions, name, author, desc, total=None, enclosing=None):
    now = Long(int(time.time() * 1000))
    if enclosing is None:
        mx = max(r["Position"]["x"] + r["Size"]["x"] for r in regions.values())
        my = max(r["Position"]["y"] + r["Size"]["y"] for r in regions.values())
        mz = max(r["Position"]["z"] + r["Size"]["z"] for r in regions.values())
        enclosing = (mx, my, mz)
    vol = sum(r["Size"]["x"] * r["Size"]["y"] * r["Size"]["z"] for r in regions.values())
    root = {"MinecraftDataVersion": 4671, "Version": 6, "SubVersion": 1,
            "Metadata": {"Name": name, "Author": author, "Description": desc, "RegionCount": len(regions),
                         "TotalBlocks": int(total or 0), "TotalVolume": int(vol),
                         "EnclosingSize": {"x": enclosing[0], "y": enclosing[1], "z": enclosing[2]}, "TimeCreated": now, "TimeModified": now},
            "Regions": regions}
    tmp = path + ".tmp"
    with gzip.GzipFile(tmp, "wb", compresslevel=6, mtime=0) as f:
        f.write(nbt.dumps(root))
    os.replace(tmp, path)                      # atomic: never leave a truncated master behind


def convert(src, dst, label, theme=True):
    prep = prepare(src, theme=theme, recolor_switches=theme)
    meta = prep["meta"]
    reg = pack_region(prep)
    sfx = "(RIFTBREK purple)" if theme else "(RIFTBREK 1.21.11 port)"
    write_litematic(dst, {label: reg}, f"{meta.get('Name','')} {sfx}", f"{meta.get('Author','?')} (original) / RIFTBREK port",
                    f"Port of '{meta.get('Name','')}' by {meta.get('Author','?')} to 1.21.11" + (": purple retheme, colour-coded switches." if theme else ".") + " Untested in-game.",
                    total=int(np.count_nonzero(prep["arr"])))
    return dict(size=prep["size"], palette_in=len(prep["pal"]), palette_out=len(prep["pal"]), changed=prep["changed"], switches=prep["switches"],
                tiles=(prep["tiles_in"], len(prep["tiles"])), entities=len(prep["ents"]), secs=prep["secs"], solid=int(np.count_nonzero(prep["arr"])), data_version_in=prep["dv"], warn=prep["warn"])


if __name__ == "__main__":
    srcdir, outdir = sys.argv[1], sys.argv[2]
    os.makedirs(outdir, exist_ok=True)
    import json
    report = {}
    for fn in sorted(os.listdir(srcdir)):
        if not fn.endswith(".litematic"):
            continue
        nm = fn.split("-", 1)[1] if "-" in fn else fn
        dst = os.path.join(outdir, "RIFTBREK_" + nm.replace(".litematic", "").replace(" ", "_") + "_PURPLE.litematic")
        rep = convert(os.path.join(srcdir, fn), dst, nm.replace(".litematic", ""))
        print(f"{nm}: {rep['size']} palette {rep['palette_in']}->{rep['palette_out']} tiles {rep['tiles']} ents {rep['entities']} switches {len(rep['switches'])} ({rep['secs']:.0f}s)")
        report[nm] = {k: (dict(v) if isinstance(v, collections.Counter) else v) for k, v in rep.items()}
    json.dump(report, open(os.path.join(outdir, "conversion_report.json"), "w"), indent=1, default=str)
