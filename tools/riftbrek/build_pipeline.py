"""THE PIPELINE - one continuous barrier wall around everything (the RIFTBREK HQ base and Ithaca City).

Local frame: local (0,0) = world (PX, PZ) = (7936, 7936); y as in every other build (world y = local y - 64).
The ring is LX x LZ blocks (outer faces), 16 thick, 71 high above the ground line, with
  * a walkway on top with a powered-rail minecart line running all the way round ("the Pipeline" itself)
  * a pipe-shaped band along the outer face (polished basalt with glowing flanges and lamps)
  * four gatehouses (outer public checkpoint + inner member checkpoint) at the middle of each side, each with a ladder up to the walkway
  * 74 towers (every 192 / 144 blocks) and 4 corner towers; towers are hollow and the rail line runs through them
  * "THE PIPELINE" spelled out in glowing blocks above every gate
It is built as four strips (N, S, W, E) so no giant array is needed; the strips never share a chunk.
Sized so that none of its region files collides with the HQ files (r.16-19.16-17) or Ithaca's (r.24-25.16-17).
"""
import numpy as np
from .build_common import *
from . import build_common as C
from .world import World
from .build_ithaca import tower_round, gate_x, mixed

PX = PZ = 7936
LX, LZ, T = 5392, 1296, 16
SY = 384
TOP = GY + 71                      # top of the solid wall / deck level
PBAS = "minecraft:polished_basalt[axis=y]"
BRK_MIX = [BRK, BRK, DB, BRK2, "minecraft:blackstone"]
# strip regions: (position x, position z, size x, size z)
REG = {"N": (0, 0, LX, T), "S": (0, LZ - T, LX, T), "W": (0, T, T, LZ - 2 * T), "E": (LX - T, T, T, LZ - 2 * T)}
FONT = {"T": ["11111", "00100", "00100", "00100", "00100"], "H": ["10001", "10001", "11111", "10001", "10001"],
        "E": ["11111", "10000", "11110", "10000", "11111"], "P": ["11110", "10001", "11110", "10000", "10000"],
        "I": ["11111", "00100", "00100", "00100", "11111"], "L": ["10000", "10000", "10000", "10000", "11111"],
        "N": ["10001", "11001", "10101", "10011", "10001"], " ": ["00000"] * 5}
TEXT = "THE PIPELINE"
PROBES = []


def configure(lx, lz):
    """set the ring size (outer faces); everything below reads the module globals at call time"""
    global LX, LZ, REG
    LX, LZ = lx, lz
    REG = {"N": (0, 0, LX, T), "S": (0, LZ - T, LX, T), "W": (0, T, T, LZ - 2 * T), "E": (LX - T, T, T, LZ - 2 * T)}


def body(length, rng):
    """canonical strip: x = along the wall (0..length-1), z = d = distance from the OUTER face (0..15)"""
    W = World(length, SY, T)
    W.fill(0, 0, 0, length - 1, GY - 1, T - 1, "minecraft:deepslate")
    full = np.ones((T, length), dtype=bool)
    mixed(W, GY, TOP - 1, full, BRK_MIX, rng)
    W.fill(0, TOP, 3, length - 1, TOP, 12, DT)                                 # walkway deck
    W.fill(0, TOP, 0, length - 1, TOP, 2, BRK); W.fill(0, TOP, 13, length - 1, TOP, 15, BRK)
    # parapets: outer (crenellated, 3 thick, 3 high) and inner (1 high)
    W.fill(0, TOP + 1, 0, length - 1, TOP + 2, 2, BRK)
    xs = np.arange(length)
    cren = (xs // 2) % 2 == 0
    for x in xs[cren]:
        W.fill(int(x), TOP + 3, 0, int(x), TOP + 3, 2, BRK)
    W.fill(0, TOP + 1, 13, length - 1, TOP + 1, 15, BRK)
    # the pipe: a band on the outer face with flanges and lamps
    W.fill(0, GY + 26, 0, length - 1, GY + 32, 1, PBAS)
    for x in range(0, length, 24):
        W.fill(x, GY + 25, 0, min(x + 1, length - 1), GY + 33, 1, GLOW)
    for x in range(12, length, 24):
        W.set(x, GY + 29, 0, SEA)
    # glowing strips + purple band
    for x in range(8, length, 16):
        W.fill(x, GY + 3, 0, x, GY + 24, 0, GLOW); W.fill(x, GY + 34, 0, x, GY + 60, 0, GLOW)
    W.fill(0, TOP - 6, 0, length - 1, TOP - 4, 0, PU)
    return W


def from_canon(canon, side):
    """region World for one side from the canonical strip (cuboid material only - nothing directional)"""
    a = canon.a
    if side == "N":
        arr = a
    elif side == "S":
        arr = a[:, ::-1, :]
    elif side == "W":
        arr = a.transpose(0, 2, 1)
    else:
        arr = a[:, ::-1, :].transpose(0, 2, 1)
    px, pz, sx, sz = REG[side]
    W = World(sx, SY, sz)
    W.palette = list(canon.palette); W.pidx = dict(canon.pidx)
    W.a = np.ascontiguousarray(arr).astype(np.uint16)
    assert W.a.shape == (SY, sz, sx), (side, W.a.shape)
    return W


class Ring:
    def __init__(self, rng):
        cn = body(LX, rng)
        cw = body(LZ - 2 * T, rng)
        self.W = {"N": from_canon(cn, "N"), "S": from_canon(cn, "S"), "W": from_canon(cw, "W"), "E": from_canon(cw, "E")}
        del cn, cw

    def side_of(self, gx, gz):
        for k, (px, pz, sx, sz) in REG.items():
            if px <= gx < px + sx and pz <= gz < pz + sz:
                return k
        raise KeyError((gx, gz))

    def set(self, gx, y, gz, b):
        k = self.side_of(gx, gz); px, pz, _, _ = REG[k]
        self.W[k].set(gx - px, y, gz - pz, b)

    def tile(self, gx, y, gz, d):
        k = self.side_of(gx, gz); px, pz, _, _ = REG[k]
        self.W[k].tile(gx - px, y, gz - pz, d)


def letters(Wd, side, cx):
    """THE PIPELINE in glowing blocks on the outer face above the gate (readable from outside)"""
    cells = []
    x = 0
    for ch in TEXT:
        g = FONT[ch]
        for r in range(5):
            for c in range(5):
                if g[r][c] == "1":
                    cells.append((x + c, r))
        x += 6
    width = x * 2
    y0 = GY + 36
    for (c, r) in cells:
        for dx in (0, 1):
            for dy in (0, 1):
                pos = c * 2 + dx - width // 2
                y = y0 + (4 - r) * 2 + dy
                if side == "N":
                    Wd.set(cx - pos, y, 0, GLOW)                 # viewer looks south: reading direction = -x
                elif side == "S":
                    Wd.set(cx + pos, y, T - 1, GLOW)
                elif side == "W":
                    Wd.set(0, y, cx + pos, GLOW)
                else:
                    Wd.set(T - 1, y, cx - pos, GLOW)


def gate_ns(W, side, x0):
    """passage along z through a N/S strip: corridor, two gate planes (outer public, inner member), ladder up to the walkway"""
    outer, inner = (3, 12) if side == "N" else (12, 3)
    for z in range(0, T):
        W.fill(x0 - 1, GY, z, x0 + 12, GY + 13, z, AIR)
    for zp, tier in ((outer, "public"), (inner, "member")):
        W.fill(x0 - 1, GY + 4, zp, x0 + 12, GY + 13, zp, BRK)
        gate(W, tier, x0, GY, zp, 12, facing="north", frame=BRK)
    W.fill(x0 - 2, GY, 0, x0 - 2, GY + 14, T - 1, BRK); W.fill(x0 + 13, GY, 0, x0 + 13, GY + 14, T - 1, BRK)
    # ladder column in the wall beside the corridor (reached from between the planes), up to the deck
    lz = 7 if side == "N" else 8
    W.fill(x0 - 4, GY, lz, x0 - 4, TOP, lz, AIR)
    ladder_shaft(W, x0 - 4, lz, GY, TOP, "east"); W.fill(x0 - 5, GY, lz, x0 - 5, TOP, lz, BRK)
    W.fill(x0 - 3, GY, lz, x0 - 2, GY + 2, lz, AIR)
    W.set(x0 - 1, GY, lz, AIR)
    W.set(x0 - 1, GY + 1, lz, AIR)
    zmid = 7 if side == "N" else 8
    sign(W, x0 + 5, GY, zmid, ["THE PIPELINE", "%s GATE" % ("NORTH" if side == "N" else "SOUTH"), "1: visitors  2: members", "/trigger rb_req set 1 = ID"], rot=0 if side == "N" else 8, color="purple")
    W.set(x0 + 5, GY - 1, zmid, DT)


def gate_we(W, side, z0):
    outer, inner = (3, 12) if side == "W" else (12, 3)
    for x in range(0, T):
        W.fill(x, GY, z0 - 1, x, GY + 13, z0 + 12, AIR)
    face = "east" if side == "W" else "west"
    for xp, tier in ((outer, "public"), (inner, "member")):
        W.fill(xp, GY + 4, z0 - 1, xp, GY + 13, z0 + 12, BRK)
        gate_x(W, tier, xp, GY, z0, 12, facing=face, frame=BRK)
    W.fill(0, GY, z0 - 2, T - 1, GY + 14, z0 - 2, BRK); W.fill(0, GY, z0 + 13, T - 1, GY + 14, z0 + 13, BRK)
    lx = 7 if side == "W" else 8
    W.fill(lx, GY, z0 - 4, lx, TOP, z0 - 4, AIR)
    ladder_shaft(W, lx, z0 - 4, GY, TOP, "south"); W.fill(lx, GY, z0 - 5, lx, TOP, z0 - 5, BRK)
    W.fill(lx, GY, z0 - 3, lx, GY + 2, z0 - 2, AIR)
    W.set(lx, GY, z0 - 1, AIR); W.set(lx, GY + 1, z0 - 1, AIR)
    xmid = 7 if side == "W" else 8
    sign(W, xmid, GY, z0 + 5, ["THE PIPELINE", "%s GATE" % ("WEST" if side == "W" else "EAST"), "1: visitors  2: members", "/trigger rb_req set 1 = ID"], rot=4 if side == "W" else 12, color="purple")
    W.set(xmid, GY - 1, z0 + 5, DT)


def towers(R):
    gate_x_mid, gate_z_mid = LX // 2, (LZ // 2)
    # N / S: rail row d=8 (N: z=8, S: local z=7); tower centre one row off the rail so the ladder never meets it
    for side in ("N", "S"):
        cz = 7 if side == "N" else 8
        xs = [8, LX - 9] + [x for x in range(96, LX - 96, 192) if abs(x - gate_x_mid) > 45]
        for x in xs:
            tower_round(R.W[side], x, cz, 7, 100, 16)
            r0, r1 = (8, 9) if side == "N" else (6, 7)
            R.W[side].fill(x - 8, TOP + 1, r0, x + 8, TOP + 3, r1, AIR)             # tunnel the rail line through the tower
    for side in ("W", "E"):
        cx = 8
        zs = [x for x in range(150, LZ - 150, 144) if abs(x - gate_z_mid) > 45]
        for gz in zs:
            lz = gz - T
            tower_round(R.W[side], cx, lz, 7, 100, 16)
            c0, c1 = (8, 9) if side == "W" else (6, 7)
            R.W[side].fill(c0, TOP + 1, lz - 8, c1, TOP + 3, lz + 8, AIR)


def rails(R):
    """the Pipeline: powered rails all the way round the top, redstone block under every third rail"""
    n = 0
    def cell(gx, gz, shape, powered):
        nonlocal n
        k = R.side_of(gx, gz); px, pz, _, _ = REG[k]
        W = R.W[k]
        lx, lz = gx - px, gz - pz
        if powered:
            W.set(lx, TOP, lz, "minecraft:redstone_block")
            W.set(lx, TOP + 1, lz, f"minecraft:powered_rail[powered=true,shape={shape},waterlogged=false]")
        else:
            W.set(lx, TOP + 1, lz, f"minecraft:rail[shape={shape},waterlogged=false]")
        n += 1
    ax, bx, az, bz = 8, LX - 9, 8, LZ - 9
    for x in range(ax + 1, bx):
        cell(x, az, "east_west", x % 3 == 0); cell(x, bz, "east_west", x % 3 == 0)
    for z in range(az + 1, bz):
        cell(ax, z, "north_south", z % 3 == 0); cell(bx, z, "north_south", z % 3 == 0)
    cell(ax, az, "south_east", False); cell(bx, az, "south_west", False)
    cell(ax, bz, "north_east", False); cell(bx, bz, "north_west", False)
    return n


def lights(R):
    """lanterns on posts along the walkway edge (inner parapet) every 16 blocks"""
    for x in range(40, LX - 40, 16):
        for gz in (13, LZ - 14):
            R.set(x, TOP + 2, gz, "minecraft:lantern[hanging=false]")
    for z in range(60, LZ - 60, 16):
        for gx in (13, LX - 14):
            R.set(gx, TOP + 2, z, "minecraft:lantern[hanging=false]")


def build():
    rng = np.random.default_rng(1936)
    log = lambda m: print("  %s" % m, flush=True)
    C.GATES.clear()
    R = Ring(rng); log("wall strips (pipe band, strips, parapets, deck)")
    xg = LX // 2 - 6
    zg = LZ // 2 - 6 - T
    gate_ns(R.W["N"], "N", xg); gate_ns(R.W["S"], "S", xg)
    gate_we(R.W["W"], "W", zg); gate_we(R.W["E"], "E", zg)
    log("4 gatehouses")
    letters(R.W["N"], "N", LX // 2); letters(R.W["S"], "S", LX // 2)
    letters(R.W["W"], "W", (LZ - 2 * T) // 2); letters(R.W["E"], "E", (LZ - 2 * T) // 2)
    log("lettering")
    towers(R); log("towers")
    nr = rails(R); log("rail line: %d rails" % nr)
    lights(R)
    # probes for /rift verify pipeline (world = local + origin, y - 64)
    def blk(gx, y, gz):
        k = R.side_of(gx, gz); px, pz, _, _ = REG[k]
        W = R.W[k]; return W.palette[W.a[y, gz - pz, gx - px]][0]
    pts = [("north gate outer checkpoint", xg, GY + 3, 3), ("south gate outer checkpoint", xg, GY + 3, LZ - T + 12),
           ("west gate outer checkpoint", 3, GY + 3, zg + T), ("east gate outer checkpoint", LX - T + 12, GY + 3, zg + T),
           ("rail corner north-west", 8, TOP + 1, 8), ("powered rail on the north wall", 30, TOP + 1, 8),
           ("north tower spire lamp", 8, GY + 100 + 2 + 16, 7), ("south-east tower spire lamp", LX - 9, GY + 100 + 2 + 16, LZ - 9 + 1 - 1)]
    out = []
    for (label, gx, y, gz) in pts:
        b = blk(gx, y, gz)
        if b == "minecraft:air":
            continue
        out.append(dict(label=label, x=gx, y=y - 64, z=gz, block=b))
    PROBES[:] = out
    return R


def save(R, path):
    from . import nbt
    import sys, os
    sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
    import annex
    regions, total = {}, 0
    for k, W in R.W.items():
        px, pz, sx, sz = REG[k]
        prep = dict(arr=W.a, pal=W.palette, size=(sx, SY, sz), tiles=W.tiles, ents=[])
        regions["Pipeline " + {"N": "North", "S": "South", "W": "West", "E": "East"}[k]] = annex.pack_region(prep, position=(px, 0, pz))
        total += int(np.count_nonzero(W.a))
    annex.write_litematic(path, regions, "The Pipeline", "RIFTBREK Design",
                          "5392x1296 ring wall (16 thick, 71 high) around the RIFTBREK HQ and Ithaca City, with a minecart rail line on top, 4 gatehouses and 78 towers. Origin: world X 7936, Z 7936.",
                          total=total, enclosing=(LX, SY, LZ))
    return total


def main(out_dir):
    import os, json
    R = build()
    os.makedirs(out_dir, exist_ok=True)
    path = os.path.join(out_dir, "RIFTBREK_THE_PIPELINE.litematic")
    total = save(R, path)
    json.dump(PROBES, open(os.path.join(out_dir, "pipeline_probes.json"), "w"), indent=1)
    print("saved", path, "solid", total, "gates", len(C.GATES))
    return R, path


if __name__ == "__main__":
    import sys
    main(sys.argv[1] if len(sys.argv) > 1 else "dist")
