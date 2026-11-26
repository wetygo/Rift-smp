"""Room decoration pass: every partitioned room of every multi-floor building gets a TYPE (bedroom, kitchen, library, armory, lab, workshop, shop, ...) with the
matching working furniture (beds, furnaces / smokers, brewing stands, anvils, grindstones, looms, bookshelves + lectern + enchanting table ...), carpet, lanterns,
a plant, and a label sign - so every room is a usable room, not an empty box.  Corners of each room are used; the centre cross (the arch doorways) stays free."""
import numpy as np
from .build_common import *
from . import build_common as C
from . import build_furnish2 as F2

DIRS = F2.DIRS
OPP = F2.OPP

TYPES = {
    "bedroom": ["bed", "chest", "bed", "plant", "lantern", "bed"],
    "ward":    ["bed", "bed", "chest", "brewing", "bed", "lantern"],
    "kitchen": ["furnace", "smoker", "barrel", "crafting", "cauldron", "blast", "barrel", "table"],
    "dining":  ["table", "table", "plant", "lantern", "table", "barrel"],
    "library": ["books", "lectern", "books", "enchant", "books", "lantern"],
    "armory":  ["anvil", "grindstone", "smithing", "chest", "stonecutter", "banner", "chest"],
    "forge":   ["blast", "anvil", "furnace", "smithing", "barrel", "grindstone"],
    "lab":     ["brewing", "cauldron", "composter", "chest", "brewing", "lantern"],
    "office":  ["table", "lectern", "chest", "books", "plant", "lantern"],
    "lounge":  ["sofa", "table", "plant", "books", "lantern", "sofa"],
    "storage": ["barrel", "chest", "barrel", "chest", "barrel", "chest"],
    "workshop": ["crafting", "loom", "stonecutter", "fletching", "cartography", "anvil", "chest"],
    "shop":    ["barrel", "chest", "table", "barrel", "banner", "lantern"],
    "hall":    ["banner", "table", "plant", "lantern", "banner", "table"],
    "stable":  ["hay", "barrel", "cauldron", "chest", "hay", "lantern"],
    "classroom": ["lectern", "books", "table", "lectern", "table", "plant"],
    "guardroom": ["bed", "chest", "armory_stand", "furnace", "bed", "lantern"],
}
CARPET = {"bedroom": "red", "ward": "white", "kitchen": "orange", "dining": "brown", "library": "blue", "armory": "gray", "forge": "black", "lab": "cyan", "office": "purple",
          "lounge": "magenta", "storage": "gray", "workshop": "light_gray", "shop": "yellow", "hall": "purple", "stable": "lime", "classroom": "light_blue", "guardroom": "gray"}
KIND_ROOMS = {
    "barracks": ["bedroom", "bedroom", "guardroom", "dining", "bedroom", "armory"], "academy": ["classroom", "library", "lab", "office", "classroom", "lounge"],
    "armory": ["armory", "forge", "storage", "guardroom", "armory", "workshop"], "infirmary": ["ward", "ward", "lab", "storage", "kitchen", "ward"],
    "courts": ["office", "library", "hall", "office", "hall", "library"], "guest": ["bedroom", "lounge", "kitchen", "bedroom", "dining", "bedroom"],
    "mess": ["kitchen", "dining", "storage", "kitchen", "dining", "kitchen"], "workshop": ["workshop", "forge", "storage", "workshop", "office", "workshop"],
    "market": ["shop", "storage", "shop", "shop", "office", "storage"], "archive": ["library", "library", "office", "library", "lounge", "library"],
    "dorm": ["bedroom", "bedroom", "lounge", "bedroom", "bedroom", "kitchen"], "granary": ["storage", "storage", "kitchen", "storage", "storage", "office"],
    "stables": ["stable", "stable", "storage", "stable", "workshop", "stable"], "observatory": ["lab", "library", "lounge", "lab", "office", "library"],
    "haven": ["lab", "office", "workshop", "lab", "lounge", "storage"], "center": ["lab", "office", "workshop", "lab", "lounge", "storage"],
    # core wings
    "archivist": ["library", "office", "library", "classroom", "library", "lounge"], "unstables": ["lab", "workshop", "lab", "office", "lab", "storage"],
    "veil": ["lounge", "bedroom", "office", "lounge", "armory", "bedroom"], "abstracters": ["armory", "guardroom", "forge", "bedroom", "armory", "dining"],
    "wildcards": ["workshop", "lab", "forge", "workshop", "office", "storage"], "nexus": ["storage", "office", "storage", "lab", "storage", "workshop"],
}
COUNT = {"rooms": 0, "items": 0}


def put(W, x, y, z, b, h=2):
    return F2.put(W, x, y, z, b, h)


def place(W, kind, x, y, z, inward, k, ladders):
    if F2.near_blocked(x, y, z, ladders):
        return False
    f = inward
    n = [0]
    def P(b, h=2):
        ok = put(W, x, y, z, b, h)
        if ok:
            n[0] += 1
        return ok
    if kind in ("bed", "table", "books", "lectern", "banner", "plant", "chest", "barrel", "craft"):
        before = W.a[y, z, x]
        F2.item(W, kind, x, y, z, inward, k)
        ok = W.a[y, z, x] != before
        COUNT["items"] += int(ok)
        return ok
    if kind == "furnace": ok = P(f"minecraft:furnace[facing={f},lit=false]")
    elif kind == "smoker": ok = P(f"minecraft:smoker[facing={f},lit=false]")
    elif kind == "blast": ok = P(f"minecraft:blast_furnace[facing={f},lit=false]")
    elif kind == "crafting": ok = P("minecraft:crafting_table")
    elif kind == "smithing": ok = P("minecraft:smithing_table")
    elif kind == "anvil": ok = P(f"minecraft:anvil[facing={'north' if f in ('east', 'west') else 'east'}]")
    elif kind == "grindstone": ok = P(f"minecraft:grindstone[face=floor,facing={f}]")
    elif kind == "stonecutter": ok = P(f"minecraft:stonecutter[facing={f}]")
    elif kind == "loom": ok = P(f"minecraft:loom[facing={f}]")
    elif kind == "fletching": ok = P("minecraft:fletching_table")
    elif kind == "cartography": ok = P("minecraft:cartography_table")
    elif kind == "composter": ok = P("minecraft:composter[level=0]")
    elif kind == "cauldron": ok = P("minecraft:cauldron")
    elif kind == "enchant": ok = P("minecraft:enchanting_table")
    elif kind == "hay": ok = P("minecraft:hay_block[axis=y]")
    elif kind == "lantern": ok = P("minecraft:lantern[hanging=false]", 1)
    elif kind == "brewing":
        ok = F2.ok(W, x, y, z, 2)
        if ok:
            W.set(x, y, z, "minecraft:iron_block"); W.set(x, y + 1, z, "minecraft:brewing_stand[has_bottle_0=false,has_bottle_1=false,has_bottle_2=false]")
    elif kind == "sofa":
        ok = F2.ok(W, x, y, z, 1)
        if ok:
            W.set(x, y, z, f"minecraft:purpur_stairs[facing={OPP[f]},half=bottom,shape=straight,waterlogged=false]")
    elif kind == "armory_stand":
        ok = F2.ok(W, x, y, z, 2)
        if ok:
            W.set(x, y, z, "minecraft:polished_blackstone"); W.set(x, y + 1, z, "minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=false]")
    else:
        ok = False
    COUNT["items"] += int(ok)
    return bool(ok)


def room(W, rect, y, rtype, rng, ladders, label=True):
    ax, az, bx, bz = rect
    if bx - ax < 5 or bz - az < 5:
        return 0
    seq = TYPES[rtype]
    cx, cz = (ax + bx) // 2, (az + bz) // 2
    k = 0; n = 0
    # walls, skipping the doorway band at the middle of each side
    for x in range(ax, bx + 1):
        if abs(x - cx) <= 3:
            continue
        if (x - ax) % 2 == 0:
            n += place(W, seq[k % len(seq)], x, y, az, "south", k, ladders); k += 1
        if (x - ax) % 2 == 1:
            n += place(W, seq[(k + 2) % len(seq)], x, y, bz, "north", k, ladders); k += 1
    for z in range(az + 1, bz):
        if abs(z - cz) <= 3:
            continue
        if (z - az) % 3 == 0:
            n += place(W, seq[(k + 1) % len(seq)], ax, y, z, "east", k, ladders); k += 1
        if (z - az) % 3 == 1:
            n += place(W, seq[(k + 3) % len(seq)], bx, y, z, "west", k, ladders); k += 1
    # carpet in free floor cells (walkable decoration), a lantern hung in the middle
    col = CARPET[rtype]
    for x in range(ax, bx + 1):
        for z in range(az, bz + 1):
            if W.a[y, z, x] == 0 and W.a[y - 1, z, x] != 0 and ((x + z) % 2 == 0 or min(x - ax, bx - x, z - az, bz - z) <= 1):
                W.set(x, y, z, f"minecraft:{col}_carpet")
    if label and W.a[y, az, ax + 1] == 0 and not F2.near_blocked(ax + 1, y, az, ladders):
        pass
    COUNT["rooms"] += 1
    return n


def decorate_parts(W, rng, only_floor_y=None):
    """walk every partition grid recorded by build_common.partitions"""
    total = 0
    for (x0, z0, x1, z1, y, pitch, kind, h) in list(C.PARTS):
        seq = KIND_ROOMS.get(kind or "", ["office", "storage", "lounge", "workshop"])
        xs = [x0 - 1] + list(range(x0 + pitch, x1 - 4, pitch)) + [x1 + 1]
        zs = [z0 - 1] + list(range(z0 + pitch, z1 - 4, pitch)) + [z1 + 1]
        ladders = [(x0, z0), (x1, z1)]
        idx = 0
        for i in range(len(xs) - 1):
            for j in range(len(zs) - 1):
                rect = (xs[i] + 1, zs[j] + 1, xs[i + 1] - 1, zs[j + 1] - 1)
                if any(not (rect[2] < b[0] or rect[0] > b[2] or rect[3] < b[1] or rect[1] > b[3]) and b[4] <= y <= b[5] for b in C.NO_DECOR):
                    continue
                rtype = seq[(i * 3 + j * 5 + int(rng.integers(0, 2))) % len(seq)]
                total += room(W, (xs[i] + 1, zs[j] + 1, xs[i + 1] - 1, zs[j + 1] - 1), y, rtype, rng, ladders)
                idx += 1
    return total
