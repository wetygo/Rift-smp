"""Generic CITY UNDERGROUND (level B3, floor local y 72 = world y 8): central station hub, 4 axial + 4 inner radial tunnels, a square ring tunnel with a
minecart line (station with dispenser + button, tested mechanics), a gated treasury vault, and ladder hatches to the surface.
Used by Pandora, the Redstone City and the new cities (surface height comes from `surf(x, z)`)."""
import numpy as np
from .build_common import *
from .nbt import Byte
from . import layout as L
from .build_under import Level
from . import build_mega as BM

Y0 = L.level_floor(3)           # 72


def hatch(W, x, z, ytop, y0=Y0):
    W.fill(x, y0 + 1, z, x, ytop, z, AIR)
    for y in range(y0 + 1, ytop):
        W.set(x, y, z, "minecraft:ladder[facing=south,waterlogged=false]")
    W.set(x, ytop, z, "minecraft:iron_trapdoor[facing=north,half=bottom,open=false,powered=false,waterlogged=false]")


def rail_path(W, cells, y):
    """cells: ordered list of (x, z) (4-connected). Rails at y on the floor at y-1; every 2nd straight cell is a powered rail on a redstone block."""
    n = len(cells)
    for i, (x, z) in enumerate(cells):
        dirs = set()
        for j in (i - 1, i + 1):
            if 0 <= j < n:
                nx, nz = cells[j]
                dirs.add("east" if nx > x else "west" if nx < x else "south" if nz > z else "north")
        if len(dirs) == 1:
            d = next(iter(dirs)); dirs = {d, {"east": "west", "west": "east", "north": "south", "south": "north"}[d]}
        if dirs == {"east", "west"}:
            shape = "east_west"
        elif dirs == {"north", "south"}:
            shape = "north_south"
        else:
            ns = "south" if "south" in dirs else "north"; ew = "east" if "east" in dirs else "west"
            shape = f"{ns}_{ew}"
        straight = shape in ("east_west", "north_south")
        pw = straight and (i % 2 == 0)
        if pw:
            W.set(x, y - 1, z, "minecraft:redstone_block")
        W.set(x, y, z, (BM.RAIL_PWR if pw else BM.RAIL) % shape)


def city_underground(W, cx, cz, D, surf, ring_hatches=True, label="CITY", extra_hatches=()):
    """D = half-size of the ring (ring runs at x = cx +- D, z = cz +- D)"""
    lv = Level(W, 3)
    T = 6                                             # tunnel width
    lv.room(cx - 22, cz - 22, cx + 22, cz + 22, floor=PB, h=9)                                    # central station hall
    for (a, b, c, d) in ((cx - D, cz - D, cx + D, cz - D + T - 1), (cx - D, cz + D - T + 1, cx + D, cz + D),
                         (cx - D, cz - D, cx - D + T - 1, cz + D), (cx + D - T + 1, cz - D, cx + D, cz + D)):
        lv.room(a, b, c, d, floor=PB, h=5)                                                       # ring tunnel
    h2 = D // 2
    for (a, b, c, d) in ((cx - D, cz - 3, cx - 23, cz + 2), (cx + 23, cz - 3, cx + D, cz + 2), (cx - 3, cz - D, cx + 2, cz - 23), (cx - 3, cz + 23, cx + 2, cz + D),
                         (cx - h2 - 3, cz - h2, cx - h2 + 2, cz + h2), (cx + h2 - 3, cz - h2, cx + h2 + 2, cz + h2),
                         (cx - h2, cz - h2 - 3, cx + h2, cz - h2 + 2), (cx - h2, cz + h2 - 3, cx + h2, cz + h2 + 2)):
        lv.room(a, b, c, d, floor=PB, h=5)                                                       # radials + inner square
    vx, vz = cx + 60, cz - 70                                                                     # treasury vault north-east of the hub
    lv.room(vx - 14, vz - 14, vx + 14, vz + 14, floor=BK, ceil=BK, h=7)
    lv.room(vx - 3, cz - h2 + 2, vx + 2, vz - 15, floor=PB, h=5)                                  # access tunnel (N-S) north of the vault to the inner square
    lv.finish()
    # gate (member) on the vault access tunnel, vault chests, signs
    gz = (cz - h2 + 2 + vz - 15) // 2
    gate(W, "member", vx - 3, Y0 + 1, gz, 6, facing="north", frame=PB, clear_z=(), clear_h=4)
    sign(W, vx - 1, Y0 + 1, gz + 3, [label[:14], "TREASURY", "member tier gate", ""], rot=8, color="red")
    loot = ["minecraft:diamond", "minecraft:emerald", "minecraft:gold_ingot", "minecraft:iron_ingot", "minecraft:enchanted_golden_apple", "minecraft:netherite_scrap", "minecraft:experience_bottle"]
    k = 0
    for cxx in range(vx - 10, vx + 11, 4):
        for czz in (vz - 8, vz + 8):
            W.set(cxx, Y0 + 1, czz, "minecraft:chest[facing=south,type=single,waterlogged=false]")
            W.tile(cxx, Y0 + 1, czz, {"id": "minecraft:chest", "Items": [{"Slot": Byte(i), "id": loot[(k + i) % len(loot)], "count": 8 + 4 * (i % 3)} for i in range(5)]}); k += 1
    # hub: ladder shaft up to the surface, pillars, signs
    W.fill(cx + 12, Y0 + 1, cz + 12, cx + 12, surf(cx + 12, cz + 12) - 1, cz + 12, AIR)
    hatch(W, cx + 12, cz + 12, surf(cx + 12, cz + 12))
    for (px, pz) in ((cx - 12, cz - 12), (cx + 12, cz - 12), (cx - 12, cz + 12)):
        W.fill(px, Y0 + 1, pz, px, Y0 + 9, pz, "minecraft:polished_blackstone_bricks"); W.set(px, Y0 + 5, pz, SEA)
    sign(W, cx + 10, Y0 + 1, cz + 10, [label[:14], "CENTRAL STATION", "ring line: minecart", "button at the south"], rot=0, color="light_blue")
    # ring minecart line: start south-middle going east, round clockwise, end beside the start (bumper both ends)
    rz = cz + D - T // 2 + 3 - 0                                                                  # rail row inside the south tunnel (tunnel z cz+D-5..cz+D)
    rz = cz + D - 2
    rxr = cx + D - 2                                                                              # rail column inside the east tunnel (x cx+D-5..cx+D)
    rzn = cz - D + 2; rxw = cx - D + 2
    cells = [(x, rz) for x in range(cx + 4, rxr + 1)] + [(rxr, z) for z in range(rz - 1, rzn - 1, -1)] + [(x, rzn) for x in range(rxr - 1, rxw - 1, -1)] \
        + [(rxw, z) for z in range(rzn + 1, rz + 1)] + [(x, rz) for x in range(rxw + 1, cx - 3)]
    rail_path(W, cells, Y0 + 1)
    W.set(cx + 3, Y0 + 1, rz, BRK); W.set(cx + 3, Y0 + 2, rz, BRK); W.set(cx - 3, Y0 + 1, rz, BRK); W.set(cx - 3, Y0 + 2, rz, BRK)
    carts = [{"Slot": Byte(i), "id": "minecraft:chest_minecart", "count": 1} for i in range(8)]
    W.set(cx + 4, Y0 + 2, rz, "minecraft:dispenser[facing=down,triggered=false]"); W.tile(cx + 4, Y0 + 2, rz, {"id": "minecraft:dispenser", "Items": carts})
    W.set(cx + 5, Y0 + 2, rz, BRK); W.set(cx + 6, Y0 + 2, rz, "minecraft:stone_button[face=wall,facing=east,powered=false]")
    sign(W, cx + 8, Y0 + 1, rz - 1, ["RING LINE", "button = send a", "chest minecart", "round the city"], rot=8, color="light_blue")
    hatches = [(cx + 12, cz + 12)]
    if ring_hatches:
        for (x, z) in ((cx - D // 2, cz - D + 3), (cx + D // 2, cz - D + 3), (cx - D // 2, cz + D - 5 + 0), (cx + D // 2 + 10, cz + D - 5), (cx - D + 3, cz - D // 2), (cx + D - 5, cz + D // 2)):
            pass
    for (hx, hz) in list(extra_hatches):
        hatch(W, hx, hz, surf(hx, hz)); hatches.append((hx, hz))
    # ring hatches: ladder against the outer wall of the ring tunnel
    for (hx, hz, f) in ((cx - D // 2, cz - D, "south"), (cx + D // 2, cz - D, "south"), (cx - D // 2, cz + D - 5 - 0, "south")):
        pass
    for hx in (cx - D // 2, cx + D // 2):
        hz = cz - D                                                       # north tunnel, northmost cell against the north wall
        hatch(W, hx, hz, surf(hx, hz)); hatches.append((hx, hz))
    return dict(hub=(cx, cz), D=D, hatches=hatches, station=(cx + 4, Y0 + 2, rz), button=(cx + 6, Y0 + 2, rz), vault=(vx, vz), gate=(vx - 3, Y0 + 1, gz), cells=len(cells))


def connectivity(W):
    from scipy import ndimage
    air = W.B("minecraft:air")
    pas = (W.a[Y0 + 1] == air) & (W.a[Y0 + 2] == air) & (W.a[Y0] != air)
    lab, n = ndimage.label(pas)
    sizes = ndimage.sum(pas, lab, range(1, n + 1))
    return n, int(sizes.max()) if n else 0
