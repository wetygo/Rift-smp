"""Underground levels B1..B12 and all machinery."""
import numpy as np
from . import layout as L
from . import industry as IND
from .build_common import *
from .build_surface import pad, sign as _s
from .build_wings import intake

RING = 36   # centre line of the service ring corridor (x=36..731 / z=36..731)


class Level:
    def __init__(self, W, k):
        self.W, self.k = W, k
        self.y0 = L.level_floor(k)
        self.rooms = []      # (x0,z0,x1,z1,floor_block,ceil_block, height)

    def room(self, x0, z0, x1, z1, floor=BRK, ceil=DT, h=6):
        self.rooms.append((x0, z0, x1, z1, floor, ceil, h))

    def finish(self):
        W, y0 = self.W, self.y0
        for (x0, z0, x1, z1, fl, ce, h) in self.rooms:          # 1) lining shells
            W.fill(x0 - 1, y0, z0 - 1, x1 + 1, y0 + h + 1, z1 + 1, DB)
        for (x0, z0, x1, z1, fl, ce, h) in self.rooms:          # 2) air
            W.fill(x0, y0 + 1, z0, x1, y0 + h, z1, AIR)
        for (x0, z0, x1, z1, fl, ce, h) in self.rooms:          # 3) floor / ceiling + lights
            W.fill(x0, y0, z0, x1, y0, z1, fl)
            W.fill(x0, y0 + h + 1, z0, x1, y0 + h + 1, z1, ce)
            for x in range(x0 + 3, x1, 8):
                for z in range(z0 + 3, z1, 8):
                    W.set(x, y0 + h + 1, z, SEA)


def ring(L_):
    for (x0, z0, x1, z1) in ((RING - 2, RING - 2, 731 + 2, RING + 2), (RING - 2, 731 - 2, 731 + 2, 731 + 2),
                             (RING - 2, RING - 2, RING + 2, 731 + 2), (731 - 2, RING - 2, 731 + 2, 731 + 2)):
        L_.room(x0, z0, x1, z1, floor=BRK, ceil=DT)


def underground(W):
    lv = {k: Level(W, k) for k in range(1, 13)}
    for k in lv:
        ring(lv[k])

    # B1 security: barracks + holding cells under the checkpoint, armoury beside the central spine
    lv[1].room(300, 690, 467, 727, floor=PB)
    lv[1].room(372, 560, 395, 689, floor=PB)                 # corridor to the plaza
    lv[1].room(300, 300, 467, 340, floor=PB)                 # citadel security
    lv[1].room(372, 341, 395, 560, floor=PB)
    # B2 offices
    lv[2].room(330, 420, 437, 540, floor=PB)
    lv[2].room(300, 200, 467, 260, floor=PB)
    lv[2].room(372, 261, 395, 419, floor=PB)
    # B3-B4 Grand Archive (two levels tall) under the Archivist wing
    lv[3].room(48, 138, 206, 266, floor=BRK)
    lv[4].room(48, 138, 206, 266, floor=BRK)
    # B5/B6 auto-storage halls (carved per sorter)
    for hall in L.SORT_HALLS:
        n = len(hall["cats"])
        l = lv[hall["level"]]
        l.room(hall["ox"] - 6, hall["oz"] - 4, hall["ox"] + 2 + 2 * n + 3, hall["oz"] + 2 + 2 * L.SORT_K + 3, floor=DB)
    lv[6].room(430, 470, 530, 530, floor=PB)                  # kit hall
    # B7 industry hall + connection to ring
    lv[7].room(48, 470, 262, 610, floor=PB)
    lv[7].room(36, 540, 48, 548, floor=PB)
    # B8 transport: hub hall under the plaza + ice ring + station widenings
    lv[8].room(304, 440, 463, 520, floor=PB)
    lv[8].room(372, 40, 395, 730, floor=PB)
    lv[8].room(40, 372, 730, 395, floor=PB)
    for (x0, z0, x1, z1) in ((40, 40, 730, 44), (40, 727, 730, 731), (40, 40, 44, 730), (727, 40, 731, 730)):
        pass
    # B9 Veil HQ + secret tunnels (3 wide)
    lv[9].room(48, 308, 160, 420, floor=BK, ceil=BK)
    for (x0, z0, x1, z1) in ((161, 362, 380, 364), (100, 275, 102, 307), (100, 421, 102, 469), (380, 365, 382, 560),
                             (380, 560, 560, 562), (100, 421, 380, 423)):
        lv[9].room(x0, z0, x1, z1, floor=BK, ceil=BK, h=4)
    # B10 royal tunnels & vaults under the citadel
    lv[10].room(300, 190, 467, 350, floor=BK)
    lv[10].room(380, 351, 387, 700, floor=BK, ceil=BK, h=4)   # royal tunnel to the gatehouse
    # B11/B12 expansion
    lv[11].room(200, 200, 560, 560, floor=DB)
    lv[12].room(200, 200, 560, 560, floor=DB)
    # --- tunnels joining halls to the ring so every level is reachable from the ladders
    lv[3].room(RING + 3, 200, 47, 204, floor=BRK, h=4)
    lv[4].room(RING + 3, 200, 47, 204, floor=BRK, h=4)
    lv[5].room(RING + 3, 480, 559, 484, floor=DB, h=4)       # ring -> hall A
    lv[6].room(RING + 3, 528, 559, 532, floor=DB, h=4)
    lv[7].room(RING + 3, 500, 47, 504, floor=PB, h=4)
    lv[9].room(RING + 3, 330, 47, 334, floor=BK, ceil=BK, h=4)
    lv[11].room(RING + 3, 400, 199, 404, floor=DB, h=4)
    lv[12].room(RING + 3, 400, 199, 404, floor=DB, h=4)
    lv[10].room(RING + 3, 270, 299, 274, floor=BK, h=4)
    for k in lv:
        lv[k].finish()
    # --- Grand Archive: remove the slab between B3 and B4 so it is one tall hall, add stacks
    y3, y4 = lv[3].y0, lv[4].y0
    W.fill(49, y4 + 7, 139, 205, y4 + 8, 265, AIR)
    W.fill(49, y4 + 8 + 0, 139, 205, y4 + 8, 265, AIR)
    for z in range(142, 262, 6):
        for x in range(52, 202):
            if (x - 52) % 24 < 20:
                W.fill(x, y4 + 1, z, x, y4 + 6, z, "minecraft:bookshelf")
                W.fill(x, y3 + 1, z + 2, x, y3 + 6, z + 2, "minecraft:bookshelf")
    W.fill(49, y3, 139, 205, y3, 265, BRK)                 # catwalk deck = old B3 floor, aisles
    for z in range(144, 262, 12):
        W.fill(49, y3, z, 205, y3 + 1, z, IB)
    # ladders = the vertical ring (all levels)
    for (lx, lz, f) in ((RING - 2, 100, "east"), (RING - 2, 384, "east"), (RING - 2, 680, "east"),
                        (731 + 2, 100, "west"), (731 + 2, 384, "west"), (731 + 2, 680, "west")):
        W.fill(lx, lv[12].y0 + 1, lz, lx, GROUND_TOP - 1, lz, AIR)
        for y in range(lv[12].y0 + 1, GROUND_TOP):
            W.set(lx, y, lz, f"minecraft:ladder[facing={f},waterlogged=false]")
        W.set(lx, GROUND_TOP - 1, lz, f"minecraft:ladder[facing={f},waterlogged=false]")
    return lv


def surface_hatches(W, lv):
    """small kiosks that lead down the service-ring ladders, guarded by member-tier command-block doors."""
    for (kx, kz) in ((RING - 2, 384), (731 + 2, 384)):
        # kiosk 7x7 with the ladder cell in its middle row; gate row in the north wall (x-direction row of width 1)
        x0, z0 = kx - 3 if kx < 100 else kx - 3, kz - 3
        W.fill(x0, GY, z0, x0 + 6, GY + 6, z0 + 6, BRK)
        W.fill(x0 + 1, GY, z0 + 1, x0 + 5, GY + 5, z0 + 5, AIR)
        W.fill(x0, GY + 6, z0, x0 + 6, GY + 6, z0 + 6, DT)
        W.set(x0 + 3, GY + 5, z0 + 3, SEA)
        W.fill(kx, GROUND_TOP, kz, kx, GROUND_TOP, kz, AIR)
        bx = kx - 1 if kx < 100 else kx + 1
        W.fill(bx, GROUND_TOP, kz, bx, GY + 5, kz, BRK)
        for y in range(GROUND_TOP, GY + 5):
            W.set(kx, y, kz, f"minecraft:ladder[facing={'east' if kx < 100 else 'west'},waterlogged=false]")
        gate(W, "member", x0 + 3, GY, z0, 1, facing="north", clear_z=[z0 + 1])
        sign(W, x0 + 3, GY, z0 - 2, ["SERVICE RING", "B1-B12", "member+ only"], rot=8)


# ---------------------------------------------------------------- machinery ------------------------
def sorter_hall(W, hall):
    name, cats, level = hall["name"], hall["cats"], hall["level"]
    y0 = L.level_floor(level)
    yc = y0 + 4
    ox, oz = hall["ox"], hall["oz"]
    cmdblock(W, ox, yc, oz, "function riftbrek:storage/sort_%s" % name)
    # tray hopper with a solid stop below (never pushes anywhere), chute above, alarm lamp beside the controller
    hopper(W, ox, yc, oz + 1, "down")
    W.set(ox, yc - 1, oz + 1, PB)
    W.set(ox - 1, yc, oz, AIR)
    W.set(ox - 2, yc, oz, "minecraft:redstone_lamp[lit=false]")
    sign(W, ox - 3, y0 + 1, oz, ["SORTER %s" % name.upper(), "tray stuck =", "ALARM LAMP", "(controller)"], rot=4)
    for i, (cname, preds) in enumerate(cats):
        for k in range(L.SORT_K):
            dx, dy, dz = L.sort_col(i, k)
            x, z = ox + dx, oz + dz
            hopper(W, x, yc, z, "down")
            chest(W, x, yc - 1, z, "north")
            hopper(W, x, yc - 2, z, "down")
            chest(W, x, yc - 3, z, "north")
        sx = ox + L.sort_col(i, 0)[0]
        sign(W, sx, y0 + 1, oz + 1, [cname.replace("_", " ").upper()[:15], "" if preds else "OVERFLOW", "4 columns", "8 chests"], rot=8)
    # pillars / glow
    return ox, oz + 1, yc + 1


def smelters(W):
    y0 = L.level_floor(7)
    kinds = ["furnace"] * 4 + ["blast_furnace"] * 4 + ["smoker"] * 4
    for u, kd in enumerate(kinds):
        x, z = 56 + u * 4, 560
        chest(W, x, y0 + 5, z, "south"); hopper(W, x, y0 + 4, z, "down")
        W.set(x, y0 + 3, z, f"minecraft:{kd}[facing=south,lit=false]")
        hopper(W, x, y0 + 2, z, "down"); chest(W, x, y0 + 1, z, "south")
        hopper(W, x + 1, y0 + 3, z, "west"); chest(W, x + 1, y0 + 4, z, "south")
        sign(W, x, y0 + 1, z - 1, [kd.replace("_", " ").upper()[:15], "in: top chest", "fuel: side", "out: bottom"], rot=8)
    # compactors (iron, gold, copper, redstone, coal, emerald) : crafter facing down, pulsed by a command block
    kinds = ["IRON INGOTS", "GOLD INGOTS", "COPPER INGOTS", "REDSTONE DUST", "COAL", "EMERALDS"]
    for u, nm in enumerate(kinds):
        x, z = 56 + u * 6, 580
        chest(W, x, y0 + 5, z, "south"); hopper(W, x, y0 + 4, z, "down")
        W.set(x, y0 + 3, z, "minecraft:crafter[crafting=false,orientation=down_north,triggered=false]")
        hopper(W, x, y0 + 2, z, "down"); chest(W, x, y0 + 1, z, "south")
        cmdblock(W, x + 1, y0 + 2, z, "function riftbrek:industry/pulse_crafter")
        W.set(x + 1, y0 + 3, z, AIR)
        sign(W, x, y0 + 1, z - 1, ["COMPACTOR", nm[:15], "load top chest", "9 -> 1 block"], rot=8)


def crop_plots(W):
    y0 = L.level_floor(7)
    for pl in IND.FARM_PLOTS:
        block, maxage = IND.FARM_CROPS[pl["name"]]
        px, pz = pl["px"], pl["pz"]
        W.fill(px - 1, y0, pz - 1, px + 9, y0, pz + 9, DB)
        W.fill(px, y0 + 1, pz, px + 8, y0 + 1, pz + 8, "minecraft:farmland[moisture=7]")
        W.set(px + 4, y0 + 1, pz + 4, "minecraft:water[level=0]")
        W.fill(px - 1, y0 + 1, pz - 1, px - 1, y0 + 2, pz + 9, DB); W.fill(px + 9, y0 + 1, pz - 1, px + 9, y0 + 2, pz + 9, DB)
        W.fill(px - 1, y0 + 1, pz + 9, px + 9, y0 + 2, pz + 9, DB)
        for dx in range(9):
            for dz in range(9):
                if dx == 4 and dz == 4:
                    continue
                W.set(px + dx, y0 + 2, pz + dz, f"{block}[age=0]")
        chest(W, px + 4, y0 + 1, pz - 1, "south")
        cmdblock(W, px + 4, y0, pz + 4, "function riftbrek:industry/run_farm_%s" % pl["name"])
        for x in range(px + 1, px + 9, 4):
            for z in range(pz + 1, pz + 9, 4):
                W.set(x, y0 + 6, z, SEA)
        sign(W, px + 3, y0 + 1, pz - 2, ["CROP PLOT", pl["name"].upper(), "auto-harvest", "to chest"], rot=8)


def transport(W):
    y0 = L.level_floor(8)
    # --- minecart ring: powered rail on every straight tile, redstone block beneath ----------------
    a, b = RING, 731
    for x in range(a + 1, b):
        for z in (a, b):
            W.set(x, y0, z, "minecraft:redstone_block"); W.set(x, y0 + 1, z, "minecraft:powered_rail[powered=true,shape=east_west,waterlogged=false]")
    for z in range(a + 1, b):
        for x in (a, b):
            W.set(x, y0, z, "minecraft:redstone_block"); W.set(x, y0 + 1, z, "minecraft:powered_rail[powered=true,shape=north_south,waterlogged=false]")
    W.set(a, y0 + 1, a, "minecraft:rail[shape=south_east,waterlogged=false]"); W.set(b, y0 + 1, a, "minecraft:rail[shape=south_west,waterlogged=false]")
    W.set(a, y0 + 1, b, "minecraft:rail[shape=north_east,waterlogged=false]"); W.set(b, y0 + 1, b, "minecraft:rail[shape=north_west,waterlogged=false]")
    # --- ice highway (boats): blue ice floor in a 3-wide lane just inside the rail ring ---------------
    ia, ib = RING + 6, 731 - 6
    W.fill(ia - 1, y0, ia - 1, ib + 1, y0, ia + 1, "minecraft:blue_ice"); W.fill(ia - 1, y0, ib - 1, ib + 1, y0, ib + 1, "minecraft:blue_ice")
    W.fill(ia - 1, y0, ia - 1, ia + 1, y0, ib + 1, "minecraft:blue_ice"); W.fill(ib - 1, y0, ia - 1, ib + 1, y0, ib + 1, "minecraft:blue_ice")
    for (x0, z0, x1, z1) in ((ia - 1, ia - 1, ib + 1, ia + 1), (ia - 1, ib - 1, ib + 1, ib + 1), (ia - 1, ia - 1, ia + 1, ib + 1), (ib - 1, ia - 1, ib + 1, ib + 1)):
        W.fill(x0, y0 + 1, z0, x1, y0 + 6, z1, AIR)
    # lights over the ice lane
    for x in range(ia, ib, 8):
        for z in (ia, ib):
            W.set(x, y0 + 7, z, SEA); W.set(z, y0 + 7, x, SEA)
    # --- 4 stations on the rail ring with supply chests ----------------------------------------------
    for (sx, sz) in ((200, a + 3), (560, a + 3), (200, b - 3), (560, b - 3)):
        W.fill(sx - 6, y0, sz - 1, sx + 6, y0, sz + 1, QZ)
        chest(W, sx, y0 + 1, sz, "north", items=[("minecraft:minecart", 16), ("minecraft:oak_boat", 16), ("minecraft:chest_minecart", 8)])
        sign(W, sx + 2, y0 + 1, sz, ["TRANSPORT HUB", "take a minecart", "or a boat", "RING / ICE"], rot=8)
    # central hub hall under the plaza: platforms
    W.fill(306, y0, 442, 461, y0, 518, QZ)
    for x in range(310, 460, 10):
        W.fill(x, y0 + 1, 442, x, y0 + 4, 442, BRK); W.set(x, y0 + 5, 442, SEA)
        W.fill(x, y0 + 1, 518, x, y0 + 4, 518, BRK); W.set(x, y0 + 5, 518, SEA)
    sign(W, 383, y0 + 1, 480, ["CENTRAL HUB", "Rail - Ice - Ports", "Blimp: static only"], rot=0)


def veil_hq(W):
    y0 = L.level_floor(9)
    for x in range(54, 160, 10):
        W.fill(x, y0 + 1, 314, x, y0 + 6, 314, BK); W.fill(x, y0 + 1, 414, x, y0 + 6, 414, BK)
    # entrance gate to HQ from the secret tunnel: Veil-tier doors
    # tunnel door modules (x-row, passage along z): placed on the north tunnel (x=100..102, z 275..307)
    gate(W, "veil", 101, y0 + 1, 290, 1, facing="north", frame=BK)             # tunnel is x 100..102 (3 wide)
    gate(W, "veil", 101, y0 + 1, 445, 1, facing="north", frame=BK)
    sign(W, 110, y0 + 1, 330, ["VEIL", "HEADQUARTERS", "", "(classified)"], rot=0, color="gray")


def royal_level(W):
    y0 = L.level_floor(10)
    # vault rooms: royal-tier doors, iron/gold/diamond blocks
    for i, blk in enumerate(("minecraft:iron_block", "minecraft:gold_block", "minecraft:diamond_block", "minecraft:netherite_block")):
        vx = 310 + i * 40
        W.fill(vx, y0 + 1, 196, vx + 24, y0 + 6, 214, DB)
        W.fill(vx + 1, y0 + 1, 197, vx + 23, y0 + 6, 213, AIR)
        for xx in range(vx + 3, vx + 22, 3):
            W.fill(xx, y0 + 1, 200, xx, y0 + 2, 210, blk)
        W.set(vx + 12, y0 + 6, 205, SEA)
        gate(W, "royal", vx + 12, y0 + 1, 214, 1, facing="north", frame=DB)


def extra_gates(W):
    """tiered doors across the main underground corridors."""
    y1, y2, y10 = L.level_floor(1), L.level_floor(2), L.level_floor(10)
    # B1 security corridor (24 wide): leader tier
    W.fill(372, y1 + 1, 450, 395, y1 + 6, 450, DB)
    gate(W, "leader", 381, y1 + 1, 450, 6, facing="north", frame=DB)
    sign(W, 383, y1 + 1, 452, ["B1 SECURITY", "leader tier", "beyond this door"], rot=0)
    # B2 offices corridor: member tier
    W.fill(372, y2 + 1, 340, 395, y2 + 6, 340, DB)
    gate(W, "member", 381, y2 + 1, 340, 6, facing="north", frame=DB)
    sign(W, 383, y2 + 1, 342, ["B2 OFFICES", "member tier"], rot=0)
    # B10 royal tunnel (8 wide): royal tier, lockdown-proof
    gate(W, "royal", 381, y10 + 1, 360, 6, facing="north", frame=BK)
    sign(W, 384, y10 + 1, 362, ["ROYAL TUNNEL", "royal tier only"], rot=0, color="yellow")


def levels_signs(W):
    names = {1: "B1 SECURITY", 2: "B2 OFFICES", 3: "B3 GRAND ARCHIVE", 4: "B4 GRAND ARCHIVE", 5: "B5 AUTO STORAGE", 6: "B6 STORAGE+KITS",
             7: "B7 INDUSTRY", 8: "B8 TRANSPORT", 9: "B9 VEIL HQ", 10: "B10 ROYAL", 11: "B11 RESERVE", 12: "B12 RESERVE"}
    for k, nm in names.items():
        y0 = L.level_floor(k)
        for (x, z) in ((RING + 3, 100), (RING + 3, 384), (RING + 3, 680), (731 - 3, 100), (731 - 3, 384), (731 - 3, 680)):
            sign(W, x, y0 + 1, z, [nm, "service ring", "ladders N/S"], rot=0 if x < 100 else 4, color="white")


def kit_hall(W):
    y0 = L.level_floor(6)
    names = ["flame", "wemmbu", "theobald", "parrot", "manepear", "spoke"]
    for i, c in enumerate(names):
        x, z = 440 + i * 14, 500
        W.set(x, y0, z, "minecraft:blue_glazed_terracotta[facing=north]")
        cmdblock(W, x, y0 - 1, z, "function riftbrek:kit/pad_creator_%s" % c)
        for (dx, dz) in ((1, 0), (-1, 0), (0, 1), (0, -1)):
            W.set(x + dx, y0, z + dz, GLOW)
        sign(W, x, y0 + 1, z + 2, ["CREATOR KIT", c.upper(), "stand on pad", "members only"], rot=8)


def shulker_stations(W):
    """Real vanilla mechanics: a hopper pulls items out of a shulker box above it (unloader) / pushes items into a
    shulker box below it (loader).  Place a loaded/empty shulker box on the marked pad by hand or with a dispenser."""
    y0 = L.level_floor(7)
    for u in range(4):
        x, z = 130 + u * 4, 560
        W.set(x, y0 + 5, z, "minecraft:shulker_box[facing=up]")                    # UNLOADER: shulker above ...
        hopper(W, x, y0 + 4, z, "down")                                             # ... hopper pulls from it ...
        chest(W, x, y0 + 3, z, "south")                                             # ... into a chest
        sign(W, x, y0 + 1, z - 1, ["SHULKER", "UNLOADER", "box on top", "-> chest"], rot=8)
        W.fill(x, y0 + 1, z, x, y0 + 2, z, BRK)
    for u in range(4):
        x, z = 130 + u * 4, 570
        chest(W, x, y0 + 5, z, "south")                                             # LOADER: chest ...
        hopper(W, x, y0 + 4, z, "down")                                             # ... hopper pushes down ...
        W.set(x, y0 + 3, z, "minecraft:shulker_box[facing=up]")                     # ... into a shulker box
        sign(W, x, y0 + 1, z - 1, ["SHULKER", "LOADER", "chest on top", "-> box"], rot=8)
        W.fill(x, y0 + 1, z, x, y0 + 2, z, BRK)


def synth_hall(W):
    """B11 'synthesis hall': command-driven resource generators (NOT survival-legit farms)."""
    y0 = L.level_floor(11)
    sx, sz = L.SYNTH_ORIGIN
    for u, (name, table, label) in enumerate(L.SYNTH):
        x = sx + u * 6
        cmdblock(W, x, y0 + 1, sz, f"function riftbrek:industry/synth_{name}")
        chest(W, x, y0 + 2, sz, "south")
        sign(W, x, y0 + 1, sz - 1, ["SYNTHESIS", label[:15], "command-driven", "not survival"], rot=8)
        W.fill(x - 1, y0 + 1, sz - 1, x - 1, y0 + 3, sz + 1, DB)
        W.fill(x + 1, y0 + 1, sz - 1, x + 1, y0 + 3, sz + 1, DB)


def machines(W, lv):
    for hall in L.SORT_HALLS:
        ox, oz, ytop = sorter_hall(W, hall)
        intake(W, ox, oz, ytop, hall["name"].upper())
    smelters(W); crop_plots(W); transport(W); veil_hq(W); royal_level(W); extra_gates(W); kit_hall(W); levels_signs(W); shulker_stations(W); synth_hall(W)
    surface_hatches(W, lv)
