"""THE OUTER WARD - the HQ grows from 768 x 768 to 2304 x 1536.

Frame: ward-local (0,0) = world (WX, WZ) = (7808, 7808).  The original HQ (768 x 768, world 8192..8959) sits in the middle band, the Annex plateau
(Wildezz / Storage Tech builds) to its east.  The ward is three strips around them, built as separate regions (no giant array):
   N  x 0..2303  z 0..383        (north of the HQ and the annex)
   S  x 0..2303  z 1152..1535    (south of them)
   W  x 0..383   z 384..1151     (west of the HQ)
Every building is a multi-floor shell with 12-block rooms, furnished rooms, command-block access doors (same riftbrek door functions), lamp-line
circuits, and three Redstone Works halls (full REDSTONE HAVEN: logic lab, hopper clock, fill meters, piston curtain).
Strips are built in strip-local coordinates; all helpers are position independent (doors call riftbrek:door/<tier> from the block itself).
"""
import sys, os, json
import numpy as np
from .build_common import *
from . import build_common as C
from . import build_furnish2 as F2
from .world import World
from . import build_haven as HV

WX = WZ = 7808
SY = 384
STRIPS = {"N": (0, 0, 2304, 384), "S": (0, 1152, 2304, 384), "W": (0, 384, 384, 768)}
WARD_TESTS = []
BUILDINGS = []        # (strip, label, kind, x0, z0, x1, z1, floors) for docs
ROAD = "minecraft:gray_concrete"
STYLE = {"center": "office", "barracks": "barracks", "academy": "office", "armory": "noble", "infirmary": "lounge", "courts": "office", "guest": "lounge",
         "mess": "noble", "stables": "barracks", "workshop": "noble", "market": "noble", "archive": "office", "dorm": "barracks", "haven": "office",
         "granary": "noble", "embassy": "lounge", "observatory": "office"}


def ground(W):
    W.fill(0, 0, 0, W.sx - 1, GROUND_TOP - 5, W.sz - 1, "minecraft:deepslate")
    W.fill(0, GROUND_TOP - 4, 0, W.sx - 1, GROUND_TOP - 1, W.sz - 1, "minecraft:dirt")
    W.fill(0, GROUND_TOP, 0, W.sx - 1, GROUND_TOP, W.sz - 1, "minecraft:grass_block[snowy=false]")


def road(W, x0, z0, x1, z1):
    W.fill(x0, GROUND_TOP, z0, x1, GROUND_TOP, z1, ROAD)
    if x1 - x0 > z1 - z0:
        W.fill(x0, GROUND_TOP, (z0 + z1) // 2, x1, GROUND_TOP, (z0 + z1) // 2, PU)
        for x in range(x0 + 6, x1, 24):
            for z in (z0, z1):
                W.fill(x, GY, z, x, GY + 3, z, "minecraft:polished_blackstone_wall[east=none,north=none,south=none,up=true,waterlogged=false,west=none]")
                W.set(x, GY + 4, z, SEA)
    else:
        W.fill((x0 + x1) // 2, GROUND_TOP, z0, (x0 + x1) // 2, GROUND_TOP, z1, PU)
        for z in range(z0 + 6, z1, 24):
            for x in (x0, x1):
                W.fill(x, GY, z, x, GY + 3, z, "minecraft:polished_blackstone_wall[east=none,north=none,south=none,up=true,waterlogged=false,west=none]")
                W.set(x, GY + 4, z, SEA)


def street_furniture(W, z_edge, side, step=22):
    """benches (stairs back to back) and flower planters on the lawn strip beside an avenue edge"""
    from .build_common import GY as _GY
    flowers = ["minecraft:poppy", "minecraft:cornflower", "minecraft:allium", "minecraft:azure_bluet", "minecraft:oxeye_daisy", "minecraft:pink_tulip"]
    for k, x in enumerate(range(12, W.sx - 12, step)):
        z = z_edge + side * 2
        if W.a[_GY, z, x] != 0:
            continue
        if k % 2 == 0:
            f = "north" if side > 0 else "south"
            W.set(x, _GY, z, f"minecraft:spruce_stairs[facing={f},half=bottom,shape=straight,waterlogged=false]")
            W.set(x + 1, _GY, z, f"minecraft:spruce_stairs[facing={f},half=bottom,shape=straight,waterlogged=false]")
            W.set(x, _GY, z + side, "minecraft:spruce_slab[type=bottom,waterlogged=false]"); W.set(x + 1, _GY, z + side, "minecraft:spruce_slab[type=bottom,waterlogged=false]")
        else:
            W.fill(x, _GROUND_TOP_(), z, x + 2, _GROUND_TOP_(), z + 1, "minecraft:polished_blackstone")
            W.fill(x, _GY, z, x + 2, _GY, z + 1, "minecraft:rooted_dirt")
            for i in range(3):
                W.set(x + i, _GY + 1, z, flowers[(k + i) % len(flowers)])


def _GROUND_TOP_():
    return GROUND_TOP


def lamp_line(W, x, z, y, n=12, name="LAMP LINE"):
    """lever + dust line + a lamp under every dust cell (settled all-off state); flipping the lever lights the room"""
    W.set(x, y, z, "minecraft:lever[face=floor,facing=north,powered=false]")
    cells = {(x + 1 + i, z): 0 for i in range(n)}
    for (cx, cz) in cells:
        W.set(cx, y, cz, "minecraft:redstone_wire")
    C.fix_dust(W, [(cx, y, cz) for (cx, cz) in cells])
    for (cx, cz) in cells:
        name_, props = W.palette[W.a[y, cz, cx]]
        W.set(cx, y, cz, name_ + "[" + ",".join(f"{k}={v}" for k, v in sorted(props.items())) + "]")
        W.set(cx, y - 1, cz, "minecraft:redstone_lamp[lit=false]")
    sign(W, x, y, z + 1, [name, "flip the lever", "lamps under the", "dust line"], rot=8, color="light_blue")
    return dict(kind="line", lever=(x, y, z), dust=[(cx, cz) for (cx, cz) in cells], lamp_y=y - 1)


def furnish_rooms(W, sh, style):
    t = sh["thick"]; pitch = 12
    xi0, zi0, xi1, zi1 = sh["x0"] + 3, sh["z0"] + 3, sh["x1"] - 3, sh["z1"] - 3
    xs = [xi0 - 1] + list(range(xi0 + pitch, xi1 - 4, pitch)) + [xi1 + 1]
    zs = [zi0 - 1] + list(range(zi0 + pitch, zi1 - 4, pitch)) + [zi1 + 1]
    lad = [(xi0, zi0), (xi1, zi1)]
    n = 0
    for f in range(max(sh["floors"] - 1, 1)):
        y = sh["y0"] + f * sh["fh"]
        for i in range(len(xs) - 1):
            for j in range(len(zs) - 1):
                n += F2.furnish_rect(W, xs[i] + 1, zs[j] + 1, xs[i + 1] - 1, zs[j + 1] - 1, y, style, lad, step=3)
    return n


def building(W, strip, label, kind, x0, z0, x1, z1, floors, fh, face, tier, lines):
    top = shell(W, x0, z0, x1, z1, floors, fh, wall=BRK, thick=3, roof=DT)
    n_before = len(C.SHELLS)
    cx = (x0 + x1) // 2
    gx = cx - 3
    for f in range(floors):
        y = GY + f * fh
        if kind not in ("haven", "center") or (kind == "haven" and f > 0) or (kind == "center" and f > 1):
            partitions(W, x0 + 3, z0 + 3, x1 - 3, z1 - 3, y, h=fh - 1, pitch=12, wall=BRK, gap=4, gh=4, kind=kind)
        lattice_lights(W, x0 + 3, z0 + 3, x1 - 3, z1 - 3, y + fh - 1, step=6, off=3)
        windows_ring(W, x0, z0, x1, z1, y + 3, h=4, glass=PG, step=6, wd=3, skip=[(gx - 2, gx + 8, z0 if face == "north" else z1)] if f == 0 else [])
    ladder_shaft(W, x0 + 3, z0 + 3, GY, top - 1, "east")
    ladder_shaft(W, x1 - 3, z1 - 3, GY, top - 1, "west")
    if face == "south":
        W.fill(gx - 2, GY, z1 - 14, gx + 8, GY + fh - 2, z1 - 3, AIR)
        gate(W, tier, gx, GY, z1, 6, facing="north", frame=BRK, clear_z=[z1 - 1, z1 - 2])
        sign(W, gx - 2, GY, z1 + 2, lines, rot=0)
        W.fill(gx, GROUND_TOP, z1 + 1, gx + 5, GROUND_TOP, z1 + 16, ROAD)
    else:
        W.fill(gx - 2, GY, z0 + 3, gx + 8, GY + fh - 2, z0 + 14, AIR)
        gate(W, tier, gx, GY, z0, 6, facing="north", frame=BRK, clear_z=[z0 + 1, z0 + 2])
        sign(W, gx - 2, GY, z0 - 2, lines, rot=8)
        W.fill(gx, GROUND_TOP, z0 - 16, gx + 5, GROUND_TOP, z0 - 1, ROAD)
    for (ex, ez) in ((x0, z0), (x1, z0), (x0, z1), (x1, z1)):
        W.fill(ex, GY, ez, ex + (1 if ex == x0 else -1), top + 3, ez + (1 if ez == z0 else -1), BRK)
        W.fill(ex, GY + 2, ez, ex, top + 3, ez, GLOW)
    merlons(W, x0, z0, x1, z1, top + 1, BRK, 2)
    W.fill(x0, top, z0, x1, top, z0, GLOW); W.fill(x0, top, z1, x1, top, z1, GLOW)
    W.fill(x0, top, z0, x0, top, z1, GLOW); W.fill(x1, top, z0, x1, top, z1, GLOW)
    # roof spire / dome over big buildings
    if (x1 - x0) >= 140:
        spire(W, cx, (z0 + z1) // 2, 10, top + 2, 26)
    PENDING_CMD.append((cx, (z0 + z1) // 2))                                   # placed after the basements are carved (they would overwrite it)
    # lamp lines in the lobby (ground) and one room per upper floor
    yy = GY
    lz = (z1 - 8) if face == "south" else (z0 + 8)
    for f in range(min(floors, 3)):
        if kind in ("haven", "center") and f <= (1 if kind == "center" else 0):
            continue
        if f == 0:                                    # ground-floor lamps sit in the basement ceiling layer: place them after the basements are carved
            PENDING_LINES.append((label, strip, x0 + 6, lz, GY, floors))
            continue
        t = lamp_line(W, x0 + 6, lz + 2, GY + f * fh, n=12, name="%s L%d" % (label[:10], f + 1))
        WARD_TESTS.append(dict(strip=strip, name=f"{label} lamp line floor {f + 1}", **t))
    BUILDINGS.append((strip, label, kind, x0, z0, x1, z1, floors))
    return top


def bolt_viaduct_west(W):
    """the west end of the BOLT LINE: x 32..383 of the west strip (HQ-local x -352..-1): lit deck + rails + the cart STATION (see build_mega.bolt_rails)"""
    from . import build_mega as BM
    VY, LZA = 244, 28
    W.fill(32, VY - 1, LZA - 2, 383, VY - 1, LZA + 20, BRK)
    W.fill(32, VY, LZA - 2, 383, VY + 3, LZA + 20, AIR)
    for xx in range(36, 384, 8):
        W.set(xx, VY - 1, LZA - 2, SEA); W.set(xx, VY - 1, LZA + 20, SEA)
    BM.bolt_rails(W, 32, 383, VY - 1, LZA + 4, LZA + 15, station_west=True, loop_east=False)
    WARD_TESTS.append(dict(strip="W", name="bolt line station", kind="bolt_station", x0=32, y=VY, z=[LZA + 4, LZA + 15]))


def build_strip(strip, rng, specs, extra):
    px, pz, sx, sz = STRIPS[strip]
    W = World(sx, SY, sz)
    C.SHELLS.clear(); C.GATES.clear(); C.PARTS.clear(); C.NO_DECOR.clear()
    ground(W)
    extra(W)
    haven_sh = []
    for sp in specs:
        (label, kind, x0, z0, x1, z1, floors, fh, face, tier) = sp
        lines = [label.upper()[:15], kind.title(), tier + " tier", "ward " + strip]
        building(W, strip, label, kind, x0, z0, x1, z1, floors, fh, face, tier, lines)
        if kind == "center":
            from . import build_redcenter as RC
            HV.HAVEN_TESTS.clear()
            HV.haven(W, x0 + 6, z0 + 6, x1 - 6, z1 - 6)
            sign(W, x0 + 6, GY, z1 - 4, ["REDSTONE CENTER", "floor 1: Haven", "floor 2: builds", "no command blocks"], rot=0, color="red")
            WARD_TESTS.append(dict(strip=strip, name=label + " haven", kind="haven", tests=json.loads(json.dumps(HV.HAVEN_TESTS, default=list))))
            RC.RC_TESTS.clear()
            RC.redcenter(W, x0 + 4, z0 + 4, x1 - 4, z1 - 4, GY + fh, GY + floors * fh)
            WARD_TESTS.append(dict(strip=strip, name=label + " builds", kind="redcenter", tests=json.loads(json.dumps(RC.RC_TESTS, default=list))))
            haven_sh.append((x0, z0))
        elif kind == "haven":
            HV.HAVEN_TESTS.clear()
            HV.haven(W, x0 + 6, z0 + 6, x1 - 6, z1 - 6)
            sign(W, x0 + 6, GY, z1 - 4 if face == "south" else z0 + 4, ["REDSTONE WORKS", "ward " + strip, "real redstone", "no command blocks"], rot=0, color="red")
            WARD_TESTS.append(dict(strip=strip, name=label + " haven", kind="haven", tests=json.loads(json.dumps(HV.HAVEN_TESTS, default=list))))
            haven_sh.append((x0, z0))
    if strip == "W":
        bolt_viaduct_west(W)
    from . import build_wardunder as WU
    links = list(range(507, sx - 40, 250)) if strip in "NS" else []
    WARD_UNDER[strip] = WU.strip_underground(W, strip, specs, links, (684, 854))
    for (cx_, cz_) in PENDING_CMD:
        cmdblock(W, cx_, GROUND_TOP, cz_, "function riftbrek:zone/visible_wide")
    PENDING_CMD.clear()
    for (label_, strip_, lx_, lz_, y_, fl_) in PENDING_LINES:
        t = lamp_line(W, lx_, lz_, y_, n=12, name="%s L1" % label_[:10])
        WARD_TESTS.append(dict(strip=strip_, name=f"{label_} lamp line floor 1", **t))
    PENDING_LINES.clear()
    n, big, lab = WU.connectivity(W, strip)
    WARD_UNDER[strip]["components"] = n; WARD_UNDER[strip]["largest"] = big
    print("   underground", strip, "components", n, "largest", big, flush=True)
    # furnishing: perimeter + per-room; the haven halls keep their ground floor empty
    shells = [s for s in C.SHELLS if not ((s["x0"], s["z0"]) in haven_sh)]
    keep = C.SHELLS[:]
    C.SHELLS[:] = shells
    F2.furnish_shells(W, [])
    for s in shells:
        furnish_rooms(W, s, STYLE_BY_POS.get((strip, s["x0"], s["z0"]), "office"))
    C.SHELLS[:] = keep
    from . import decorate as DEC
    DEC.decorate_parts(W, rng)
    # trees on the lawns
    for _ in range(sx // 14):
        x = int(rng.integers(8, sx - 8)); z = int(rng.integers(8, sz - 8))
        if W.a[GY:GY + 12, z - 3:z + 4, x - 3:x + 4].any() or W.a[GROUND_TOP, z, x] != W.B("minecraft:grass_block[snowy=false]"):
            continue
        tree(W, x, z, "cherry" if rng.random() < 0.5 else "oak", 6 + int(rng.integers(0, 3)))
    return W


STYLE_BY_POS = {}
WARD_UNDER = {}
PENDING_CMD = []
PENDING_LINES = []


def specs_for(strip):
    out = []
    kinds_n = [("Grand Barracks", "barracks", 4, 11, "member"), ("Academy of Arms", "academy", 5, 11, "public"), ("Armory and Forge", "armory", 3, 12, "leader"),
               ("Infirmary and Alchemy", "infirmary", 4, 11, "public"), ("REDSTONE CENTER", "center", 3, 12, "public"), ("Courts and Records", "courts", 5, 11, "member"),
               ("Embassy and Guest Hall", "guest", 4, 11, "public"), ("Mess Hall and Kitchens", "mess", 3, 11, "public"), ("Great Workshops", "workshop", 4, 11, "member")]
    kinds_s = [("Market Hall", "market", 3, 11, "public"), ("Granary and Stores", "granary", 4, 11, "member"), ("Stables", "stables", 2, 12, "public"),
               ("Redstone Works S", "haven", 2, 12, "public"), ("Observatory", "observatory", 6, 11, "member"), ("Guild Hall", "courts", 4, 11, "public"),
               ("Dormitories", "dorm", 5, 11, "member"), ("Artisan Halls", "workshop", 3, 12, "public"), ("Library Annex", "archive", 5, 11, "public")]
    if strip in "NS":
        kinds = kinds_n if strip == "N" else kinds_s
        for k, (nm, kd, fl, fh, tier) in enumerate(kinds):
            x0 = 40 + k * 250
            wide = 200 if kd != "haven" else 170
            if strip == "N":
                out.append((nm, kd, x0, 150, x0 + wide, 290, fl, fh, "south", tier))
                out.append((nm + " Rear", "dorm" if kd != "haven" else "workshop", x0 + 20, 20, x0 + 20 + 140, 110, 3 + k % 3, 11, "north", "member"))
            else:
                out.append((nm, kd, x0, 100, x0 + wide, 240, fl, fh, "north", tier))
                out.append((nm + " Rear", "guest" if kd != "haven" else "workshop", x0 + 20, 280, x0 + 20 + 140, 366, 3 + k % 3, 11, "south", "public"))
    else:
        names = [("Redstone Works W", "haven", 2, 12), ("Hall of Trades", "market", 4, 11), ("Garrison West", "barracks", 5, 11), ("Scholars Row", "academy", 4, 11),
                 ("Veteran Lodge", "guest", 3, 11), ("Engineers Guild", "workshop", 4, 12)]
        for k, (nm, kd, fl, fh) in enumerate(names):
            z0 = 20 + k * 120
            out.append((nm, kd, 30, z0, 170 if kd != "haven" else 175, z0 + 100, fl, fh, "south", "public" if kd != "barracks" else "member"))
            out.append((nm + " Annex", "dorm", 215, z0, 360, z0 + 100, 3, 11, "south", "member"))
    for sp in out:
        STYLE_BY_POS[(strip, sp[2], sp[3])] = STYLE.get(sp[1], "office")
    return out


def extras(strip):
    def f(W):
        if strip in "NS":
            if strip == "N":
                road(W, 0, 296, W.sx - 1, 314); road(W, 0, 4, W.sx - 1, 12)
            else:
                road(W, 0, 70, W.sx - 1, 88); road(W, 0, 372, W.sx - 1, 380)
            # connector avenues to the HQ gates
            for x in range(40 + 250 + 210, W.sx - 40, 250):
                road(W, x, 0, x + 14, W.sz - 1)
            for (ze, sd) in (((296, -1), (314, 1)) if strip == "N" else ((70, -1), (88, 1))):
                street_furniture(W, ze, sd)
        else:
            road(W, 4, 0, 14, W.sz - 1); road(W, 190, 0, 200, W.sz - 1); road(W, 372, 0, 380, W.sz - 1)
        # glow plaza discs + fountains between buildings
        if strip in "NS":
            for cx in range(165, W.sx - 100, 250):
                zc = 335 if strip == "N" else 40
                disk(W, cx, zc, 9, GROUND_TOP, GROUND_TOP, "minecraft:polished_blackstone")
                disk(W, cx, zc, 4, GROUND_TOP, GROUND_TOP, "minecraft:water")
    return f


def save(strips, path):
    sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
    import annex
    regions = {}; total = 0
    for k, W in strips.items():
        px, pz, sx, sz = STRIPS[k]
        prep = dict(arr=W.a, pal=W.palette, size=(sx, SY, sz), tiles=W.tiles, ents=[])
        regions["Ward " + k] = annex.pack_region(prep, position=(px, 0, pz))
        total += int(np.count_nonzero(W.a))
    annex.write_litematic(path, regions, "RIFTBREK Outer Ward", "RIFTBREK Design",
                          "Outer ward: 3 strips around the HQ (2304 x 1536 total with the HQ). Origin world X 7808 Z 7808.", total=total, enclosing=(2304, SY, 1536))
    return total


def main(out_dir, only=None):
    rng = np.random.default_rng(77)
    os.makedirs(out_dir, exist_ok=True)
    path = os.path.join(out_dir, "RIFTBREK_OUTER_WARD.litematic")
    import annex
    sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
    regions = {}; total = 0
    for k in (only or "NSW"):
        sp = specs_for(k)
        W = build_strip(k, rng, sp, extras(k))
        px, pz, sx, sz = STRIPS[k]
        prep = dict(arr=W.a, pal=W.palette, size=(sx, SY, sz), tiles=W.tiles, ents=[])
        regions["Ward " + k] = annex.pack_region(prep, position=(px, 0, pz))
        total += int(np.count_nonzero(W.a))
        print("  strip", k, "buildings", len(sp), "tiles", len(W.tiles), flush=True)
        del W, prep
    annex.write_litematic(path, regions, "RIFTBREK Outer Ward", "RIFTBREK Design",
                          "Outer ward: 3 strips around the HQ (2304 x 1536 total with the HQ). Origin world X 7808 Z 7808.", total=total, enclosing=(2304, SY, 1536))
    json.dump(dict(origin=[WX, WZ], strips=STRIPS, tests=WARD_TESTS, buildings=BUILDINGS, under=WARD_UNDER, gates=len(C.GATES)), open(os.path.join(out_dir, "ward_info.json"), "w"), default=list)
    print("saved", path, "buildings", len(BUILDINGS), "tests", len(WARD_TESTS))
    return path


if __name__ == "__main__":
    main(sys.argv[1] if len(sys.argv) > 1 else "dist", sys.argv[2] if len(sys.argv) > 2 else None)
