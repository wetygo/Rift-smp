"""Faction wings, storage nexus, blimp terminal, wind-charge chambers, landscaping."""
import numpy as np
from .build_common import *
from .build_surface import pad, road, tower

WINGS = {
    #            x0   z0   x1   z1  floors fh face  tier
    "archivist":  (40, 130, 215, 273, 5, 11, "south"),
    "unstables":  (552, 130, 695, 257, 4, 11, "south"),
    "veil":       (40, 300, 167, 427, 3, 10, "north"),
    "abstracters": (560, 300, 703, 427, 4, 11, "north"),
    "wildcards":  (40, 470, 183, 597, 3, 12, "north"),
    "nexus":      (540, 450, 731, 609, 4, 12, "north"),
}


def dome(W, cx, cz, r, y0, glass=PG, rib=GLOW):
    for dy in range(r + 1):
        rr = int(round((r * r - dy * dy) ** 0.5))
        disk(W, cx, cz, rr, y0 + dy, y0 + dy, glass, hollow=True)
    for k in range(8):
        a = np.pi * k / 4
        for dy in range(0, r + 1, 1):
            rr = (r * r - dy * dy) ** 0.5
            W.set(int(round(cx + rr * np.cos(a))), y0 + dy, int(round(cz + rr * np.sin(a))), rib)


def wing(W, key, label, tier, glass=PG, wall=BRK, trim=GLOW, pad_key=None):
    x0, z0, x1, z1, floors, fh, face = WINGS[key]
    cx, cz = (x0 + x1) // 2, (z0 + z1) // 2
    top = shell(W, x0, z0, x1, z1, floors, fh, wall=wall, thick=3, roof=DT)
    gx = cx - 6
    for f in range(floors):
        y = GY + f * fh
        partitions(W, x0 + 3, z0 + 3, x1 - 3, z1 - 3, y, h=fh - 1, pitch=24, wall=wall)
        lattice_lights(W, x0 + 3, z0 + 3, x1 - 3, z1 - 3, y + fh - 1, step=8, off=4)
        if f < floors - 1 or True:
            windows_ring(W, x0, z0, x1, z1, y + 3, h=4, glass=glass, step=6, wd=3,
                         skip=[(gx - 2, gx + 14, z0 if face == "north" else z1)] if f == 0 else [])
    # ladders between storeys at two inner corners
    ladder_shaft(W, x0 + 3, z0 + 3, GY, top - 1, "east")
    ladder_shaft(W, x1 - 3, z1 - 3, GY, top - 1, "west")
    # entrance lobby + gate (12 wide, command-block doors)
    if face == "north":
        W.fill(gx - 2, GY, z0 + 3, gx + 13, GY + fh - 2, z0 + 16, AIR)
        gate(W, tier, gx, GY, z0, 12, facing="north", frame=wall, clear_z=[z0 + 1, z0 + 2])
        padz = z0 + 8
        road(W, gx, z0 - 40 if z0 - 40 > 0 else 0, gx + 11, z0 - 1, "z")
    else:
        W.fill(gx - 2, GY, z1 - 16, gx + 13, GY + fh - 2, z1 - 3, AIR)
        gate(W, tier, gx, GY, z1, 12, facing="north", frame=wall, clear_z=[z1 - 1, z1 - 2])
        padz = z1 - 8
        road(W, gx, z1 + 1, gx + 11, z1 + 40, "z")
    # glow pillars on corners, merlons, roof trim
    for (ex, ez) in ((x0, z0), (x1, z0), (x0, z1), (x1, z1)):
        W.fill(ex, GY, ez, ex + (1 if ex == x0 else -1), top + 3, ez + (1 if ez == z0 else -1), wall)
        W.fill(ex, GY + 2, ez, ex, top + 3, ez, trim)
    merlons(W, x0, z0, x1, z1, top + 1, wall, 2)
    for x in range(x0 + 12, x1 - 6, 12):
        W.fill(x, GY + 2, z0 if face == "south" else z1, x, top, z0 if face == "south" else z1, trim)
    W.fill(x0, top, z0, x1, top, z0, trim); W.fill(x0, top, z1, x1, top, z1, trim)
    W.fill(x0, top, z0, x0, top, z1, trim); W.fill(x1, top, z0, x1, top, z1, trim)
    def pier(target):      # windows are 3 wide every 6 starting at x0+3: pier cells have (x-x0-3)%6 in 3..5
        x = target
        while (x - x0 - 3) % 6 not in (4,):
            x += 1
        return x
    bz = z0 - 1 if face == "north" else z1 + 1
    bf = "north" if face == "north" else "south"
    for yy in range(GY + 14, GY + 30, 3):
        W.set(pier(gx - 6), yy, bz, "minecraft:purple_wall_banner[facing=%s]" % bf)
        W.set(pier(gx + 14), yy, bz, "minecraft:purple_wall_banner[facing=%s]" % bf)
    # wing tag: secure zone visibility + kit pad
    cmdblock(W, cx, GROUND_TOP - 1, cz, "function riftbrek:zone/visible_wide")
    if pad_key:
        pad(W, pad_key, gx + 2 if True else gx, GY, padz)
    if label:
        sign(W, gx - 2, GY, (z0 - 3) if face == "north" else (z1 + 3), label, rot=0 if face == "south" else 8)
    return dict(x0=x0, z0=z0, x1=x1, z1=z1, cx=cx, cz=cz, top=top, floors=floors, fh=fh)


def archive(W):
    d = wing(W, "archivist", ["THE ARCHIVIST", "Grand Archive", "Records - Kits"], "archivist", pad_key="archivist")
    x0, z0, x1, z1 = d["x0"], d["z0"], d["x1"], d["z1"]
    for f in range(4):
        y = GY + f * d["fh"]
        for z in range(z0 + 7, z1 - 6, 6):
            if abs((z - z0) % 24) <= 3:
                continue
            for x in range(x0 + 5, x1 - 4):
                px = (x - x0) % 24
                if min(px, 24 - px) <= 3:
                    continue
                if W.a[y, z, x] == 0 and W.a[y, z, x + 0] == 0:
                    W.fill(x, y, z, x, y + 3, z, "minecraft:bookshelf")
    dome(W, d["cx"], d["cz"], 24, d["top"] + 2, PG)
    return d


def unstables(W):
    d = wing(W, "unstables", ["THE UNSTABLES", "Experimental Wing"], "unstables", glass=BG, pad_key="unstables")
    dome(W, d["cx"], d["cz"], 26, d["top"] + 2, LG, SEA)
    # glowing experiment tubes on the roof
    for k in range(6):
        x = d["x0"] + 20 + k * 20
        W.fill(x - 2, d["top"] + 2, d["cz"] + 38, x + 2, d["top"] + 14, d["cz"] + 42, LG)
        W.fill(x - 1, d["top"] + 3, d["cz"] + 39, x + 1, d["top"] + 13, d["cz"] + 41, AIR)
        W.fill(x, d["top"] + 3, d["cz"] + 40, x, d["top"] + 13, d["cz"] + 40, SEA)
    return d


def abstracters(W):
    d = wing(W, "abstracters", ["ABSTRACTERS", "Combat Wing", "PvP - Defense"], "abstracters", pad_key="abstracters")
    cx, cz = d["cx"], d["cz"] + 8
    disk(W, cx, cz, 32, GY, d["top"] + 2, AIR)
    for r in range(22, 32):
        disk(W, cx, cz, r, GY, GY + (r - 21), QZ if r % 3 else PU, hollow=True)
    disk(W, cx, cz, 21, GROUND_TOP, GROUND_TOP, DT)
    disk(W, cx, cz, 10, GROUND_TOP, GROUND_TOP, PU)
    disk(W, cx, cz, 6, GROUND_TOP, GROUND_TOP, BL)
    for k in range(8):
        a = 2 * np.pi * k / 8
        px, pz = int(round(cx + 33 * np.cos(a))), int(round(cz + 33 * np.sin(a)))
        W.fill(px, GY, pz, px, GY + 20, pz, BRK); W.fill(px, GY + 12, pz, px, GY + 20, pz, GLOW); W.set(px, GY + 21, pz, SEA)
    return d


def veil(W):
    d = wing(W, "veil", None, "veil", glass=PG, wall=BK, trim=GLOW, pad_key="veil")
    for x in range(d["x0"] + 8, d["x1"] - 6, 6):
        W.fill(x, d["top"] + 2, d["z0"] + 8, x, d["top"] + 2, d["z1"] - 8, IB)
    return d


def wildcards(W):
    d = wing(W, "wildcards", ["WILDCARDS", "Engineering Wing"], "wildcards", glass=LG, pad_key="wildcards")
    for (cx, cz) in ((d["x0"] + 12, d["z0"] + 12), (d["x1"] - 12, d["z0"] + 12), (d["x0"] + 12, d["z1"] - 12), (d["x1"] - 12, d["z1"] - 12)):
        W.fill(cx - 3, d["top"] + 1, cz - 3, cx + 3, d["top"] + 40, cz + 3, "minecraft:cut_copper")
        W.fill(cx - 2, d["top"] + 1, cz - 2, cx + 2, d["top"] + 40, cz + 2, AIR)
        W.fill(cx - 3, d["top"] + 40, cz - 3, cx + 3, d["top"] + 40, cz + 3, "minecraft:oxidized_cut_copper")
        W.set(cx, d["top"] + 41, cz, "minecraft:lightning_rod[facing=up,powered=false,waterlogged=false]")
        W.fill(cx, d["top"] + 5, cz - 3, cx, d["top"] + 30, cz - 3, "minecraft:copper_block")
    # crane gantry
    W.fill(d["x0"] + 20, d["top"] + 6, d["cz"], d["x1"] - 20, d["top"] + 6, d["cz"], IB)
    return d


def nexus(W):
    d = wing(W, "nexus", ["STORAGE NEXUS", "Automatic Storage"], "member", wall=BRK)
    for ox, oz, nm in ((560, 473, "A"), (560, 521, "B")):
        pass
    return d


def intake(W, x, z, y_bottom, label):
    """hopper chute from the surface down to the sorter tray, plus 5 loading chests."""
    for y in range(y_bottom, GY + 1):
        hopper(W, x, y, z, "down")
    for (dx, dz, f) in ((1, 0, "west"), (-1, 0, "east"), (0, 1, "north"), (0, -1, "south")):
        hopper(W, x + dx, GY, z + dz, f)
        chest(W, x + dx, GY + 1, z + dz, "south")
    chest(W, x, GY + 1, z, "south")
    sign(W, x + 3, GY, z, ["AUTO-STORAGE", "INTAKE " + label, "drop items in", "the chests"], rot=12)


BLIMP_LANE_X = 250
BLIMP_DOCKS = [("A", 78, "TERMINAL"), ("B", 480, "PLAZA"), ("C", 700, "CHECKPOINT")]


def blimp(W):
    """Terminal hall + mast (scenery) and three dock pads on the blimp lane (x=250).  The airship itself is a moving
    display-entity vehicle created by the data pack (riftbrek:blimp/*): it is NOT stored in the schematic."""
    cx, mz = 383, 78
    mx = 296
    W.fill(mx - 6, GY, mz - 6, mx + 6, GY + 100, mz + 6, BRK)
    W.fill(mx - 4, GY, mz - 4, mx + 4, GY + 100, mz + 4, AIR)
    for y in range(GY + 10, GY + 100, 12):
        W.fill(mx - 4, y, mz - 4, mx + 4, y, mz + 4, DT)
    ladder_shaft(W, mx - 4, mz - 4, GY, GY + 99, "east")
    W.fill(mx - 8, GY + 96, mz - 8, mx + 8, GY + 97, mz + 8, DT)
    for y in range(GY + 98, GY + 101):
        W.fill(mx - 8, y, mz - 8, mx + 8, y, mz - 8, IB); W.fill(mx - 8, y, mz + 8, mx + 8, y, mz + 8, IB)
        W.fill(mx - 8, y, mz - 8, mx - 8, y, mz + 8, IB); W.fill(mx + 8, y, mz - 8, mx + 8, y, mz + 8, IB)
    spire(W, mx, mz, 6, GY + 101, 12)
    tx0, tz0, tx1, tz1 = 330, 24, 437, 124
    top = shell(W, tx0, tz0, tx1, tz1, 3, 14, thick=3, roof=DT)
    for f in range(3):
        windows_ring(W, tx0, tz0, tx1, tz1, GY + f * 14 + 4, h=5, step=6, wd=3, glass=LG)
        lattice_lights(W, tx0 + 3, tz0 + 3, tx1 - 3, tz1 - 3, GY + f * 14 + 13, step=8, off=4)
    W.fill(372, GY, tz1 - 2, 395, GY + 12, tz1, AIR)
    ladder_shaft(W, tx0 + 3, tz0 + 3, GY, top - 1, "east")
    sign(W, 383, GY, tz1 + 3, ["BLIMP TERMINAL", "Airander line", "dock A/B/C on", "the west lane"], rot=0)
    road(W, 372, tz1 + 1, 395, 175, "z")
    cmdblock(W, 383, GROUND_TOP - 1, 70, "function riftbrek:zone/visible")
    # three dock pads on the lane x=250: disk platform, glow ring, lamp posts, sign
    for (nm, dz, label) in BLIMP_DOCKS:
        disk(W, BLIMP_LANE_X, dz, 12, GROUND_TOP, GROUND_TOP, DT)
        disk(W, BLIMP_LANE_X, dz, 10, GROUND_TOP, GROUND_TOP, PU)
        disk(W, BLIMP_LANE_X, dz, 8, GROUND_TOP, GROUND_TOP, DT)
        disk(W, BLIMP_LANE_X, dz, 12, GROUND_TOP, GROUND_TOP, GLOW, hollow=True)
        for k in range(6):
            a = 2 * np.pi * k / 6
            x, z = int(round(BLIMP_LANE_X + 13 * np.cos(a))), int(round(dz + 13 * np.sin(a)))
            W.fill(x, GY, z, x, GY + 5, z, BRK); W.set(x, GY + 6, z, SEA)
        sign(W, BLIMP_LANE_X + 3, GY, dz + 3, ["BLIMP DOCK " + nm, label, "board when the", "airship lands"], rot=8, color="purple")
    # blimp controller (always-active command block) hidden under dock A
    cmdblock(W, BLIMP_LANE_X, GROUND_TOP - 1, BLIMP_DOCKS[0][1], "function riftbrek:blimp/tick")


def chicken_chambers(W):
    """4 glass chambers; dispenser (wind charges) embedded in the south wall, lever outside."""
    for k in range(4):
        x0 = 570 + k * 26
        z0 = 52
        base = GROUND_TOP
        W.fill(x0 - 1, GROUND_TOP, z0 - 1, x0 + 9, GROUND_TOP, z0 + 9, DT)
        W.fill(x0, GY, z0, x0 + 8, GY + 30, z0 + 8, TG)
        W.fill(x0 + 1, GY, z0 + 1, x0 + 7, GY + 30, z0 + 7, AIR)
        W.fill(x0, GY + 31, z0, x0 + 8, GY + 31, z0 + 8, IB)
        W.fill(x0, GY, z0, x0 + 8, GY + 1, z0 + 8, DB); W.fill(x0 + 1, GY, z0 + 1, x0 + 7, GY, z0 + 7, "minecraft:hay_block[axis=y]")
        for (ex, ez) in ((x0, z0), (x0 + 8, z0), (x0, z0 + 8), (x0 + 8, z0 + 8)):
            W.fill(ex, GY, ez, ex, GY + 30, ez, BRK)
        # dispenser in the south wall facing north into the chamber, with wind charges
        dx, dz = x0 + 4, z0 + 8
        W.set(dx, GY + 2, dz, "minecraft:dispenser[facing=north,triggered=false]")
        W.tile(dx, GY + 2, dz, {"id": "minecraft:dispenser", "Items": [
            {"Slot": Byte(i), "id": "minecraft:wind_charge", "count": 64} for i in range(9)]})
        W.set(dx, GY + 2, dz + 1, "minecraft:lever[face=wall,facing=south,powered=false]")
        W.fill(x0 + 1, GY + 1, z0 + 7, x0 + 7, GY + 1, z0 + 7, DB)
        sign(W, dx, GY, dz + 3, ["WIND-CHARGE", "CHAMBER %d" % (k + 1), "pull lever", "(chickens only)"], rot=0)
        # entry hatch (iron door) on the north side for loading chickens
        W.fill(x0 + 4, GY, z0, x0 + 4, GY + 1, z0, AIR)
        W.set(x0 + 4, GY, z0, "minecraft:iron_door[facing=south,half=lower,hinge=left,open=false,powered=false]")
        W.set(x0 + 4, GY + 1, z0, "minecraft:iron_door[facing=south,half=upper,hinge=left,open=false,powered=false]")
        W.set(x0 + 4, GY + 1, z0 - 1, "minecraft:stone_button[face=wall,facing=north,powered=false]")


def landscaping(W, rng):
    S = W.sx
    grass = W.B("minecraft:grass_block[snowy=false]")
    n = 0
    tries = 0
    while n < 160 and tries < 4000:
        tries += 1
        x = int(rng.integers(24, S - 24)); z = int(rng.integers(24, S - 24))
        if W.a[GROUND_TOP, z, x] != grass or 232 <= x <= 268:
            continue
        box = W.a[GY:GY + 12, max(z - 4, 0):z + 5, max(x - 4, 0):x + 5]
        gb = W.a[GROUND_TOP, max(z - 4, 0):z + 5, max(x - 4, 0):x + 5]
        if box.any() or (gb != grass).any():
            continue
        tree(W, x, z, "cherry" if n % 3 else "spruce", 6 + int(rng.integers(0, 4)))
        n += 1
    return n
