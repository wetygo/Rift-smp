"""THE REDSTONE CITY (768 x 768): a street-grid city whose every block is a working redstone build.
Origin (placement): world X 11264, Z 8192 (local 0,0).  6 x 6 blocks of 128 (14-wide avenues): the middle 2 x 2 is the Redstone Plaza with the CORE TOWER and a
real hopper clock; around it: a REDSTONE HAVEN hall, a REDSTONE CENTER (plate door, delay timer, tripwire trap, smelter, night lamp), a FURNACE ARRAY yard
(80 hopper-fed smelters), a FARM yard (observer + piston melon / pumpkin units), a STORAGE VAULT yard (288 chests + comparator meters) and 26 'lofts'
(multi-floor furnished buildings with command-block doors and lever/lamp circuits).  A minecart EXPRESS LINE runs along the south avenue (station + dispenser,
tested mechanics from the HQ bolt line).  All the circuits are the same modules that were live-tested in the HQ."""
import sys, os, json
import numpy as np
from .build_common import *
from . import build_common as C
from .world import World
from . import build_haven as HV
from . import build_mega as BM
from . import build_redcenter as RC
from . import build_furnish2 as F2
from . import build_ward as BW

SX = SZ = 768
SY = 384
TESTS = []


def ground(W):
    W.fill(0, 0, 0, SX - 1, GROUND_TOP - 5, SZ - 1, "minecraft:deepslate")
    W.fill(0, GROUND_TOP - 4, 0, SX - 1, GROUND_TOP - 1, SZ - 1, "minecraft:stone")
    W.fill(0, GROUND_TOP, 0, SX - 1, GROUND_TOP, SZ - 1, "minecraft:grass_block[snowy=false]")


def cell(i, j):
    return i * 128 + 14, j * 128 + 14                 # origin of block (i, j); block size 114 x 114


def yard(W, x0, z0, x1, z1, title):
    W.fill(x0, GROUND_TOP, z0, x1, GROUND_TOP, z1, DT)
    for (a, b, c, d) in ((x0, z0, x1, z0), (x0, z1, x1, z1), (x0, z0, x0, z1), (x1, z0, x1, z1)):
        W.fill(a, GY, b, c, GY + 3, d, BRK)
    W.fill((x0 + x1) // 2 - 3, GY, z1, (x0 + x1) // 2 + 3, GY + 3, z1, AIR)          # open gate in the south wall
    sign(W, (x0 + x1) // 2 + 5, GY, z1 + 2, [title, "redstone yard", "walk in", ""], rot=0, color="red")


def lofts(W, rng, skip):
    specs = []
    kinds = ["barracks", "academy", "guest", "market", "workshop", "dorm", "archive", "courts"]
    k = 0
    for j in range(6):
        for i in range(6):
            if (i, j) in skip:
                continue
            x0, z0 = cell(i, j)
            kd = kinds[k % len(kinds)]
            fl = 3 + (k % 4)
            specs.append(("Loft %02d" % (k + 1), kd, x0 + 6, z0 + 6, x0 + 106, z0 + 106, fl, 11, "south", "public"))
            BW.STYLE_BY_POS[("R", x0 + 6, z0 + 6)] = BW.STYLE.get(kd, "office")
            k += 1
    return specs


def special_building(W, label, kind, x0, z0, x1, z1, floors, fh, tests):
    BW.building(W, "R", label, kind, x0, z0, x1, z1, floors, fh, "south", "public", [label.upper()[:15], kind.title(), "public tier", "redstone city"])
    HV.HAVEN_TESTS.clear()
    HV.haven(W, x0 + 6, z0 + 6, x1 - 6, z1 - 6)
    sign(W, x0 + 6, GY, z1 - 4, [label[:14], "floor 1: Haven", "real redstone", "no command blocks"], rot=0, color="red")
    tests.append(dict(name=label + " haven", kind="haven", tests=json.loads(json.dumps(HV.HAVEN_TESTS, default=list))))
    if kind == "center":
        RC.RC_TESTS.clear()
        RC.redcenter(W, x0 + 4, z0 + 4, x1 - 4, z1 - 4, GY + fh, GY + floors * fh)
        tests.append(dict(name=label + " builds", kind="redcenter", tests=json.loads(json.dumps(RC.RC_TESTS, default=list))))


def core_tower(W):
    cx = cz = 384
    for y in range(GY, GY + 120):
        r = 15 - (y - GY) // 24
        disk(W, cx, cz, r, y, y, "minecraft:cut_copper" if (y - GY) % 8 else "minecraft:red_concrete", hollow=True)
        if (y - GY) % 8 == 4:
            for k in range(12):
                a = k * np.pi / 6
                W.set(int(cx + (r) * np.cos(a)), y, int(cz + (r) * np.sin(a)), "minecraft:sea_lantern")
    for y in range(GY, GY + 119):
        W.set(cx - 7, y, cz, "minecraft:ladder[facing=east,waterlogged=false]")
    for f in range(0, 120, 12):
        disk(W, cx, cz, 9 - f // 24, GY + f, GY + f, "minecraft:polished_blackstone")
        W.set(cx - 7, GY + f, cz, "minecraft:ladder[facing=east,waterlogged=false]")
    W.fill(cx - 2, GY + 120, cz - 2, cx + 2, GY + 124, cz + 2, "minecraft:redstone_block")
    spire(W, cx, cz, 4, GY + 125, 20, body="minecraft:red_concrete", edge=GLOW, tip=SEA)
    for k in range(4):
        a = k * np.pi / 2
        W.fill(int(cx + 15 * np.cos(a)) - 1, GY, int(cz + 15 * np.sin(a)) - 1, int(cx + 15 * np.cos(a)) + 1, GY + 5, int(cz + 15 * np.sin(a)) + 1, AIR)   # 4 door arches


def plaza(W, tests):
    x0, z0, x1, z1 = 270, 270, 497, 497
    W.fill(x0, GROUND_TOP, z0, x1, GROUND_TOP, z1, "minecraft:polished_blackstone")
    for r in range(30, 112, 14):
        disk(W, 384, 384, r, GROUND_TOP, GROUND_TOP, "minecraft:red_concrete", hollow=True)
    for k in range(16):
        a = k * np.pi / 8
        W.set(int(384 + 100 * np.cos(a)), GY, int(384 + 100 * np.sin(a)), "minecraft:sea_lantern")
    core_tower(W)
    HV.HAVEN_TESTS.clear()
    HV.hopper_clock(W, 300, 440)                                # a real hopper clock on the plaza (6 lamps blink ~ every 0.8 s)
    sign(W, 303, GY, 446, ["REDSTONE PLAZA", "CORE TOWER 125 high", "ladder inside", "clock: hopper + comparator"], rot=0, color="red")
    tests.append(dict(name="plaza clock", kind="haven", tests=json.loads(json.dumps(HV.HAVEN_TESTS, default=list))))


def express_line(W):
    """south avenue (z 640..653): the same minecart line as the HQ bolt line, 700 blocks, station at the west end"""
    BM.bolt_rails(W, 20, 740, GROUND_TOP, 643, 649, station_west=True, loop_east=True)
    TESTS.append(dict(name="express line", kind="bolt_station", x0=20, y=GY, zs=[643, 649], x1=740))


def build_world(seed=11):
    rng = np.random.default_rng(seed)
    W = World(SX, SY, SZ)
    C.SHELLS.clear(); C.GATES.clear(); BW.WARD_TESTS.clear(); BM.MEGA_TESTS.clear()
    ground(W)
    log = lambda m: print("  %s" % m, flush=True)
    for i in range(6):
        BW.road(W, i * 128, 0, i * 128 + 13, SZ - 1)
        BW.road(W, 0, i * 128, SX - 1, i * 128 + 13)
    log("avenues")
    special = {(2, 2), (3, 2), (2, 3), (3, 3), (0, 0), (1, 0), (2, 0), (3, 0), (4, 0), (5, 0)}
    tests = []
    plaza(W, tests); log("plaza + core tower + hopper clock")
    x0, z0 = cell(0, 0)
    special_building(W, "REDSTONE HAVEN", "haven", x0 + 4, z0 + 4, x0 + 110, z0 + 110, 2, 12, tests); log("haven")
    x0, z0 = cell(1, 0)
    special_building(W, "REDSTONE CENTER", "center", x0 + 4, z0 + 4, x0 + 128 + 108, z0 + 110, 3, 12, tests); log("redstone center")
    # yards: furnace array / farms / storage
    x0, z0 = cell(3, 0)
    yard(W, x0 + 2, z0 + 2, x0 + 112, z0 + 112, "FURNACE ARRAY")
    BM.MEGA_TESTS.clear(); BM.furnace_hall(W, x0 + 8, z0 + 30)
    tests.append(dict(name="furnace array", kind="furnace", tests=json.loads(json.dumps(BM.MEGA_TESTS, default=list))))
    x0, z0 = cell(4, 0)
    yard(W, x0 + 2, z0 + 2, x0 + 112, z0 + 112, "FARM YARD")
    BM.MEGA_TESTS.clear(); BM.farm_hall(W, x0 + 12, z0 + 30)
    tests.append(dict(name="farm yard", kind="farm", tests=json.loads(json.dumps(BM.MEGA_TESTS, default=list))))
    x0, z0 = cell(5, 0)
    yard(W, x0 + 2, z0 + 2, x0 + 112, z0 + 112, "STORAGE VAULT")
    BM.MEGA_TESTS.clear(); BM.storage_hall(W, x0 + 6, z0 + 30)
    tests.append(dict(name="storage vault", kind="storage", tests=json.loads(json.dumps(BM.MEGA_TESTS, default=list))))
    log("yards")
    sp = lofts(W, rng, special)
    for (label, kd, a, b, c, d, fl, fh, face, tier) in sp:
        BW.building(W, "R", label, kd, a, b, c, d, fl, fh, face, tier, [label.upper(), kd.title(), "public tier", "redstone city"])
    log("lofts %d" % len(sp))
    express_line(W); log("express line")
    shells = [s for s in C.SHELLS if not any(abs(s["x0"] - cell(i, 0)[0]) < 12 and abs(s["z0"] - cell(i, 0)[1]) < 12 for i in (0, 1))]
    keep = C.SHELLS[:]; C.SHELLS[:] = shells
    F2.furnish_shells(W, [])
    for s in shells:
        BW.furnish_rooms(W, s, BW.STYLE_BY_POS.get(("R", s["x0"], s["z0"]), "office"))
    C.SHELLS[:] = keep
    tests.extend(BW.WARD_TESTS)
    log("furnished")
    for _ in range(300):
        x = int(rng.integers(6, SX - 6)); z = int(rng.integers(6, SZ - 6))
        if W.a[GROUND_TOP, z, x] == W.B("minecraft:grass_block[snowy=false]") and not W.a[GY:GY + 10, z - 3:z + 4, x - 3:x + 4].any():
            tree(W, x, z, "cherry" if rng.random() < 0.5 else "oak", 6)
    return W, tests


def main(out_dir):
    W, tests = build_world()
    os.makedirs(out_dir, exist_ok=True)
    path = os.path.join(out_dir, "RIFTBREK_REDSTONE_CITY.litematic")
    bits, total = W.save(path, "Redstone City", "RIFTBREK Design", "768x768 redstone city: plaza + core tower, Haven, Redstone Center, furnace array, farm yard, storage vault, 26 lofts, express minecart line. Origin X 11264 Z 8192.", region_name="Redstone City")
    json.dump(dict(origin=[11264, 8192], tests=tests, express=TESTS), open(os.path.join(out_dir, "rcity_info.json"), "w"), default=list)
    print("palette", len(W.palette), "bits", bits, "solid", total, "tiles", len(W.tiles), "gates", len(C.GATES))
    return W, path


if __name__ == "__main__":
    main(sys.argv[1] if len(sys.argv) > 1 else "dist")
