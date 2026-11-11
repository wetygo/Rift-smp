"""Room furnishing for the faction wings + invisible mob-proofing lights."""
import numpy as np
from .build_common import *
from .build_wings import WINGS

STYLE = {"archivist": "archive", "unstables": "lab", "veil": "lounge", "abstracters": "barracks", "wildcards": "workshop", "nexus": "bay"}
WORKSTATIONS = ["minecraft:crafting_table", "minecraft:smithing_table", "minecraft:anvil[facing=north]", "minecraft:grindstone[face=floor,facing=north]",
                "minecraft:loom[facing=north]", "minecraft:stonecutter[facing=north]", "minecraft:cartography_table", "minecraft:fletching_table",
                "minecraft:blast_furnace[facing=south,lit=false]"]
bed = lambda c, part: f"minecraft:{c}_bed[facing=east,occupied=false,part={part}]"


def free(W, x, y, z, h=2):
    return all(W.a[y + i, z, x] == 0 for i in range(h)) and W.a[y - 1, z, x] != 0


def put(W, x, y, z, b, h=2):
    if free(W, x, y, z, h):
        W.set(x, y, z, b)
        return True
    return False


def quad(W, style, qx, qz, y, k):
    if style == "barracks":
        for r in range(3):
            z = qz + r * 2
            if free(W, qx, y, z) and free(W, qx + 1, y, z):
                W.set(qx, y, z, bed("purple", "foot")); W.set(qx + 1, y, z, bed("purple", "head"))
                put(W, qx + 3, y, z, "minecraft:chest[facing=west,type=single,waterlogged=false]")
        put(W, qx + 5, y, qz, WORKSTATIONS[(k) % 9]); put(W, qx + 5, y, qz + 2, WORKSTATIONS[(k + 3) % 9])
    elif style == "lab":
        for i in range(5):
            put(W, qx + i, y, qz, "minecraft:iron_block", 3)
            if free(W, qx + i, y + 1, qz, 1):
                W.set(qx + i, y + 1, qz, ["minecraft:brewing_stand", "minecraft:cauldron", "minecraft:glass", "minecraft:redstone_lamp[lit=false]", "minecraft:brewing_stand"][i])
        put(W, qx, y, qz + 3, "minecraft:enchanting_table"); put(W, qx + 3, y, qz + 3, "minecraft:cauldron")
    elif style == "lounge":
        for r in range(2):
            z = qz + r * 2
            if free(W, qx, y, z) and free(W, qx + 1, y, z):
                W.set(qx, y, z, bed("black", "foot")); W.set(qx + 1, y, z, bed("black", "head"))
        put(W, qx + 4, y, qz, "minecraft:enchanting_table"); put(W, qx + 4, y, qz + 2, "minecraft:soul_lantern[hanging=false,waterlogged=false]", 1)
        put(W, qx, y, qz + 4, "minecraft:black_candle[candles=3,lit=false,waterlogged=false]", 1)
    elif style == "workshop":
        for i in range(5):
            put(W, qx + i, y, qz, WORKSTATIONS[(k + i) % 9])
        put(W, qx, y, qz + 3, "minecraft:chest[facing=south,type=single,waterlogged=false]")
        put(W, qx + 2, y, qz + 3, "minecraft:chest[facing=south,type=single,waterlogged=false]")
    elif style == "bay":
        for i in range(4):
            for j in range(2):
                for h in range(3):
                    if free(W, qx + i * 2, y + h, qz + j * 3, 1):
                        W.set(qx + i * 2, y + h, qz + j * 3, "minecraft:barrel[facing=up,open=false]")
    elif style == "archive":
        for i in range(5):
            put(W, qx + i, y, qz + 1, "minecraft:lectern[facing=north,has_book=false,powered=false]", 2)
        put(W, qx, y, qz + 4, "minecraft:chest[facing=south,type=single,waterlogged=false]")


def enchant_library(W, cx, cz, y):
    put(W, cx, y, cz, "minecraft:enchanting_table", 1)
    for dx in range(-2, 3):
        for dz in range(-2, 3):
            if max(abs(dx), abs(dz)) == 2 and not (dx == 0 and dz == 2):
                for h in (0, 1):
                    if W.a[y + h, cz + dz, cx + dx] == 0:
                        W.set(cx + dx, y + h, cz + dz, "minecraft:bookshelf")


def furnish(W):
    n = 0
    for key, (x0, z0, x1, z1, floors, fh, face) in WINGS.items():
        style = STYLE[key]
        gx = (x0 + x1) // 2 - 6
        ax, az = x0 + 3, z0 + 3          # partitions() origin
        bx, bz = x1 - 3, z1 - 3
        xs = [ax] + [x + 1 for x in range(ax + 24, bx - 4, 24)]
        zs = [az] + [z + 1 for z in range(az + 24, bz - 4, 24)]
        for f in range(floors - 1 if floors > 1 else 1):
            y = GY + f * fh
            for i, rx in enumerate(xs):
                for j, rz in enumerate(zs):
                    # skip the entrance lobby rooms on the ground floor
                    if f == 0 and (gx - 3 <= rx + 22 and rx <= gx + 14) and ((face == "north" and rz < z0 + 20) or (face == "south" and rz + 22 > z1 - 20)):
                        continue
                    if style == "archive" and f == 1 and i == 0 and j == 0:
                        enchant_library(W, rx + 6, rz + 6, y); n += 1
                        continue
                    if style == "archive" and f == 0:
                        continue            # ground floor of the archive is bookshelf aisles already
                    k = i + j + f
                    for (qx, qz) in ((rx + 1, rz + 1), (rx + 14, rz + 1), (rx + 1, rz + 14), (rx + 14, rz + 14)):
                        quad(W, style, qx, qz, y, k); n += 1
    return n


def lights(W):
    """invisible light blocks on the lawns (anti mob-spawn; they cannot be seen without holding a light item)."""
    grass = W.B("minecraft:grass_block[snowy=false]")
    lb = W.B("minecraft:light[level=9,waterlogged=false]")
    S = W.sx
    m = (W.a[GROUND_TOP, 16:S - 16:6, 16:S - 16:6] == grass) & (W.a[GY, 16:S - 16:6, 16:S - 16:6] == 0)
    zz, xx = np.nonzero(m)
    for z, x in zip(zz * 6 + 16, xx * 6 + 16):
        W.a[GY, z, x] = lb
    return len(zz)
