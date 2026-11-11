"""Surface architecture: foundation, perimeter wall, towers, gatehouse, plaza, roads, citadel."""
import numpy as np
from .build_common import *

WALL = 16
CX = 383          # x of the central axis (blocks 372..395 form the 24-wide spine)


def terrain(W):
    W.fill(0, 0, 0, W.sx - 1, 94, W.sz - 1, "minecraft:deepslate")
    W.fill(0, 91, 0, W.sx - 1, 94, W.sz - 1, "minecraft:stone")
    W.fill(0, 95, 0, W.sx - 1, 95, W.sz - 1, "minecraft:grass_block[snowy=false]")
    # dark plinth edge so the wall sits on a visible foundation
    W.fill(0, 91, 0, W.sx - 1, 95, 3, "minecraft:blackstone")
    W.fill(0, 91, W.sz - 4, W.sx - 1, 95, W.sz - 1, "minecraft:blackstone")
    W.fill(0, 91, 0, 3, 95, W.sz - 1, "minecraft:blackstone")
    W.fill(W.sx - 4, 91, 0, W.sx - 1, 95, W.sz - 1, "minecraft:blackstone")


def tower(W, x0, z0, x1, z1, floors, fh, spire_r, spire_h, thick=3, glow=True):
    top = shell(W, x0, z0, x1, z1, floors, fh, thick=thick)
    for f in range(floors - 1):
        windows_ring(W, x0, z0, x1, z1, GY + f * fh + 4, h=4, step=6, wd=2)
    lattice_lights(W, x0, z0, x1, z1, GY + fh - 1, step=8, off=3)
    for f in range(1, floors):
        lattice_lights(W, x0, z0, x1, z1, GY + f * fh + fh - 1, step=8, off=3)
    # ladder up the inside corner, holes in every slab
    lx, lz = x0 + thick, z0 + thick
    ladder_shaft(W, lx, lz, GY, top - 1, "east" if lx > x0 else "west")
    # crown ring + merlons
    W.fill(x0 - 1, top + 1, z0 - 1, x1 + 1, top + 1, z1 + 1, DT)
    merlons(W, x0 - 1, z0 - 1, x1 + 1, z1 + 1, top + 2, BRK)
    if glow:
        for (ex, ez) in ((x0, z0), (x1, z0), (x0, z1), (x1, z1)):
            W.fill(ex, GY + 3, ez, ex, top, ez, GLOW)
    cx, cz = (x0 + x1) // 2, (z0 + z1) // 2
    spire(W, cx, cz, spire_r, top + 2, spire_h)
    return top


def perimeter_wall(W):
    S = W.sx
    top = GY + 95
    W.fill(0, GY, 0, S - 1, GY + 93, WALL - 1, BRK)                      # north
    W.fill(0, GY, S - WALL, S - 1, GY + 93, S - 1, BRK)                  # south
    W.fill(0, GY, 0, WALL - 1, GY + 93, S - 1, BRK)                      # west
    W.fill(S - WALL, GY, 0, S - 1, GY + 93, S - 1, BRK)                  # east
    # carve walkways (deck at GY+91)
    W.fill(WALL, GY + 92, 4, S - WALL - 1, GY + 95, 11, AIR)
    W.fill(WALL, GY + 92, S - 12, S - WALL - 1, GY + 95, S - 5, AIR)
    W.fill(4, GY + 92, WALL, 11, GY + 95, S - WALL - 1, AIR)
    W.fill(S - 12, GY + 92, WALL, S - 5, GY + 95, S - WALL - 1, AIR)
    # crenellated outer + lower inner parapet
    for x in range(0, S, 4):
        W.fill(x, GY + 94, 0, x + 1, GY + 95, 3, BRK); W.fill(x, GY + 94, S - 4, x + 1, GY + 95, S - 1, BRK)
        W.fill(0, GY + 94, x, 3, GY + 95, x + 1, BRK); W.fill(S - 4, GY + 94, x, S - 1, GY + 95, x + 1, BRK)
    # glow strips on the faces
    for t in range(40, S - 40, 16):
        W.fill(t, GY + 3, 0, t + 1, GY + 90, 0, GLOW); W.fill(t, GY + 3, S - 1, t + 1, GY + 90, S - 1, GLOW)
        W.fill(0, GY + 3, t, 0, GY + 90, t + 1, GLOW); W.fill(S - 1, GY + 3, t, S - 1, GY + 90, t + 1, GLOW)
    # horizontal trim bands
    for y in (GY + 30, GY + 60, GY + 90):
        W.fill(0, y, 0, S - 1, y, 0, DT); W.fill(0, y, S - 1, S - 1, y, S - 1, DT)
        W.fill(0, y, 0, 0, y, S - 1, DT); W.fill(S - 1, y, 0, S - 1, y, S - 1, DT)
    # patrol tunnels inside the wall (ground + upper gallery), lit
    for ty in (GY, GY + 44):
        for (x0, z0, x1, z1) in ((40, 6, S - 41, 9), (40, S - 10, S - 41, S - 7), (6, 40, 9, S - 41), (S - 10, 40, S - 7, S - 41)):
            W.fill(x0, ty, z0, x1, ty + 4, z1, AIR)
            if x1 - x0 > z1 - z0:
                for xx in range(x0 + 4, x1, 8):
                    W.set(xx, ty + 4, (z0 + z1) // 2, SEA)
            else:
                for zz in range(z0 + 4, z1, 8):
                    W.set((x0 + x1) // 2, ty + 4, zz, SEA)
    # banners on the inner faces
    for t in range(80, S - 80, 48):
        for yy in (GY + 22, GY + 62):
            W.set(t, yy, WALL, "minecraft:purple_wall_banner[facing=south]")
            W.set(t, yy, S - WALL - 1, "minecraft:purple_wall_banner[facing=north]")
            W.set(WALL, yy, t, "minecraft:purple_wall_banner[facing=east]")
            W.set(S - WALL - 1, yy, t, "minecraft:purple_wall_banner[facing=west]")


def wall_towers(W):
    S = W.sx
    # corner towers 40x40 (spire tip must stay <= local y 223)
    for (x0, z0) in ((0, 0), (S - 40, 0), (0, S - 40), (S - 40, S - 40)):
        tower(W, x0, z0, x0 + 39, z0 + 39, floors=8, fh=14, spire_r=14, spire_h=12)
    # mid-wall towers 24x24
    for c in (192, S - 193):
        tower(W, c - 12, 0, c + 11, 23, floors=7, fh=14, spire_r=10, spire_h=12)
        tower(W, c - 12, S - 24, c + 11, S - 1, floors=7, fh=14, spire_r=10, spire_h=12)
        tower(W, 0, c - 12, 23, c + 11, floors=7, fh=14, spire_r=10, spire_h=12)
        tower(W, S - 24, c - 12, S - 1, c + 11, floors=7, fh=14, spire_r=10, spire_h=12)


def gatehouse(W):
    S = W.sx
    # twin gate towers flank a 24-wide passage (x 372..395)
    tower(W, 344, S - 28, 371, S - 1, floors=8, fh=14, spire_r=12, spire_h=14)
    tower(W, 396, S - 28, 423, S - 1, floors=8, fh=14, spire_r=12, spire_h=14)
    # arch beam spanning the passage
    W.fill(372, GY + 34, S - WALL, 395, GY + 40, S - 1, DT)
    W.fill(372, GY + 36, S - WALL, 395, GY + 36, S - 1, GLOW)
    # carve the passage through the wall
    W.fill(372, GY, S - WALL, 395, GY + 33, S - 1, AIR)
    # inner gate plane (z = 760): 12 command-block doors, portcullis bars above
    zp = S - 8
    W.fill(372, GY, zp, 395, GY + 33, zp, BRK)
    W.fill(372, GY + 4, zp, 395, GY + 33, zp, IB)
    W.fill(372, GY + 4, zp, 377, GY + 33, zp, BRK); W.fill(390, GY + 4, zp, 395, GY + 33, zp, BRK)
    W.fill(378, GY + 4, zp, 389, GY + 4, zp, BRK)
    gate(W, "public", 378, GY, zp, 12, facing="north")
    # lanterns + signs
    for x in (373, 394):
        W.fill(x, GY, S - 14, x, GY + 8, S - 14, BRK); W.set(x, GY + 9, S - 14, SEA)
    sign(W, 383, GY, S - 12, ["RIFTBREK", "VANGUARD HQ", "CHECKPOINT", "ID REQUIRED"], rot=0)
    sign(W, 380, GY, S - 12, ["PUBLIC TIER", "visitor+member"], rot=0)


PLAZA_C = (383, 480)


def plaza(W):
    cx, cz = PLAZA_C
    R = 80
    xs = np.arange(cx - R, cx + R + 1); zs = np.arange(cz - R, cz + R + 1)
    X, Z = np.meshgrid(xs, zs)
    dx, dz = X - cx, Z - cz
    octa = (np.abs(dx) <= R) & (np.abs(dz) <= R) & (np.abs(dx) + np.abs(dz) <= int(R * 1.42))
    d = np.sqrt(dx * dx + dz * dz)
    base = np.full(octa.shape, W.B(BRK), dtype=np.uint16)
    base[(d > 14) & (d <= 16)] = W.B(PU)
    base[(d > 34) & (d <= 35.5)] = W.B(PU)
    base[(d > 58) & (d <= 60)] = W.B(BL)
    base[(np.abs(dx) <= 1) | (np.abs(dz) <= 1)] = W.B(QZ)
    base[(np.abs(np.abs(dx) - np.abs(dz)) <= 1)] = W.B(DT)
    base[(d > 76)] = W.B(PB)
    sub = W.a[GROUND_TOP, zs[0]:zs[-1] + 1, xs[0]:xs[-1] + 1]
    sub[octa] = base[octa]
    # fountain basin + crystal
    disk(W, cx, cz, 13, GROUND_TOP, GROUND_TOP, DT)
    disk(W, cx, cz, 13, GY, GY + 1, DT, hollow=True)
    disk(W, cx, cz, 12, GROUND_TOP, GROUND_TOP, "minecraft:water[level=0]")
    disk(W, cx, cz, 4, GY, GY + 2, BRK)
    for t in range(26):
        r = max(0, 3 - t // 7)
        W.fill(cx - r, GY + 3 + t, cz - r, cx + r, GY + 3 + t, cz + r, AME if t % 5 else SEA)
    for t in range(26):
        r = max(0, 3 - t // 7)
        if r:
            for (ex, ez) in ((cx - r - 1, cz), (cx + r + 1, cz), (cx, cz - r - 1), (cx, cz + r + 1)):
                W.set(ex, GY + 3 + t, ez, PG)
    W.set(cx, GY + 29, cz, "minecraft:lightning_rod[facing=up,powered=false,waterlogged=false]")
    # lamp posts on the 60-ring
    for k in range(16):
        a = 2 * np.pi * k / 16
        x, z = int(round(cx + 62 * np.cos(a))), int(round(cz + 62 * np.sin(a)))
        W.fill(x, GY, z, x, GY + 6, z, BRK); W.set(x, GY + 7, z, SEA); W.fill(x - 1, GY + 7, z, x + 1, GY + 7, z, GLOW); W.fill(x, GY + 7, z - 1, x, GY + 7, z + 1, GLOW)
        W.set(x, GY + 7, z, SEA)
    # cherry trees on the 70-ring
    for k in range(12):
        a = 2 * np.pi * (k + 0.5) / 12
        tree(W, int(round(cx + 70 * np.cos(a))), int(round(cz + 70 * np.sin(a))), "cherry")
    sign(W, cx, GY, cz + 18, ["CENTRAL PLAZA", "Assembly", "Trade - Events"], rot=0)


def road(W, x0, z0, x1, z1, stripe_axis="x"):
    W.fill(x0, GROUND_TOP, z0, x1, GROUND_TOP, z1, PB)
    if stripe_axis == "x":
        zc = (z0 + z1) // 2
        W.fill(x0, GROUND_TOP, zc, x1, GROUND_TOP, zc + 1, PU)
        W.fill(x0, GROUND_TOP, z0, x1, GROUND_TOP, z0, QZ); W.fill(x0, GROUND_TOP, z1, x1, GROUND_TOP, z1, QZ)
    else:
        xc = (x0 + x1) // 2
        W.fill(xc, GROUND_TOP, z0, xc + 1, GROUND_TOP, z1, PU)
        W.fill(x0, GROUND_TOP, z0, x0, GROUND_TOP, z1, QZ); W.fill(x1, GROUND_TOP, z0, x1, GROUND_TOP, z1, QZ)


def roads(W):
    S = W.sx
    road(W, 372, 16, 395, S - 16, "z")                        # central spine (citadel plinth drawn over it)
    road(W, 16, 280, 287, 291, "x"); road(W, 480, 280, S - 17, 291, "x")      # R1
    road(W, 16, 434, 303, 445, "x"); road(W, 464, 434, S - 17, 445, "x")      # R2
    road(W, 16, 640, S - 17, 651, "x")                        # checkpoint cross road
    # feeder paths to the wing entrances
    for x in (127, 127):
        pass


def chunk_ban_square(W):
    """48x48 checkpoint pad. Command block 1 below the paving centre runs zone/chunkban."""
    x0, z0, x1, z1 = 360, 660, 407, 707
    for x in range(x0, x1 + 1):
        for z in range(z0, z1 + 1):
            chk = ((x - x0) // 4 + (z - z0) // 4) % 2
            W.set(x, GROUND_TOP, z, PB if chk else PU)
    W.fill(x0, GROUND_TOP, z0, x1, GROUND_TOP, z0, GLOW); W.fill(x0, GROUND_TOP, z1, x1, GROUND_TOP, z1, GLOW)
    W.fill(x0, GROUND_TOP, z0, x0, GROUND_TOP, z1, GLOW); W.fill(x1, GROUND_TOP, z0, x1, GROUND_TOP, z1, GLOW)
    for x in (x0, x1):
        for z in (z0, z1):
            W.fill(x, GY, z, x, GY + 6, z, OBS); W.set(x, GY + 7, z, SEA)
    cmdblock(W, 383, GROUND_TOP - 1, 683, "function riftbrek:zone/chunkban")
    cmdblock(W, 384, GROUND_TOP - 1, 683, "function riftbrek:zone/visible")
    sign(W, 383, GY, z0 - 2, ["CHUNK BAN SQUARE", "SIMULATED ZONE", "no chunk is touched", "unauthorised: ejected"], rot=8)
    # checkpoint lane pylons
    for x in range(352, 416, 8):
        if not (x0 <= x <= x1):
            W.fill(x, GY, 718, x, GY + 8, 718, BRK); W.set(x, GY + 9, 718, SEA)
    # blue/purple pylon banners
    for x in (340, 426):
        W.fill(x, GY, 700, x, GY + 14, 700, BRK); W.fill(x, GY + 10, 699, x, GY + 13, 699, "minecraft:purple_wall_banner[facing=north]")


def citadel(W):
    x0, z0, x1, z1 = 288, 176, 479, 367
    # plinth
    W.fill(x0 - 4, GROUND_TOP, z0 - 4, x1 + 4, GROUND_TOP, z1 + 4, PB)
    W.fill(x0 - 2, GROUND_TOP, z0 - 2, x1 + 2, GROUND_TOP, z1 + 2, BRK)
    top1 = shell(W, x0, z0, x1, z1, floors=4, fh=12, thick=4, roof=DT)           # GY .. GY+47
    for f in range(4):
        windows_ring(W, x0, z0, x1, z1, GY + f * 12 + 4, h=5, step=6, wd=3, skip=[(372, 395, z1), (372, 395, z0)])
        lattice_lights(W, x0 + 4, z0 + 4, x1 - 4, z1 - 4, GY + f * 12 + 11, step=8, off=4)
    # glowing buttress ribs
    for x in range(x0 + 8, x1, 16):
        W.fill(x, GY, z0 - 1, x + 1, top1, z0 - 1, BRK); W.fill(x, GY, z1 + 1, x + 1, top1, z1 + 1, BRK)
        W.fill(x, GY + 2, z0 - 1, x, top1, z0 - 1, GLOW); W.fill(x, GY + 2, z1 + 1, x, top1, z1 + 1, GLOW)
    for z in range(z0 + 8, z1, 16):
        W.fill(x0 - 1, GY, z, x0 - 1, top1, z + 1, BRK); W.fill(x1 + 1, GY, z, x1 + 1, top1, z + 1, BRK)
        W.fill(x0 - 1, GY + 2, z, x0 - 1, top1, z, GLOW); W.fill(x1 + 1, GY + 2, z, x1 + 1, top1, z, GLOW)
    merlons(W, x0, z0, x1, z1, top1 + 1, BRK, 2)
    # interior pillars in the grand hall (ground storey)
    for x in range(x0 + 16, x1 - 8, 16):
        for z in range(z0 + 16, z1 - 8, 16):
            if 372 - 12 < x < 395 + 12 and z > 300:
                continue
            W.fill(x, GY, z, x + 1, GY + 10, z + 1, BRK); W.fill(x, GY + 10, z, x + 1, GY + 10, z + 1, GLOW)
    # four corner towers
    for (tx, tz) in ((x0 - 2, z0 - 2), (x1 - 25, z0 - 2), (x0 - 2, z1 - 25), (x1 - 25, z1 - 25)):
        tower(W, tx, tz, tx + 27, tz + 27, floors=7, fh=12, spire_r=13, spire_h=14, thick=3)
    # keep (Royal Level) on top of the main hall
    kx0, kz0, kx1, kz1 = 336, 224, 431, 319
    ktop = shell(W, kx0, kz0, kx1, kz1, floors=4, fh=12, thick=3, y0=GY + 48, roof=DT)   # GY+48 .. GY+95
    for f in range(4):
        windows_ring(W, kx0, kz0, kx1, kz1, GY + 48 + f * 12 + 4, h=6, step=7, wd=3, glass=BG if f % 2 else PG)
        lattice_lights(W, kx0 + 3, kz0 + 3, kx1 - 3, kz1 - 3, GY + 48 + f * 12 + 11, step=8, off=4)
    merlons(W, kx0, kz0, kx1, kz1, ktop + 1, BRK, 2)
    for (ex, ez) in ((kx0, kz0), (kx1, kz0), (kx0, kz1), (kx1, kz1)):
        W.fill(ex - 1, GY + 48, ez - 1, ex + 1, ktop, ez + 1, BRK); W.fill(ex, GY + 48, ez, ex, ktop + 1, ez, GLOW)
        spire(W, ex, ez, 4, ktop + 2, 18)
    # central tower + great spire
    tx0, tz0, tx1, tz1 = 360, 248, 407, 295
    ttop = shell(W, tx0, tz0, tx1, tz1, floors=1, fh=12, thick=3, y0=GY + 96, roof=DT)   # GY+96 .. GY+107
    windows_ring(W, tx0, tz0, tx1, tz1, GY + 100, h=5, step=6, wd=3, glass=BG)
    spire(W, 383, 271, 23, ttop + 1, 20)
    # 8 intermediate spires on the main roof
    for (sx, sz) in ((x0 + 60, z0 + 8), (x1 - 60, z0 + 8), (x0 + 60, z1 - 8), (x1 - 60, z1 - 8), (x0 + 8, z0 + 60), (x0 + 8, z1 - 60), (x1 - 8, z0 + 60), (x1 - 8, z1 - 60)):
        W.fill(sx - 5, top1 + 1, sz - 5, sx + 5, top1 + 6, sz + 5, BRK); W.fill(sx - 4, top1 + 2, sz - 4, sx + 4, top1 + 5, sz + 4, AIR)
        spire(W, sx, sz, 6, top1 + 7, 24)
    # great banner on the keep facade
    for yy in range(GY + 60, GY + 84, 2):
        W.set(386, yy, kz1 + 1, "minecraft:purple_wall_banner[facing=south]"); W.set(387, yy, kz1 + 1, "minecraft:purple_wall_banner[facing=south]")
    # ---- main entrance (south, 24 wide) : member-tier command-block doors
    W.fill(372, GY, z1 - 3, 395, GY + 17, z1, AIR)
    W.fill(372, GY + 17, z1 - 3, 395, GY + 17, z1, GLOW)
    zp = z1 - 1
    W.fill(372, GY, zp, 395, GY + 16, zp, BRK)
    W.fill(378, GY + 4, zp, 389, GY + 16, zp, IB)
    gate(W, "member", 378, GY, zp, 12, facing="north")
    # ---- grand ramp to the Royal Level (6 wide, x 381..386): 48 steps, stand height at z is GY+1+(363-z) ----
    rx0, rx1 = 381, 386
    W.fill(rx0, GY, 316, rx1, GY + 46, 363, AIR)                 # corridor through the main hall
    W.fill(rx0, GY + 47, 316, rx1, GY + 50, 319, AIR)            # through the roof slab + the keep's south wall
    for i in range(48):
        z = 363 - i
        if i > 0:
            W.fill(rx0, GY, z, rx1, GY + i - 1, z, BRK)
        for x in range(rx0, rx1 + 1):
            W.set(x, GY + i, z, stairs("polished_blackstone_brick", "north"))
    W.fill(rx0 - 1, GY, 320, rx0 - 1, GY + 46, 363, BRK); W.fill(rx1 + 1, GY, 320, rx1 + 1, GY + 46, 363, BRK)
    # vestibule on top of the ramp (z 313..316) closed by the royal-tier gate at z=312
    W.fill(rx0 - 1, GY, 312, rx0 - 1, GY + 58, 319, BRK); W.fill(rx1 + 1, GY, 312, rx1 + 1, GY + 58, 319, BRK)
    W.fill(rx0 - 1, GY + 48, 312, rx1 + 1, GY + 58, 312, BRK)
    gate(W, "royal", rx0, GY + 48, 312, 6, facing="north")
    sign(W, 383, GY + 48, 314, ["ROYAL GATE", "royal tier only"], rot=8)
    # ---- throne room (Royal Level, first keep storey: GY+48 .. GY+58) ----
    ty = GY + 48
    W.fill(kx0 + 3, ty - 1, kz0 + 3, kx1 - 3, ty - 1, kz1 - 7, DT)
    W.fill(380, ty, kz0 + 3, 387, ty, 311, "minecraft:purple_carpet")                                    # aisle
    for x in range(kx0 + 8, kx1 - 6, 12):
        for z in (kz0 + 8, kz1 - 8):
            if 372 <= x <= 395 and z > 300:
                continue
            W.fill(x, ty, z, x + 1, ty + 9, z + 1, BRK); W.fill(x, ty + 9, z, x + 1, ty + 9, z + 1, GLOW)
    for z in range(kz0 + 16, 310, 14):
        for x in (kx0 + 8, kx1 - 9):
            W.fill(x, ty, z, x + 1, ty + 9, z + 1, BRK); W.fill(x, ty + 9, z, x + 1, ty + 9, z + 1, GLOW)
    for k in range(4):                                                         # dais
        W.fill(364 - k * 0, ty + k, kz0 + 3 + (3 - k) * 0, 403, ty + k, kz0 + 17 - k * 3, BRK if k % 2 == 0 else DT)
    W.fill(374, ty + 4, kz0 + 4, 393, ty + 4, kz0 + 9, "minecraft:purple_concrete")
    # throne
    W.fill(381, ty + 4, kz0 + 5, 386, ty + 5, kz0 + 8, BK)
    W.fill(381, ty + 4, kz0 + 5, 386, ty + 12, kz0 + 5, BK)
    W.fill(382, ty + 5, kz0 + 6, 385, ty + 5, kz0 + 8, "minecraft:purple_carpet")
    W.fill(383, ty + 13, kz0 + 5, 384, ty + 16, kz0 + 5, AME)
    W.fill(381, ty + 4, kz0 + 5, 381, ty + 14, kz0 + 5, GLOW); W.fill(386, ty + 4, kz0 + 5, 386, ty + 14, kz0 + 5, GLOW)
    W.set(380, ty + 5, kz0 + 8, stairs("polished_blackstone_brick", "east")); W.set(387, ty + 5, kz0 + 8, stairs("polished_blackstone_brick", "west"))
    for k in range(1, 13):
        W.set(kx0 + 3 + 7 * k + 5, ty + 6, kz0 + 3, "minecraft:purple_wall_banner[facing=south]")
    sign(W, 383, ty + 3, kz0 + 11, ["THRONE ROOM", "Royal Level", "King Echo", "(wetygo.wav)"], rot=0)
    # kit pad (Biggest Birds) + visible zone + lockdown siren, all in the grand hall
    pad(W, "birds", 340, GY, 330)
    cmdblock(W, 372, GROUND_TOP - 1, 340, "function riftbrek:zone/visible_wide")
    cmdblock(W, 400, GY + 20, 340, "function riftbrek:zone/lockdown_siren")
    W.set(400, GY + 21, 340, AIR); W.set(401, GY + 21, 340, "minecraft:redstone_lamp[lit=false]")
    sign(W, 374, GY, 360, ["ROYAL CITADEL", "Biggest Birds", "Throne - Command", "Royal Level"], rot=0)


def pad(W, key, x, y, z):
    """kit pad: command block under a glowing pad; only the faction's authorised members trigger it."""
    W.set(x, y - 1, z, "minecraft:purple_glazed_terracotta[facing=north]")
    cmdblock(W, x, y - 2, z, "function riftbrek:kit/pad_%s" % key)
    W.set(x - 1, y - 1, z, GLOW); W.set(x + 1, y - 1, z, GLOW); W.set(x, y - 1, z - 1, GLOW); W.set(x, y - 1, z + 1, GLOW)
    sign(W, x, y, z + 2, ["KIT PAD", key.upper(), "stand on pad", "10 min cooldown"], rot=8)
