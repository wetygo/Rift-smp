"""Second furnishing pass: towers, citadel floors, terminal, underground rooms.  Only ever writes into air cells that have a
solid floor, keeps >=3 cells clear around every gate / ladder and never touches the room centre, so walkability is preserved."""
import numpy as np
from .build_common import *
from . import build_common as C
from . import layout as L

DIRS = {"north": (0, -1), "south": (0, 1), "west": (-1, 0), "east": (1, 0)}
OPP = {"north": "south", "south": "north", "west": "east", "east": "west"}
CH = lambda f: f"minecraft:chest[facing={f},type=single,waterlogged=false]"
STAIR = lambda f: f"minecraft:purpur_stairs[facing={f},half=bottom,shape=straight,waterlogged=false]"
BED = lambda c, f, part: f"minecraft:{c}_bed[facing={f},occupied=false,part={part}]"


def ok(W, x, y, z, h=2):
    if not (0 <= x < W.sx and 0 <= z < W.sz):
        return False
    return all(W.a[y + i, z, x] == 0 for i in range(h)) and W.a[y - 1, z, x] != 0


def near_blocked(x, y, z, ladders):
    for (tier, w, gx, gy, gz) in C.GATES:
        if gx - 3 <= x <= gx + w + 2 and abs(gz - z) <= 4 and abs(gy - y) <= 12:
            return True
    return any(abs(lx - x) <= 2 and abs(lz - z) <= 2 for (lx, lz) in ladders)


def put(W, x, y, z, b, h=2):
    if ok(W, x, y, z, h):
        W.set(x, y, z, b); return True
    return False


def item(W, kind, x, y, z, inward, k):
    f_in = inward
    f_out = OPP[inward]
    dx, dz = DIRS[f_in]
    if kind == "bed":
        if ok(W, x, y, z) and ok(W, x + dx, y, z + dz):
            col = ("purple", "black", "blue", "white")[k % 4]
            W.set(x, y, z, BED(col, f_in, "head")); W.set(x + dx, y, z + dz, BED(col, f_in, "foot"))
            # bed facing = direction foot->head: foot is further inside, head at the wall => face the wall
            W.set(x, y, z, BED(col, f_out, "head")); W.set(x + dx, y, z + dz, BED(col, f_out, "foot"))
        return
    if kind == "chest":
        put(W, x, y, z, CH(f_in)); return
    if kind == "table":                     # crimson fence post + pressure plate top, with a stair chair and a lantern
        if ok(W, x, y, z, 2) and ok(W, x + dx, y, z + dz, 1):
            W.set(x, y, z, "minecraft:crimson_fence[north=false,east=false,south=false,west=false,waterlogged=false]")
            W.set(x, y + 1, z, "minecraft:crimson_pressure_plate[powered=false]")
            W.set(x + dx, y, z + dz, STAIR(f_out))
        return
    if kind == "books":
        for h in range(3):
            put(W, x, y + h, z, "minecraft:bookshelf", 1)
        return
    if kind == "lectern":
        put(W, x, y, z, f"minecraft:lectern[facing={f_in},has_book=false,powered=false]"); return
    if kind == "craft":
        put(W, x, y, z, ["minecraft:crafting_table", "minecraft:smithing_table", "minecraft:blast_furnace[facing=%s,lit=false]" % f_in, "minecraft:smoker[facing=%s,lit=false]" % f_in,
                         "minecraft:anvil[facing=%s]" % ("north" if f_in in ("east", "west") else "east"), "minecraft:grindstone[face=floor,facing=%s]" % f_in][k % 6]); return
    if kind == "barrel":
        put(W, x, y, z, "minecraft:barrel[facing=up,open=false]"); return
    if kind == "banner":
        W.set(x, y + 3, z, f"minecraft:purple_wall_banner[facing={f_in}]") if W.a[y + 3, z, x] == 0 and W.a[y + 3, z - DIRS[f_in][1], x - DIRS[f_in][0]] != 0 else None
        return
    if kind == "plant":
        put(W, x, y, z, "minecraft:potted_cherry_sapling", 1); return
    if kind == "cell":                       # holding cell: bars + bed
        item(W, "bed", x, y, z, f_in, k)


STYLES = {
    "noble":    ["table", "books", "chest", "lectern", "banner", "plant", "table", "craft", "books", "bed"],
    "barracks": ["bed", "chest", "bed", "craft", "barrel", "bed", "chest", "table", "books", "craft"],
    "office":   ["table", "books", "lectern", "chest", "craft", "table", "books", "plant"],
    "lounge":   ["bed", "table", "books", "plant", "chest", "table", "barrel"],
}


def furnish_rect(W, x0, z0, x1, z1, y, style, ladders=(), step=4):
    """walk the inner perimeter (inset 0 from the walls) placing items"""
    k = 0
    seq = STYLES[style]
    cells = []
    for x in range(x0 + 1, x1 - 1, step):
        cells.append((x, z0, "south")); cells.append((x, z1, "north"))
    for z in range(z0 + 1, z1 - 1, step):
        cells.append((x0, z, "east")); cells.append((x1, z, "west"))
    n = 0
    for (x, z, inward) in cells:
        if near_blocked(x, y, z, ladders):
            continue
        item(W, seq[k % len(seq)], x, y, z, inward, k); k += 1; n += 1
    return n


def furnish_shells(W, skip_boxes):
    n = 0
    for sh in C.SHELLS:
        if any(sh["x0"] >= b[0] - 1 and sh["x1"] <= b[2] + 1 and sh["z0"] >= b[1] - 1 and sh["z1"] <= b[3] + 1 for b in skip_boxes):
            continue
        t = sh["thick"]
        big = (sh["x1"] - sh["x0"]) > 100
        style = "noble" if big or sh["floors"] <= 4 else "barracks"
        ladders = [(sh["x0"] + t, sh["z0"] + t), (sh["x1"] - t, sh["z1"] - t)]
        for f in range(sh["floors"] - 1 if sh["floors"] > 1 else 1):
            y = sh["y0"] + f * sh["fh"]
            if y == C.GY and big:
                continue                        # grand hall ground floor stays open (pillars, ramp, kit pad)
            n += furnish_rect(W, sh["x0"] + t, sh["z0"] + t, sh["x1"] - t, sh["z1"] - t, y, style if f % 2 == 0 else "office" if style == "noble" else "lounge", ladders)
    return n


def furnish_basements(W):
    from .build_wings import WINGS
    n = 0
    y1 = L.level_floor(1) + 1
    styles = {"archivist": "office", "unstables": "office", "veil": "lounge", "abstracters": "barracks", "wildcards": "office", "nexus": "office"}
    for key, (wx0, wz0, wx1, wz1, floors, fh, face) in WINGS.items():
        # furnish each 24x24 partition room along its own walls (centre cross stays free)
        xs = [wx0 + 3] + [x + 1 for x in range(wx0 + 3 + 24, wx1 - 3 - 4, 24)]
        zs = [wz0 + 3] + [z + 1 for z in range(wz0 + 3 + 24, wz1 - 3 - 4, 24)]
        for i, rx in enumerate(xs):
            for j, rz in enumerate(zs):
                ex = (xs[i + 1] - 2) if i + 1 < len(xs) else wx1 - 3
                ez = (zs[j + 1] - 2) if j + 1 < len(zs) else wz1 - 3
                n += furnish_rect(W, rx + 1, rz + 1, ex - 1, ez - 1, y1, styles[key], ladders=[(wx0 + 3, wz0 + 3), (wx1 - 3, wz1 - 3)], step=5)
    return n


def furnish_underground(W):
    n = 0
    y1, y2, y9, y6 = (L.level_floor(k) + 1 for k in (1, 2, 9, 6))
    n += furnish_rect(W, 301, 691, 466, 726, y1, "barracks")               # B1 security barracks / cells
    n += furnish_rect(W, 331, 421, 436, 539, y2, "office")                 # B2 offices
    n += furnish_rect(W, 301, 201, 466, 259, y2, "office")
    n += furnish_rect(W, 49, 309, 159, 419, y9, "lounge")                  # B9 Veil HQ
    n += furnish_rect(W, 431, 471, 529, 529, y6, "office")                 # B6 kit hall
    n += furnish_basements(W)
    return n
