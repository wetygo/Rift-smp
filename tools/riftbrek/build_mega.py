"""REDSTONE MEGA BUILDING - the annex plateau (X 8960..10111, Z 8192..8959) becomes ONE roofed megastructure.
 * shell: 12-thick walls 160 high round the plateau, glass-skylight roof, pilasters, 4 gatehouses (member tier), invisible light grid (no mob spawns)
 * every imported build (Wildezz / Storage Tech / Wave Bolt) stays inside it, unchanged
 * three halls of MY OWN, all plain vanilla redstone, each live-tested: FURNACE ARRAY (4 x 20 hopper-fed smelters), FARM HALL (observer + piston
   melon and pumpkin farms), STORAGE VAULT (chest racks + comparator fill meters)
Everything is built in region-local coordinates and added by assemble.py as extra regions of the MASTER litematic."""
import numpy as np
from .build_common import *
from .nbt import Byte
from .world import World
from . import build_haven as HV

LH = 160                        # wall height above the plateau
MEGA_TESTS = []


def ground(W, h=GROUND_TOP):
    W.fill(0, 0, 0, W.sx - 1, h - 5, W.sz - 1, "minecraft:deepslate")
    W.fill(0, h - 4, 0, W.sx - 1, h - 1, W.sz - 1, "minecraft:stone")
    W.fill(0, h, 0, W.sx - 1, h, W.sz - 1, "minecraft:grass_block[snowy=false]")


def shell(pw, pd):
    """region of size pw x (GY+LH+6) x pd, placed at plateau origin (768,0,0): walls, roof, pilasters, gates, light grid"""
    sy = GY + LH + 6
    W = World(pw, sy, pd)
    t = 12
    top = GY + LH
    for (x0, z0, x1, z1) in ((0, 0, pw - 1, t - 1), (0, pd - t, pw - 1, pd - 1), (pw - t, 0, pw - 1, pd - 1)):
        W.fill(x0, GY, z0, x1, top, z1, BRK)
    # purple band + glowing strips on the outside
    W.fill(0, GY + 60, 0, pw - 1, GY + 63, 1, PU); W.fill(0, GY + 60, pd - 2, pw - 1, GY + 63, pd - 1, PU); W.fill(pw - 2, GY + 60, 0, pw - 1, GY + 63, pd - 1, PU)
    for x in range(10, pw - 12, 24):
        W.fill(x, GY + 4, 0, x, top - 4, 0, GLOW); W.fill(x, GY + 4, pd - 1, x, top - 4, pd - 1, GLOW)
    for z in range(10, pd - 12, 24):
        W.fill(pw - 1, GY + 4, z, pw - 1, top - 4, z, GLOW)
    # roof deck with skylight rows and glowing ribs
    W.fill(0, top, 0, pw - 1, top, pd - 1, DT)
    for z in range(20, pd - 20, 24):
        W.fill(12, top, z, pw - 13, top, z + 11, "minecraft:tinted_glass")
    for x in range(0, pw, 48):
        W.fill(x, top, 0, x, top, pd - 1, GLOW)
    # crenellated parapet
    W.fill(0, top + 1, 0, pw - 1, top + 2, 1, BRK); W.fill(0, top + 1, pd - 2, pw - 1, top + 2, pd - 1, BRK); W.fill(pw - 2, top + 1, 0, pw - 1, top + 2, pd - 1, BRK)
    # pilasters on the inside of the three walls
    for x in range(24, pw - 12, 24):
        W.fill(x, GY, t, x + 3, top - 1, t + 3, BRK); W.fill(x, GY, pd - t - 4, x + 3, top - 1, pd - t - 1, BRK)
        W.fill(x + 1, GY + 1, t, x + 2, top - 1, t, GLOW); W.fill(x + 1, GY + 1, pd - t - 1, x + 2, top - 1, pd - t - 1, GLOW)
    # four gatehouses (12 wide, member tier) in the north and south walls
    for gx in (pw // 4 - 6, 3 * pw // 4 - 6):
        for (gz, face) in ((0, "north"), (pd - t, "north")):
            gate(W, "member", gx, GY, gz + t // 2, 12, facing=face, frame=BRK, clear_z=list(range(gz, gz + t)), clear_h=8)
            sign(W, gx + 4, GY, gz - 1 if gz == 0 else gz + t, ["REDSTONE MEGA", "BUILDING", "member tier", ""], rot=0 if gz else 8)
    # invisible light grid (no hostile spawns inside); imported builds that overlap simply overwrite it
    for z in range(4, pd - t, 7):
        for x in range(4, pw - t, 7):
            W.set(x, GY, z, "minecraft:light[level=15,waterlogged=false]")
    return W


# ---------------------------------------------------------------------------------------------- halls
def _ore_items(item, per=64, slots=6):
    return [{"Slot": Byte(i), "id": item, "count": per} for i in range(slots)]


def furnace_unit(W, x, y, z, ore, collector=True):
    W.set(x, y, z, "minecraft:hopper[enabled=true,facing=east]"); W.tile(x, y, z, {"id": "minecraft:hopper", "Items": [], "TransferCooldown": 0})
    W.set(x, y + 1, z, "minecraft:hopper[enabled=true,facing=down]"); W.tile(x, y + 1, z, {"id": "minecraft:hopper", "Items": [], "TransferCooldown": 0})
    W.set(x, y + 2, z, "minecraft:furnace[facing=south,lit=false]"); W.tile(x, y + 2, z, {"id": "minecraft:furnace", "Items": []})
    W.set(x, y + 3, z, "minecraft:hopper[enabled=true,facing=down]"); W.tile(x, y + 3, z, {"id": "minecraft:hopper", "Items": [], "TransferCooldown": 0})
    W.set(x, y + 4, z, "minecraft:chest[facing=south,type=single,waterlogged=false]"); W.tile(x, y + 4, z, {"id": "minecraft:chest", "Items": _ore_items(ore, 64, 4)})
    W.set(x + 1, y + 1, z, BRK)
    W.set(x + 1, y + 2, z, "minecraft:hopper[enabled=true,facing=west]"); W.tile(x + 1, y + 2, z, {"id": "minecraft:hopper", "Items": [], "TransferCooldown": 0})
    W.set(x + 1, y + 3, z, "minecraft:chest[facing=south,type=single,waterlogged=false]"); W.tile(x + 1, y + 3, z, {"id": "minecraft:chest", "Items": _ore_items("minecraft:coal", 64, 2)})


def furnace_hall(W, ox, oz, units=20):
    """4 rows of hopper-fed smelters; each row's collector hopper line runs east into an output chest"""
    rows = [("IRON", "minecraft:raw_iron"), ("COPPER", "minecraft:raw_copper"), ("GOLD", "minecraft:raw_gold"), ("STONE", "minecraft:cobblestone")]
    y = GY
    for r, (nm, ore) in enumerate(rows):
        z = oz + 6 + r * 9
        W.fill(ox, GROUND_TOP, z - 3, ox + units * 3 + 6, GROUND_TOP, z + 3, DT)
        for u in range(units):
            furnace_unit(W, ox + 2 + u * 3, y, z, ore)
        xs = ox + 2
        xe = ox + 2 + units * 3
        for x in range(xs + 1, xe + 2):
            if W.get(x, y, z) == "minecraft:air":
                W.set(x, y, z, "minecraft:hopper[enabled=true,facing=east]"); W.tile(x, y, z, {"id": "minecraft:hopper", "Items": [], "TransferCooldown": 0})
        W.set(xe + 2, y, z, "minecraft:chest[facing=west,type=single,waterlogged=false]"); W.tile(xe + 2, y, z, {"id": "minecraft:chest", "Items": []})
        sign(W, ox, y, z + 1, ["FURNACE ARRAY", nm + " row", f"{units} smelters", "chest at east end"], rot=4, color="orange")
        MEGA_TESTS.append(dict(kind="furnace_row", name=f"FURNACE ROW {nm}", unit0=(xs, y, z), furnace0=(xs, y + 2, z), out=(xe + 2, y, z), ore=ore))
    sign(W, ox + 4, y, oz + 2, ["FURNACE ARRAY", "80 smelters", "hopper fed", "ore chest on top, coal beside"], rot=0, color="red")


def farm_unit(W, x, z, stem, name_idx, hold_lamp=True):
    """observer + piston melon/pumpkin farm unit. x,z = the STEM cell; melon cell is x+1. Layout (y = GY, farmland / hopper at GY-1, chest GY-2)"""
    y = GY
    fruit = "melon" if "melon" in stem else "pumpkin"
    W.set(x, y - 1, z, "minecraft:farmland[moisture=7]")
    W.set(x, y, z, f"minecraft:{stem}[age=0]")
    W.set(x - 1, y - 1, z, "minecraft:water[level=0]"); W.set(x - 1, y, z, BRK)                 # hydration + west blocker
    W.set(x, y, z - 1, BRK); W.set(x, y, z + 1, BRK); W.set(x, y - 1, z - 1, BRK); W.set(x, y - 1, z + 1, BRK); W.set(x - 1, y - 1, z - 1, BRK); W.set(x - 1, y - 1, z + 1, BRK)
    W.set(x - 2, y - 1, z, BRK)
    W.set(x, y + 1, z, SEA)                                                                         # light for the stem
    mx = x + 1                                                                                      # fruit cell
    W.set(mx, y - 1, z, "minecraft:hopper[enabled=true,facing=down]"); W.tile(mx, y - 1, z, {"id": "minecraft:hopper", "Items": [], "TransferCooldown": 0})
    W.set(mx, y - 2, z, "minecraft:chest[facing=south,type=single,waterlogged=false]"); W.tile(mx, y - 2, z, {"id": "minecraft:chest", "Items": []})
    W.set(mx + 1, y, z, "minecraft:piston[extended=false,facing=west]")                             # pushing into the fruit breaks it
    W.set(mx, y, z - 1, BRK)
    W.set(mx, y, z + 1, "minecraft:observer[facing=north,powered=false]")                           # watches the fruit cell
    for (dx, dz) in ((1, 2), (1, 3), (0, 2)):
        pass
    # dust: behind the observer (mx, z+2) -> (mx+1, z+2) -> (mx+1, z+1) pointing north into the piston
    for (cx, cz) in ((mx, z + 2), (mx + 1, z + 2), (mx + 1, z + 1)):
        W.set(cx, y - 1, cz, BRK)
        W.set(cx, y, cz, "minecraft:redstone_wire")
    fix_dust(W, [(mx, y, z + 2), (mx + 1, y, z + 2), (mx + 1, y, z + 1)])
    for (cx, cz) in ((mx, z + 2), (mx + 1, z + 2), (mx + 1, z + 1)):
        n, props = W.palette[W.a[y, cz, cx]]
        W.set(cx, y, cz, n + "[" + ",".join(f"{k}={('0' if k == 'power' else v)}" for k, v in sorted(props.items())) + "]")
    W.set(mx + 1, y - 1, z, BRK); W.set(mx + 1, y - 1, z - 1, BRK)
    return dict(stem=(x, y, z), fruit=(mx, y, z), piston=(mx + 1, y, z), chest=(mx, y - 2, z), fruit_block=f"minecraft:{fruit}")


def farm_hall(W, ox, oz, n=12):
    W.fill(ox, GROUND_TOP, oz, ox + n * 6 + 4, GROUND_TOP, oz + 40, "minecraft:podzol")
    for r, stem in enumerate(("melon_stem", "pumpkin_stem")):
        z = oz + 6 + r * 14
        units = [farm_unit(W, ox + 4 + u * 6, z, stem, u) for u in range(n)]
        sign(W, ox + 1, GY, z + 3, ["AUTO " + ("MELON" if "melon" in stem else "PUMPKIN") + " FARM", "stem -> fruit cell", "observer + piston", "hopper + chest"], rot=4, color="green")
        MEGA_TESTS.append(dict(kind="farm", name="AUTO " + stem.upper().replace("_STEM", " FARM"), **units[0]))
    sign(W, ox + 4, GY, oz + 1, ["FARM HALL", "24 observer-piston", "melon + pumpkin units", "harvest by itself"], rot=0, color="red")


def storage_hall(W, ox, oz):
    W.fill(ox, GROUND_TOP, oz, ox + 100, GROUND_TOP, oz + 44, DT)
    y = GY
    n = 0
    for r in range(4):
        for c in range(24):
            for h in range(3):
                x = ox + 2 + c * 2 + (c // 6) * 2
                z = oz + 2 + r * 4
                W.set(x, y + h, z, "minecraft:chest[facing=south,type=single,waterlogged=false]")
                W.tile(x, y + h, z, {"id": "minecraft:chest", "Items": []}); n += 1
        sign(W, ox + 100, y, oz + 2 + r * 4, ["STORAGE VAULT", f"rack {r + 1}", "72 chests", ""], rot=12, color="blue")
    HV.HAVEN_TESTS.clear()
    for k, (slots, nm) in enumerate(((5, "VAULT 5/27"), (13, "VAULT 13/27"), (24, "VAULT 24/27"))):
        HV.fill_meter(W, ox + 8 + k * 14, oz + 24, slots, nm)
    MEGA_TESTS.append(dict(kind="haven_meters", tests=[dict(t) for t in HV.HAVEN_TESTS]))
    sign(W, ox + 4, y, oz + 20, ["STORAGE VAULT", "chest racks 288", "+ fill meters", "(real comparators)"], rot=0, color="red")


HALLS = [("FURNACE ARRAY", 20 * 3 + 12, 42, furnace_hall), ("FARM HALL", 12 * 6 + 8, 42, farm_hall), ("STORAGE VAULT", 104, 46, storage_hall)]


def free_rect(occ, w, d, margin=10, step=4):
    """first free rectangle (z-major scan) in the occupancy grid"""
    H, Wd = occ.shape
    for z in range(margin, H - d - margin, step):
        for x in range(margin, Wd - w - margin, step):
            if not occ[z:z + d, x:x + w].any():
                return x, z
    return None
