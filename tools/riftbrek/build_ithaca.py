"""ITHACA CITY - a 768 x 768 circular, layered, walled capital that runs on the same data pack as the RIFTBREK headquarters.

Layout (centre C = 384,384; r = distance from the centre):
  r < 24      central monument + fountain plaza
  r < 150     ROYAL DISTRICT: Royal Palace (north), Capitol (south), inner fortress wall r150..156 with 4 leader-tier gates
  r 162..212  CENTRAL MARKETPLACE ring (stalls, 4 trading halls)
  r 222..300  six Vanguard faction HQs, Grand Library & Archives, barracks + training arenas, industrial redstone district,
              transit hub, harbour + river, residential districts, watchtowers
  r 322..334  outer curtain wall, 4 main gatehouses (outer public checkpoint + inner member checkpoint), 20 towers
  underground maintenance ring, rail loop + 4 stations, sorter halls, vaults, Veil secret tunnels
Every door is a command-block gate that calls the existing riftbrek:door/<tier> data-pack functions (location independent).
"""
import numpy as np
from .build_common import *
from . import build_common as C
from . import layout as L
from . import build_wings as WG
from . import build_launcher as LA
from . import build_under as U
from .build_wings import wing, WINGS, dome
from .build_surface import road
from .nbt import Byte
from .world import World

SX = SZ = 768
SY = 384
CX = CZ = 384
G = GROUND_TOP                     # 95
R_IN0, R_IN1 = 150, 156            # inner (royal) wall
R_MK0, R_MK1 = 162, 212            # market ring
R_OUT0, R_OUT1 = 322, 334          # outer wall
PBAS = "minecraft:polished_basalt[axis=y]"
SBR = "minecraft:stone_bricks"
CSB = "minecraft:cracked_stone_bricks"
BLK = "minecraft:blackstone"
QPIL = "minecraft:quartz_pillar[axis=y]"
AMC = "minecraft:amethyst_block"
WATER = "minecraft:water[level=0]"
LOOT = [("minecraft:diamond_block", 64), ("minecraft:emerald_block", 64), ("minecraft:gold_block", 64), ("minecraft:netherite_block", 32),
        ("minecraft:netherite_ingot", 64), ("minecraft:diamond", 64), ("minecraft:enchanted_golden_apple", 16), ("minecraft:nether_star", 8),
        ("minecraft:experience_bottle", 64), ("minecraft:emerald", 64), ("minecraft:gold_ingot", 64), ("minecraft:iron_block", 64),
        ("minecraft:elytra", 1), ("minecraft:totem_of_undying", 1), ("minecraft:beacon", 4), ("minecraft:heart_of_the_sea", 16)]

YY, XX = None, None
RAD = None                         # radius field (set in build)
OCC = None                         # occupancy mask for the procedural residential fill
REPORT = []


def polar(r, deg):
    a = np.deg2rad(deg)
    return int(round(CX + r * np.cos(a))), int(round(CZ + r * np.sin(a)))


def claim(cx, cz, rx, rz=None):
    rz = rx if rz is None else rz
    OCC[max(cz - rz, 0):cz + rz + 1, max(cx - rx, 0):cx + rx + 1] = True


def gate_x(W, tier, x, y, z, width=1, facing="east", frame=BRK):
    """gate in a wall that runs along Z (passage along X): frame column at x, doors at z..z+width-1"""
    W.fill(x, y, z - 1, x, y + 3, z + width, frame)
    for i in range(width):
        W.set(x, y, z + i, f"minecraft:iron_door[facing={facing},half=lower,hinge={'left' if i % 2 == 0 else 'right'},open=false,powered=false]")
        W.set(x, y + 1, z + i, f"minecraft:iron_door[facing={facing},half=upper,hinge={'left' if i % 2 == 0 else 'right'},open=false,powered=false]")
        W.set(x, y + 2, z + i, IB)
    cmdblock(W, x, y + 3, z, "function riftbrek:door/%s%s" % (tier, "" if width == 1 else "_w%d" % width))
    W.set(x, y + 2, z - 1, GLOW); W.set(x, y + 2, z + width, GLOW)
    C.GATES.append((tier, width, x, y, z))


def mixed(W, y0, y1, mask, blocks, rng):
    """fill the masked columns y0..y1 with a random mix of blocks (weathered stonework)"""
    idx = [W.B(b) for b in blocks]
    ys = np.arange(max(y0, 0), min(y1, W.sy - 1) + 1)
    for y in ys:
        pick = rng.integers(0, len(idx), size=mask.shape)
        layer = W.a[y]
        layer[mask] = np.array(idx, dtype=np.uint16)[pick[mask]]


# --------------------------------------------------------------------------------------------- terrain + river
def terrain(W, rng):
    W.fill(0, 0, 0, SX - 1, 90, SZ - 1, "minecraft:deepslate")
    W.fill(0, 91, 0, SX - 1, 94, SZ - 1, "minecraft:stone")
    W.fill(0, 95, 0, SX - 1, 95, SZ - 1, "minecraft:grass_block[snowy=false]")
    # blackstone plinth under the whole ring of the outer wall
    m = (RAD >= R_OUT0 - 2) & (RAD <= R_OUT1 + 2)
    for y in range(88, 96):
        W.a[y][m] = W.B(BLK)


def river_zc(x):
    return int(round(650 + 25 * np.sin((x - 60) / 150.0)))


def river(W):
    """river across the south, widened to a harbour basin; trench 3 deep (the water surface is at y=92), stone-brick banks"""
    for x in range(SX):
        zc = river_zc(x)
        hw = 15
        if 400 <= x <= 535:
            hw = 24
        W.fill(x, 86, zc - hw, x, 92, zc + hw, WATER)
        W.fill(x, 93, zc - hw, x, 99, zc + hw, AIR)
        W.fill(x, 88, zc - hw - 1, x, 95, zc - hw - 1, SBR); W.fill(x, 88, zc + hw + 1, x, 95, zc + hw + 1, SBR)
        W.fill(x, 86, zc - hw, x, 86, zc + hw, "minecraft:deepslate_tiles")
        OCC[max(zc - hw - 8, 0):zc + hw + 9, x] = True
    # quay promenade + bollards along the harbour basin
    for (z0, z1) in ((river_zc(467) - 24 - 7, river_zc(467) - 24 - 2), (river_zc(467) + 24 + 2, river_zc(467) + 24 + 7)):
        W.fill(396, 95, z0, 540, 95, z1, "minecraft:polished_blackstone_bricks")
    for x in range(400, 536, 12):
        for zz in (river_zc(x) - 24 - 2, river_zc(x) + 24 + 2):
            W.fill(x, 96, zz, x, 97, zz, "minecraft:polished_blackstone_wall"); W.set(x, 98, zz, "minecraft:lantern[hanging=false]")


def ship(W, x, z, length=28, facing="east"):
    """small three-mast galleon at the water surface"""
    y = 93
    if facing == "east":
        W.fill(x, y, z - 3, x + length, y, z + 3, "minecraft:dark_oak_planks")
        W.fill(x + 2, y + 1, z - 3, x + length - 2, y + 2, z - 3, "minecraft:dark_oak_planks")
        W.fill(x + 2, y + 1, z + 3, x + length - 2, y + 2, z + 3, "minecraft:dark_oak_planks")
        for mx in (x + 7, x + 14, x + 21):
            W.fill(mx, y + 1, z, mx, y + 14, z, "minecraft:stripped_dark_oak_log[axis=y]")
            W.fill(mx - 1, y + 5, z - 3, mx - 1, y + 12, z + 3, "minecraft:purple_wool")
        W.fill(x + length - 5, y + 1, z - 2, x + length - 1, y + 4, z + 2, "minecraft:dark_oak_planks")
        W.set(x + length + 1, y, z, "minecraft:dark_oak_planks"); W.set(x + length + 2, y + 1, z, "minecraft:dark_oak_planks")
        W.set(x + 1, y + 2, z, "minecraft:lantern[hanging=false]")


def harbour(W, rng):
    zc = river_zc(467)
    ship(W, 418, zc - 8, 30); ship(W, 468, zc + 5, 26); ship(W, 430, zc + 2, 22)
    # piers
    for px in (410, 450, 490):
        W.fill(px, 94, zc - 24, px + 3, 94, zc - 8, "minecraft:dark_oak_planks")
        W.fill(px, 95, zc - 24, px, 96, zc - 24, "minecraft:dark_oak_fence"); W.set(px, 97, zc - 24, "minecraft:lantern[hanging=false]")
    # customs house + harbour master (public gate, visitors may enter)
    x0, z0, x1, z1 = 404, zc - 24 - 34, 442, zc - 24 - 12
    WINGS["ith_customs"] = (x0, z0, x1, z1, 3, 9, "south")
    wing(W, "ith_customs", ["HARBOUR CUSTOMS", "Ithaca City", "ID check - trade"], "public", glass=LG, wall=BRK, trim=GLOW)
    claim((x0 + x1) // 2, (z0 + z1) // 2, 26, 16)
    # lighthouse
    lx, lz = 538, zc - 24 - 10
    for t in range(60):
        r = 7 - t // 12
        W.fill(lx - r, GY + t, lz - r, lx + r, GY + t, lz + r, "minecraft:white_concrete" if (t // 6) % 2 == 0 else PU)
        W.fill(lx - r + 1, GY + t, lz - r + 1, lx + r - 1, GY + t, lz + r - 1, AIR)
    W.fill(lx - 3, GY + 60, lz - 3, lx + 3, GY + 63, lz + 3, GLS); W.fill(lx - 1, GY + 61, lz - 1, lx + 1, GY + 62, lz + 1, SEA)
    W.fill(lx - 4, GY + 64, lz - 4, lx + 4, GY + 64, lz + 4, DT); spire(W, lx, lz, 4, GY + 65, 8)
    ladder_shaft(W, lx - 5, lz, GY, GY + 59, "east"); W.fill(lx - 6, GY, lz, lx - 6, GY + 59, lz, BRK)
    claim(lx, lz, 10)


# --------------------------------------------------------------------------------------------- roads, lights
def roads(W):
    m_ring = ((RAD >= 212) & (RAD < 222)) | ((RAD >= 300) & (RAD < 309)) | ((RAD >= 156) & (RAD < 162))
    ax = ((np.abs(XX - CX) <= 10) | (np.abs(YY - CZ) <= 10)) & (RAD >= 20) & (RAD <= R_OUT0)
    road_m = (m_ring | ax)
    y = G
    base = W.a[y]
    base[road_m] = W.B(PB)
    stripe = ((np.abs(XX - CX) <= 1) | (np.abs(YY - CZ) <= 1)) & ax
    base[stripe] = W.B(PU)
    edge = ((np.abs(np.abs(XX - CX) - 10) < 1) & (np.abs(YY - CZ) > 10) | (np.abs(np.abs(YY - CZ) - 10) < 1) & (np.abs(XX - CX) > 10)) & ax
    base[edge] = W.B(QZ)
    OCC[road_m | ((np.abs(XX - CX) <= 14) | (np.abs(YY - CZ) <= 14))] = True
    # street lamps (automatic night lights): inverted daylight sensor powers the lamp after dark
    for t in range(-300, 301, 18):
        for (x, z) in ((CX + t, CZ - 12), (CX + t, CZ + 12), (CX - 12, CZ + t), (CX + 12, CZ + t)):
            if 34 < np.hypot(x - CX, z - CZ) < R_OUT0 - 6 and OCC[z, x] and not (R_IN0 - 8 < np.hypot(x - CX, z - CZ) < R_IN1 + 8):
                W.fill(x, GY, z, x, GY + 5, z, BRK); W.fill(x - 1, GY + 6, z, x + 1, GY + 6, z, GLOW); W.fill(x, GY + 6, z - 1, x, GY + 6, z + 1, GLOW)
                W.set(x, GY + 6, z, "minecraft:redstone_lamp[lit=false]")
                W.set(x, GY + 7, z, "minecraft:daylight_detector[inverted=true,power=0]")


# --------------------------------------------------------------------------------------------- walls
def curtain_wall(W, rng):
    ring = (RAD >= R_OUT0) & (RAD <= R_OUT1)
    mixed(W, GY, GY + 66, ring, [BRK, BRK, DB, BRK2, BLK], rng)
    walk = (RAD >= R_OUT0 + 3) & (RAD <= R_OUT1 - 3)
    W.a[GY + 66][walk] = W.B(DT)
    for y in range(GY + 67, GY + 72):
        W.a[y][walk] = 0
    cren = ((XX // 2 + YY // 2) % 2 == 0)
    outer = (RAD >= R_OUT1 - 2) & (RAD <= R_OUT1)
    inner = (RAD >= R_OUT0) & (RAD <= R_OUT0 + 1)
    for y in (GY + 67, GY + 68):
        W.a[y][outer & cren] = W.B(BRK)
        W.a[y][inner] = W.B(BRK)
    # glowing vertical strips on the outer face
    ang = np.rad2deg(np.arctan2(YY - CZ, XX - CX)) % 360
    strip = (RAD >= R_OUT1 - 0.6) & (RAD <= R_OUT1 + 0.4) & ((ang % 3.0) < 0.25)
    for y in range(GY + 4, GY + 62):
        W.a[y][strip] = W.B(GLOW)
    # purple banner band
    band = (RAD >= R_OUT1 - 0.6) & (RAD <= R_OUT1 + 0.4)
    for y in range(GY + 62, GY + 65):
        W.a[y][band] = W.B(PU)
    # river water gates: wall opened where the river passes (iron-bar portcullis)
    for x in range(SX):
        zc = river_zc(x)
        for z in range(zc - 16, zc + 17):
            if R_OUT0 - 1 <= np.hypot(x - CX, z - CZ) <= R_OUT1 + 1:
                W.fill(x, 86, z, x, 92, z, WATER)
                W.fill(x, 93, z, x, GY + 12, z, AIR)
                W.fill(x, GY + 4, z, x, GY + 11, z, IB)
    OCC[(RAD >= R_OUT0 - 4)] = True


def tower_round(W, cx, cz, r, h, spire_h=14, glow=True):
    for t in range(h):
        W.set  # noqa
    disk(W, cx, cz, r, GY, GY + h, BRK)
    disk(W, cx, cz, r - 2, GY, GY + h, AIR)
    for y in range(GY + 8, GY + h, 9):
        disk(W, cx, cz, r - 1, y, y, DT)
        for k in range(8):
            a = 2 * np.pi * (k + 0.5) / 8
            W.fill(int(round(cx + r * np.cos(a))), y + 2, int(round(cz + r * np.sin(a))), int(round(cx + r * np.cos(a))), y + 5, int(round(cz + r * np.sin(a))), PG)
    for k in range(8):
        a = 2 * np.pi * k / 8
        px, pz = int(round(cx + r * np.cos(a))), int(round(cz + r * np.sin(a)))
        if glow:
            W.fill(px, GY + 2, pz, px, GY + h, pz, GLOW)
    disk(W, cx, cz, r + 1, GY + h + 1, GY + h + 1, DT)
    for t in range(spire_h):
        rr = max(0, int(round((r + 1) * (1 - t / spire_h))))
        disk(W, cx, cz, rr, GY + h + 2 + t, GY + h + 2 + t, BK)
    W.set(cx, GY + h + 2 + spire_h, cz, SEA)
    W.fill(cx, GY + h + 3 + spire_h, cz, cx, GY + h + 4 + spire_h, cz, "minecraft:lightning_rod[facing=up,powered=false,waterlogged=false]")
    ladder_shaft(W, cx - r + 3, cz, GY, GY + h - 1, "east")
    W.fill(cx - r + 2, GY, cz, cx - r + 2, GY + h - 1, cz, BRK)


def wall_towers(W):
    angs = [15 + 30 * k for k in range(12)] + [30, 60, 120, 150, 210, 240, 300, 330]
    for a in angs:
        x, z = polar(328, a)
        tower_round(W, x, z, 9, 90, 16)
    # gatehouses at N/E/S/W: two checkpoint planes (outer public, inner member) 8 apart + flanking towers
    for (name, ang) in (("N", 270), ("E", 0), ("S", 90), ("W", 180)):
        gx, gz = polar(328, ang)
        for off in (-20, 20):
            if ang in (270, 90):
                tower_round(W, gx + off, gz, 10, 96, 18)
            else:
                tower_round(W, gx, gz + off, 10, 96, 18)
        if ang in (270, 90):
            sgn = 1 if ang == 90 else -1
            x0 = CX - 6
            z_out = CZ + sgn * (R_OUT1 - 1)   # outer plane near the outer face
            z_in = CZ + sgn * (R_OUT0 + 2)
            for zz in range(min(z_out, z_in) - 2, max(z_out, z_in) + 3):
                W.fill(x0 - 1, GY, zz, x0 + 12, GY + 12, zz, AIR)
            gate(W, "public", x0, GY, z_out, 12, facing="north", frame=BRK)
            gate(W, "member", x0, GY, z_in, 12, facing="north", frame=BRK)
            for xx in (x0 - 2, x0 + 13):
                W.fill(xx, GY, min(z_out, z_in), xx, GY + 22, max(z_out, z_in), BRK)
            W.fill(x0 - 2, GY + 13, min(z_out, z_in), x0 + 13, GY + 22, max(z_out, z_in), BRK)
            sign(W, CX - 1, GY, z_out + sgn * 6 if sgn > 0 else z_out - 6, ["ITHACA CITY", "%s GATE" % {"N": "NORTH", "S": "SOUTH"}[name], "Checkpoint 1: visitors", "Checkpoint 2: members"], rot=0 if sgn > 0 else 8)
            sign(W, CX + 2, GY, z_out + sgn * 6 if sgn > 0 else z_out - 6, ["IDENTITY", "/trigger rb_req", "set 1 = ID book", "set 9 = help"], rot=0 if sgn > 0 else 8)
        else:
            sgn = 1 if ang == 0 else -1
            z0 = CZ - 6
            x_out = CX + sgn * (R_OUT1 - 1)
            x_in = CX + sgn * (R_OUT0 + 2)
            for xx in range(min(x_out, x_in) - 2, max(x_out, x_in) + 3):
                W.fill(xx, GY, z0 - 1, xx, GY + 12, z0 + 12, AIR)
            gate_x(W, "public", x_out, GY, z0, 12, facing="west" if sgn > 0 else "east", frame=BRK)
            gate_x(W, "member", x_in, GY, z0, 12, facing="west" if sgn > 0 else "east", frame=BRK)
            for zz in (z0 - 2, z0 + 13):
                W.fill(min(x_out, x_in), GY, zz, max(x_out, x_in), GY + 22, zz, BRK)
            W.fill(min(x_out, x_in), GY + 13, z0 - 2, max(x_out, x_in), GY + 22, z0 + 13, BRK)
            sign(W, x_out + sgn * 6, GY, CZ - 1, ["ITHACA CITY", "%s GATE" % {"E": "EAST", "W": "WEST"}[name], "Checkpoint 1: visitors", "Checkpoint 2: members"], rot=4 if sgn > 0 else 12)
    # tall watchtowers on the ring road (beacons)
    for a in (45, 135, 225, 315):
        x, z = polar(300, a)
        tower_round(W, x, z, 6, 120, 20)
        claim(x, z, 9)


def inner_wall(W, rng):
    ring = (RAD >= R_IN0) & (RAD <= R_IN1)
    mixed(W, GY, GY + 28, ring, [BRK, DB, BRK, PBAS, BRK2], rng)
    walk = (RAD >= R_IN0 + 1) & (RAD <= R_IN1 - 1)
    W.a[GY + 26][walk] = W.B(DT)
    for y in range(GY + 27, GY + 31):
        W.a[y][walk] = 0
    cren = ((XX // 2 + YY // 2) % 2 == 0)
    for y in (GY + 27, GY + 28):
        W.a[y][(RAD >= R_IN1 - 1) & (RAD <= R_IN1) & cren] = W.B(BRK)
    ang = np.rad2deg(np.arctan2(YY - CZ, XX - CX)) % 360
    strip = (RAD >= R_IN1 - 0.6) & (RAD <= R_IN1 + 0.4) & ((ang % 4.0) < 0.35)
    for y in range(GY + 3, GY + 25):
        W.a[y][strip] = W.B(GLOW)
    # four leader-tier gates (royal district = leader+ / royal)
    mid = (R_IN0 + R_IN1) // 2
    for (ang_, kind) in ((270, "z"), (90, "z"), (0, "x"), (180, "x")):
        if kind == "z":
            sgn = 1 if ang_ == 90 else -1
            zp = CZ + sgn * mid
            for zz in range(CZ + sgn * (R_IN0 - 2), CZ + sgn * (R_IN1 + 3), sgn):
                W.fill(CX - 7, GY, zz, CX + 6, GY + 14, zz, AIR)
            gate(W, "leader", CX - 6, GY, zp, 12, facing="north", frame=BRK)
            W.fill(CX - 8, GY + 15, min(CZ + sgn * R_IN0, CZ + sgn * R_IN1), CX + 7, GY + 20, max(CZ + sgn * R_IN0, CZ + sgn * R_IN1), BRK)
            sign(W, CX + 7, GY, zp + (-4 if sgn > 0 else 4), ["ROYAL DISTRICT", "leader-tier gate", "royals always pass", "lockdown: royals only"], rot=8 if sgn > 0 else 0)
        else:
            sgn = 1 if ang_ == 0 else -1
            xp = CX + sgn * mid
            for xx in range(CX + sgn * (R_IN0 - 2), CX + sgn * (R_IN1 + 3), sgn):
                W.fill(xx, GY, CZ - 7, xx, GY + 14, CZ + 6, AIR)
            gate_x(W, "leader", xp, GY, CZ - 6, 12, facing="west" if sgn > 0 else "east", frame=BRK)
            W.fill(min(CX + sgn * R_IN0, CX + sgn * R_IN1), GY + 15, CZ - 8, max(CX + sgn * R_IN0, CX + sgn * R_IN1), GY + 20, CZ + 7, BRK)
    for a in (45, 135, 225, 315, 22, 68, 112, 158, 202, 248, 292, 338):
        x, z = polar(153, a)
        tower_round(W, x, z, 6, 48, 10)


# --------------------------------------------------------------------------------------------- royal district
def monument(W):
    for i, r in enumerate((19, 16, 13, 10)):
        disk(W, CX, CZ, r, G, G + i, QZ if i % 2 == 0 else PU)
    disk(W, CX, CZ, 19, G + 1, G + 1, WATER, hollow=True)
    disk(W, CX, CZ, 20, G, G + 2, BRK, hollow=True)
    for t in range(92):
        r = max(1, 5 - t // 22)
        W.fill(CX - r, GY + 4 + t, CZ - r, CX + r, GY + 4 + t, CZ + r, "minecraft:purple_concrete" if (t // 8) % 2 == 0 else "minecraft:black_concrete")
        W.set(CX - r, GY + 4 + t, CZ - r, GLOW); W.set(CX + r, GY + 4 + t, CZ - r, GLOW)
        W.set(CX - r, GY + 4 + t, CZ + r, GLOW); W.set(CX + r, GY + 4 + t, CZ + r, GLOW)
    for k in range(6):
        a = 2 * np.pi * k / 6
        x, z = int(round(CX + 24 * np.cos(a))), int(round(CZ + 24 * np.sin(a)))
        W.fill(x, GY, z, x, GY + 6, z, QPIL); W.set(x, GY + 7, z, SEA)
    W.fill(CX - 1, GY + 96, CZ - 1, CX + 1, GY + 100, CZ + 1, AMC); W.set(CX, GY + 101, CZ, SEA)
    W.fill(CX, GY + 102, CZ, CX, GY + 105, CZ, "minecraft:lightning_rod[facing=up,powered=false,waterlogged=false]")
    sign(W, CX + 6, GY, CZ + 6, ["ITHACA CITY", "Monument of the", "Vanguard", "est. by the Kings"], rot=2)
    claim(CX, CZ, 24)


def palace(W, rng):
    x0, z0, x1, z1 = 316, 256, 452, 344
    WINGS["ith_palace"] = (x0, z0, x1, z1, 5, 12, "south")
    d = wing(W, "ith_palace", ["ROYAL PALACE", "Ithaca City", "Royal entrance"], "royal", glass=PG, wall=BRK, trim=GLOW, pad_key="birds")
    cx = (x0 + x1) // 2
    # throne hall (double height through floors 1-2) behind the entrance lobby
    W.fill(cx - 15, GY, z0 + 3, cx + 15, GY + 24, z0 + 5, BRK)
    W.fill(cx - 14, GY + 1, z0 + 6, cx + 14, GY + 23, z0 + 38, AIR)
    W.fill(cx - 14, GY, z0 + 6, cx + 14, GY, z0 + 38, "minecraft:purple_carpet")
    W.fill(cx - 2, GY, z0 + 6, cx + 2, GY, z0 + 38, "minecraft:white_carpet")
    for z in range(z0 + 10, z0 + 36, 6):
        W.fill(cx - 14, GY + 1, z, cx - 14, GY + 20, z, QPIL); W.fill(cx + 14, GY + 1, z, cx + 14, GY + 20, z, QPIL)
    for x in (cx - 8, cx + 8):
        for z in range(z0 + 12, z0 + 36, 8):
            W.set(x, GY + 20, z, "minecraft:chain"[:0] + "minecraft:iron_chain"); W.set(x, GY + 19, z, "minecraft:lantern[hanging=true]")
    W.fill(cx - 4, GY + 1, z0 + 6, cx + 4, GY + 1, z0 + 9, "minecraft:purple_concrete")
    W.set(cx, GY + 2, z0 + 8, "minecraft:quartz_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]")
    W.fill(cx - 1, GY + 3, z0 + 7, cx + 1, GY + 9, z0 + 7, AMC)
    for bx in (cx - 8, cx + 8):
        for yy in (GY + 6, GY + 12):
            W.set(bx, yy, z0 + 6, "minecraft:purple_wall_banner[facing=south]")
    W.set(cx - 6, GY, z0 + 12, QZ)
    sign(W, cx - 6, GY + 1, z0 + 12, ["THRONE HALL", "King Echo", "Royal level", ""], rot=0)
    # four corner round towers + great central spire
    for (tx, tz) in ((x0 - 6, z0 - 6), (x1 + 6, z0 - 6), (x0 - 6, z1 + 6), (x1 + 6, z1 + 6)):
        tower_round(W, tx, tz, 9, 110, 20)
    spire(W, cx, (z0 + z1) // 2, 26, d["top"] + 2, 80)
    for (sx, sz) in ((cx - 40, (z0 + z1) // 2), (cx + 40, (z0 + z1) // 2)):
        spire(W, sx, sz, 12, d["top"] + 2, 36)
    # flying buttresses on the south face
    for bx in range(x0 + 10, x1 - 8, 18):
        for t in range(12):
            W.fill(bx, GY + 4 + t * 2, z1 + 1 + (11 - t) // 2, bx, GY + 5 + t * 2, z1 + 1 + (11 - t) // 2, BRK)
    # royal vault shaft: a ladder from the palace down to the vault level, guarded by a royal-tier gate
    claim(cx, (z0 + z1) // 2, 76, 50)
    royal_vault(W, cx, z0)
    return d


def capitol(W, rng):
    x0, z0, x1, z1 = 316, 424, 452, 512
    WINGS["ith_capitol"] = (x0, z0, x1, z1, 4, 12, "north")
    d = wing(W, "ith_capitol", ["CAPITOL BUILDING", "Ithaca City", "Public hall - registry"], "public", glass=BG, wall=BRK, trim=GLOW, pad_key=None)
    cx = (x0 + x1) // 2
    # columned portico facing the plaza
    for x in range(x0 + 6, x1 - 4, 9):
        W.fill(x, GY, z0 - 5, x, GY + 34, z0 - 5, QPIL)
        W.set(x, GY + 35, z0 - 5, QZ)
    W.fill(x0 + 4, GY + 35, z0 - 6, x1 - 3, GY + 36, z0 - 4, QZ)
    for t in range(10):
        W.fill(cx - 36 + t * 3, GY + 37 + t, z0 - 6, cx + 36 - t * 3, GY + 37 + t, z0 - 4, QZ)
    dome(W, cx, (z0 + z1) // 2, 34, d["top"] + 2, PG)
    W.fill(cx - 2, d["top"] + 40, (z0 + z1) // 2 - 2, cx + 2, d["top"] + 56, (z0 + z1) // 2 + 2, GLS)
    spire(W, cx, (z0 + z1) // 2, 5, d["top"] + 57, 22)
    for (tx, tz) in ((x0 - 6, z0 - 6), (x1 + 6, z0 - 6), (x0 - 6, z1 + 6), (x1 + 6, z1 + 6)):
        tower_round(W, tx, tz, 8, 80, 16)
    # assembly chamber: tiered seating ring
    for r_, y_ in ((22, GY), (19, GY + 1), (16, GY + 2)):
        disk(W, cx, (z0 + z1) // 2 + 6, r_, y_, y_, "minecraft:purple_carpet")
    # SECURITY CONTROL room (leader tier) in the capitol: lockdown / lift buttons
    security_control(W, x1 - 30, z0 + 8)
    claim(cx, (z0 + z1) // 2, 76, 50)
    return d


def security_control(W, x, z):
    """lockdown control panel (impulse command blocks behind stone buttons) in a small leader-gated room"""
    W.fill(x, GY, z, x + 20, GY + 6, z + 10, AIR)
    for i, (label, cmd) in enumerate((("LOCKDOWN", "function riftbrek:admin/lockdown_on"), ("LIFT LOCK", "function riftbrek:admin/lockdown_off"),
                                       ("ALL ALARMS", "function riftbrek:alarm/all"), ("RESET", "function riftbrek:alarm/reset"))):
        bx = x + 3 + i * 4
        cmdblock(W, bx, GY + 1, z + 1, cmd, kind="impulse")
        for t in W.tiles:
            if (t["x"], t["y"], t["z"]) == (bx, GY + 1, z + 1):
                t["auto"] = Byte(0)
        W.set(bx, GY + 1, z + 2, "minecraft:stone_button[face=wall,facing=south,powered=false]")
        W.set(bx, GY + 2, z + 2, "minecraft:crimson_wall_sign[facing=south,waterlogged=false]")
        W.tile(bx, GY + 2, z + 2, {"id": "minecraft:sign", "is_waxed": Byte(1),
                                  "front_text": {"has_glowing_text": Byte(1), "color": "red", "messages": [label, "press button", "", ""]},
                                  "back_text": {"has_glowing_text": Byte(0), "color": "black", "messages": ["", "", "", ""]}})


def royal_vault(W, cx, z0):
    """underground royal vault under the palace: ladder from the palace, royal-tier gate, loot chests"""
    y = 58
    vx0, vz0 = cx - 20, z0 + 8
    W.fill(vx0 - 2, y - 1, vz0 - 12, vx0 + 42, y + 8, vz0 + 26, DB)
    W.fill(vx0, y, vz0 - 10, vx0 + 40, y + 6, vz0 + 24, AIR)
    # access shaft from the throne-hall floor (ladder) to a corridor
    sx, sz = cx + 10, z0 + 6
    W.fill(sx, y, sz, sx, GY, sz, AIR)
    ladder_shaft(W, sx, sz, y, GY, "south"); W.fill(sx, y, sz - 1, sx, GY, sz - 1, BRK)
    # inner vault behind a royal-tier gate
    W.fill(vx0 + 4, y, vz0 + 4, vx0 + 36, y + 5, vz0 + 20, BRK)
    W.fill(vx0 + 5, y, vz0 + 5, vx0 + 35, y + 4, vz0 + 19, AIR)
    W.fill(vx0 + 20, y, vz0 + 4, vx0 + 20, y + 5, vz0 + 4, BRK)
    W.fill(vx0 + 16, y, vz0 + 4, vx0 + 27, y + 4, vz0 + 4, AIR)
    gate(W, "royal", vx0 + 16, y, vz0 + 4, 12, facing="north", frame=BK)
    n = 0
    for xx in range(vx0 + 7, vx0 + 34, 3):
        for zz in (vz0 + 8, vz0 + 12, vz0 + 16):
            chest(W, xx, y, zz, "north", items=[LOOT[(n + k) % len(LOOT)] for k in range(8)]); n += 1
    W.fill(vx0 + 5, y + 5, vz0 + 5, vx0 + 35, y + 5, vz0 + 19, DT)
    sign(W, vx0 + 14, y, vz0 + 3, ["ROYAL VAULT", "royal tier only", "lockdown-proof", ""], rot=8)
    # corridor between the access shaft and the vault gate
    W.fill(vx0 + 6, y, vz0 - 4, vx0 + 40, y + 3, vz0 + 2, AIR)
    W.fill(vx0 + 20, y, vz0 + 2, vx0 + 27, y + 3, vz0 + 3, AIR)
    REPORT.append(("royal_vault", vx0 + 20, y, vz0 + 2))


# --------------------------------------------------------------------------------------------- faction HQs / civic
HQS = [  # key, label lines, tier, angle, glass, wall, trim, pad
    ("birds", ["THE BIGGEST BIRDS", "Royal guard", "King Echo"], "birds", 300, PG, BRK, GLOW, "birds"),
    ("abstracters", ["ABSTRACTERS", "Combat Wing", "Training"], "abstracters", 30, "minecraft:gray_stained_glass", DB, GLOW, "abstracters"),
    ("wildcards", ["WILDCARDS", "Engineering", "Workshops"], "wildcards", 150, LG, BRK, GLOW, "wildcards"),
    ("veil", ["VEIL", "Covert Wing", "members only"], "veil", 210, "minecraft:black_stained_glass", BLK, "minecraft:blue_ice", "veil"),
    ("unstables", ["UNSTABLES", "Experimental", "Laboratories"], "unstables", 240, BG, BRK, GLOW, "unstables"),
    ("archivist", ["THE ARCHIVIST", "Grand Archive", "Records - Kits"], "archivist", 330, "minecraft:white_stained_glass", "minecraft:smooth_quartz", PG, "archivist"),
]
HQ_W, HQ_D = 60, 40


def faction_hqs(W):
    out = {}
    for (key, label, tier, ang, glass, wall, trim, pad_key) in HQS:
        cx, cz = polar(254, ang)
        x0, z0 = cx - HQ_W // 2, cz - HQ_D // 2
        face = "south" if cz < CZ else "north"      # entrance toward the avenue side of the city
        k = "ith_" + key
        WINGS[k] = (x0, z0, x0 + HQ_W, z0 + HQ_D, 5, 11, face)
        d = wing(W, k, label, tier, glass=glass, wall=wall, trim=trim, pad_key=pad_key)
        for (tx, tz) in ((x0 - 1, z0 - 1), (x0 + HQ_W + 1, z0 - 1), (x0 - 1, z0 + HQ_D + 1), (x0 + HQ_W + 1, z0 + HQ_D + 1)):
            tower_round(W, tx, tz, 6, 70, 12)
        spire(W, cx, cz, 14, d["top"] + 2, 40)
        claim(cx, cz, HQ_W // 2 + 10, HQ_D // 2 + 10)
        out[key] = d
    return out


def library(W):
    cx, cz = polar(256, 345)
    x0, z0, x1, z1 = cx - 34, cz - 20, cx + 34, cz + 20
    WINGS["ith_library"] = (x0, z0, x1, z1, 4, 11, "south" if cz < CZ else "north")
    d = wing(W, "ith_library", ["GRAND LIBRARY", "& ARCHIVES", "open to visitors"], "public", glass="minecraft:white_stained_glass", wall="minecraft:smooth_quartz", trim=PG)
    for f in range(3):
        y = GY + f * d["fh"]
        for z in range(z0 + 6, z1 - 5, 6):
            for x in range(x0 + 5, x1 - 4):
                px = (x - x0) % 14
                if px in (0, 1, 2, 3):
                    continue
                if W.a[y, z, x] == 0:
                    W.fill(x, y, z, x, y + 3, z, "minecraft:bookshelf")
    dome(W, cx, cz, 18, d["top"] + 2, "minecraft:white_stained_glass")
    claim(cx, cz, 44, 28)
    return d


def barracks_arenas(W):
    bx, bz = 251, 588
    x0, z0, x1, z1 = bx - 30, bz - 18, bx + 30, bz + 18
    WINGS["ith_barracks"] = (x0, z0, x1, z1, 4, 10, "north")
    d = wing(W, "ith_barracks", ["MILITARY BARRACKS", "Vanguard garrison", "member entry"], "member", glass="minecraft:gray_stained_glass", wall=BLK, trim="minecraft:red_nether_bricks")
    claim(bx, bz, 40, 28)
    # bunk beds on the upper floors
    for f in range(1, 4):
        y = GY + f * 10
        for x in range(x0 + 8, x1 - 8, 4):
            for z in (z0 + 6, z1 - 7):
                if W.a[y, z, x] == 0 and W.a[y, z + 1, x] == 0:
                    W.set(x, y, z, "minecraft:purple_bed[facing=south,occupied=false,part=foot]"); W.set(x, y, z + 1, "minecraft:purple_bed[facing=south,occupied=false,part=head]")
    # two round training arenas (sand floor, tiered brick walls, glowing pillars)
    for (ax, az, name) in ((190, 562, "ARENA ONE"), (232, 632, "ARENA TWO")):
        R = 20
        disk(W, ax, az, R, G, G, "minecraft:smooth_sandstone")
        disk(W, ax, az, R, GY, GY + 12, DB)
        disk(W, ax, az, R - 3, GY, GY + 14, AIR)
        for t in range(4):
            disk(W, ax, az, R - t, GY + t, GY + t, DB, hollow=True)
        for k in range(10):
            a = 2 * np.pi * k / 10
            px, pz = int(round(ax + R * np.cos(a))), int(round(az + R * np.sin(a)))
            W.fill(px, GY, pz, px, GY + 15, pz, PBAS); W.set(px, GY + 16, pz, SEA)
        side = -1 if az < CZ + 100 else 1
        W.fill(ax - 3, GY, az - R - 1, ax + 3, GY + 5, az - R + 4, AIR)          # arena gate toward the north road
        sign(W, ax - 1, GY, az - R - 3, [name, "Vanguard training", "members", ""], rot=0)
        claim(ax, az, R + 4)
    # wind-charged chicken launcher (real redstone, no command blocks) beside the east road
    LA.launcher(W, 640, 430, y=GROUND_TOP, label="WIND LAUNCHER")
    LA.tube(W, 640, 430, y=GROUND_TOP, height=30)
    claim(640, 430, 14, 10)
    return d


# --------------------------------------------------------------------------------------------- industrial redstone district
IND = dict(x0=90, z0=318, x1=160, z1=366)


def industrial(W, rng):
    x0, z0, x1, z1 = IND["x0"], IND["z0"], IND["x1"], IND["z1"]
    WINGS["ith_industry"] = (x0, z0, x1, z1, 3, 11, "north")
    d = wing(W, "ith_industry", ["INDUSTRIAL", "REDSTONE DISTRICT", "farms - sorting"], "member", glass=BG, wall=DB, trim="minecraft:blue_ice")
    claim((x0 + x1) // 2, (z0 + z1) // 2, 44, 32)
    from .build_haven import haven
    haven(W, x0 + 4, z0 + 19, x1 - 4, z1 - 4)           # ground-floor REDSTONE HAVEN (real redstone, self-tested)
    # crop farm plots with a hopper drain that feeds the sorter intake shaft
    px0, pz0 = 96, 290
    for i, crop in enumerate(("wheat", "carrots", "potatoes", "beetroot")):
        bx = px0 + i * 12
        W.fill(bx - 1, G, pz0 - 1, bx + 9, G, pz0 + 9, DB)
        W.fill(bx, G + 1, pz0, bx + 8, G + 1, pz0 + 8, "minecraft:farmland[moisture=7]")
        W.set(bx + 4, G + 1, pz0 + 4, WATER)
        age = {"wheat": 7, "carrots": 7, "potatoes": 7, "beetroot": 3}[crop]
        blk = {"wheat": "minecraft:wheat", "carrots": "minecraft:carrots", "potatoes": "minecraft:potatoes", "beetroot": "minecraft:beetroots"}[crop]
        for dx in range(9):
            for dz in range(9):
                if (dx, dz) != (4, 4):
                    W.set(bx + dx, G + 2, pz0 + dz, f"{blk}[age={age}]")
        W.fill(bx - 1, G + 1, pz0 - 1, bx - 1, G + 2, pz0 + 9, DB); W.fill(bx + 9, G + 1, pz0 - 1, bx + 9, G + 2, pz0 + 9, DB)
        W.fill(bx - 1, G + 1, pz0 - 1, bx + 9, G + 2, pz0 - 1, DB)
        W.set(bx + 4, G + 1, pz0 + 9, DB)
        chest(W, bx + 4, G + 2, pz0 + 10, "north")
        sign(W, bx + 4, G + 1, pz0 + 12, [crop.upper(), "harvest + replant", "drop in the chest", "-> sorter shaft"], rot=0)
    claim(120, 300, 40, 16)
    sorter_complex(W)
    # reachable surface intake: dump chest + hopper chute straight down to the sorter tray
    return d


def sorter_complex(W):
    """two data-pack sorter halls (same functions as the HQ) under the industrial district, fed by a hopper shaft"""
    for hall in (dict(name="a", level=5, ox=96, oz=326, cats=L.CATS_A), dict(name="b", level=6, ox=96, oz=350, cats=L.CATS_B)):
        y0 = L.level_floor(hall["level"])
        ox, oz = hall["ox"], hall["oz"]
        wx = ox + 2 + 2 * len(hall["cats"]) + 4
        W.fill(ox - 8, y0, oz - 4, wx, y0 + 10, oz + 2 + 2 * L.SORT_K + 4, DB)
        W.fill(ox - 6, y0 + 1, oz - 2, wx - 2, y0 + 9, oz + 2 + 2 * L.SORT_K + 2, AIR)
        U.sorter_hall(W, hall)
    # service shaft + intake chain for hall A: chest -> hopper chain -> tray
    ox, oz = 96, 326
    yc = L.level_floor(5) + 4
    for y in range(yc + 1, G + 1):
        hopper(W, ox, y, oz + 1, "down")
    chest(W, ox, G + 1, oz + 1, "south")
    sign(W, ox, G + 1, oz + 3, ["SORTER INTAKE", "drop items in the", "chest: auto-sorted", "-> 17 categories"], rot=0)
    # service ladders (one per hall): up from the room's north wall to the industrial hall above (clear of the ring tunnel)
    for hall_oz, lvl in ((326, 5), (350, 6)):
        fy = L.level_floor(lvl)
        lx, lz = 106, hall_oz - 2
        W.fill(lx, fy + 1, lz, lx, G, lz, AIR)
        ladder_shaft(W, lx, lz, fy + 1, G, "south"); W.fill(lx, fy + 1, lz - 1, lx, G, lz - 1, BRK)
    cmdblock(W, ox + 6, L.level_floor(5) + 1, oz + 20, "function riftbrek:zone/visible")
    REPORT.append(("sorter_a", ox, yc, oz))


# --------------------------------------------------------------------------------------------- market + transit hub + residential
def marketplace(W, rng):
    m = (RAD >= R_MK0) & (RAD <= R_MK1) & ~((np.abs(XX - CX) <= 10) | (np.abs(YY - CZ) <= 10))
    pat = (((XX // 4) + (YY // 4)) % 2 == 0)
    W.a[G][m & pat] = W.B(SQZ)
    W.a[G][m & ~pat] = W.B("minecraft:polished_diorite")
    ring = m & (np.abs(RAD - 187) < 1.0)
    W.a[G][ring] = W.B(PU)
    # four trading halls on the ring (villager workstations ready for villagers)
    stations = ["minecraft:lectern[facing=north]", "minecraft:smithing_table", "minecraft:cartography_table", "minecraft:fletching_table",
                "minecraft:loom[facing=north]", "minecraft:grindstone[face=floor,facing=north]", "minecraft:composter[level=0]", "minecraft:barrel[facing=up,open=false]",
                "minecraft:blast_furnace[facing=north,lit=false]", "minecraft:brewing_stand[has_bottle_0=false,has_bottle_1=false,has_bottle_2=false]"]
    HALLS = []
    for k, a in enumerate((45, 135, 225, 315)):
        hx, hz = polar(187, a)
        x0, z0, x1, z1 = hx - 13, hz - 9, hx + 13, hz + 9
        HALLS.append((x0 - 6, z0 - 6, x1 + 6, z1 + 6))
        key = f"ith_trade{k}"
        WINGS[key] = (x0, z0, x1, z1, 2, 9, "south" if hz < CZ else "north")
        wing(W, key, ["TRADING HALL", "Ithaca market", "bring villagers"], "public", glass=PG, wall=SBR, trim=GLOW)
        for i, st in enumerate(stations):
            sx = x0 + 6 + (i % 5) * 3
            sz = z0 + 6 + (i // 5) * 4
            W.set(sx, GY, sz, st)
    colours = ["purple", "blue", "white", "light_blue", "magenta", "black"]
    n = 0
    for k in range(72):
        a = np.deg2rad(k * 5.0 + 2.5)
        if k * 5 % 90 in (85, 0, 5):         # keep the avenues clear
            continue
        for rr in (174, 200):
            x, z = int(round(CX + rr * np.cos(a))), int(round(CZ + rr * np.sin(a)))
            if abs(x - CX) <= 14 or abs(z - CZ) <= 14 or any(h[0] <= x <= h[2] and h[1] <= z <= h[3] for h in HALLS):
                continue
            col = colours[(k + rr) % len(colours)]
            for dy in range(3):
                W.set(x - 1, GY + dy, z - 1, "minecraft:oak_fence"); W.set(x + 1, GY + dy, z - 1, "minecraft:oak_fence")
            W.fill(x - 2, GY + 3, z - 2, x + 2, GY + 3, z + 2, f"minecraft:{col}_wool")
            W.set(x, GY, z, "minecraft:barrel[facing=up,open=false]")
            W.set(x + 1, GY, z + 1, "minecraft:chest[facing=north,type=single,waterlogged=false]")
            W.tile(x + 1, GY, z + 1, {"id": "minecraft:chest", "Items": [{"Slot": Byte(i), "id": nm, "count": 16} for i, nm in enumerate(
                ("minecraft:bread", "minecraft:cooked_beef", "minecraft:arrow", "minecraft:iron_ingot", "minecraft:emerald"))]})
            W.set(x - 1, GY, z + 1, "minecraft:lantern[hanging=false]")
            n += 1
    # cross-quadrant statues? (kept simple) - markers on the avenues
    return n


def transit_hub_surface(W):
    """surface station building: stairs down to the rail loop (see underground)"""
    cx, cz = polar(246, 45)
    x0, z0, x1, z1 = cx - 20, cz - 14, cx + 20, cz + 14
    WINGS["ith_hub"] = (x0, z0, x1, z1, 3, 10, "south")
    wing(W, "ith_hub", ["TRANSIT HUB", "rail - airships", "underground loop"], "member", glass=LG, wall=BRK, trim=GLOW)
    claim(cx, cz, 26, 20)
    return cx, cz


def residential(W, rng):
    """procedural gothic townhouses on every free plot between roads and landmarks"""
    n = 0
    for z in range(40, SZ - 40, 13):
        for x in range(40, SX - 40, 13):
            r = np.hypot(x - CX, z - CZ)
            if not (222 <= r <= 296):
                continue
            if OCC[z - 5:z + 6, x - 5:x + 6].any():
                continue
            if W.a[G, z, x] != W.B("minecraft:grass_block[snowy=false]"):
                continue
            h = 5 + int(rng.integers(0, 3))
            wall = [SBR, "minecraft:smooth_quartz", DB][int(rng.integers(0, 3))]
            W.fill(x - 4, GY, z - 4, x + 4, GY + h, z + 4, wall)
            W.fill(x - 3, GY, z - 3, x + 3, GY + h - 1, z + 3, AIR)
            W.fill(x - 4, GY - 1, z - 4, x + 4, GY - 1, z + 4, DT)
            for t in range(5):
                W.fill(x - 5 + t, GY + h + t, z - 5, x + 5 - t, GY + h + t, z + 5, f"minecraft:deepslate_tile_stairs[facing=east,half=bottom,shape=straight,waterlogged=false]" if False else DT)
            W.fill(x, GY, z - 4, x, GY + 1, z - 4, AIR)
            W.set(x, GY, z - 4, "minecraft:spruce_door[facing=south,half=lower,hinge=left,open=false,powered=false]")
            W.set(x, GY + 1, z - 4, "minecraft:spruce_door[facing=south,half=upper,hinge=left,open=false,powered=false]")
            for dz in (-4, 4):
                W.set(x - 2, GY + 2, z + dz, PG); W.set(x + 2, GY + 2, z + dz, PG)
            W.set(x + 2, GY, z + 2, "minecraft:purple_bed[facing=east,occupied=false,part=foot]"); W.set(x + 3, GY, z + 2, "minecraft:purple_bed[facing=east,occupied=false,part=head]")
            W.set(x - 3, GY, z + 3, "minecraft:chest[facing=east,type=single,waterlogged=false]")
            W.set(x - 3, GY, z, "minecraft:crafting_table"); W.set(x, GY + h - 1, z, "minecraft:lantern[hanging=true]")
            OCC[z - 6:z + 7, x - 6:x + 7] = True
            n += 1
    return n


def gardens(W, rng):
    n = 0
    for _ in range(900):
        x = int(rng.integers(30, SX - 30)); z = int(rng.integers(30, SZ - 30))
        r = np.hypot(x - CX, z - CZ)
        if not (30 < r < 318) or OCC[z - 3:z + 4, x - 3:x + 4].any() or W.a[G, z, x] != W.B("minecraft:grass_block[snowy=false]"):
            continue
        tree(W, x, z, "cherry" if n % 3 else "spruce", 6 + int(rng.integers(0, 4)))
        OCC[z - 4:z + 5, x - 4:x + 5] = True
        n += 1
    return n


# --------------------------------------------------------------------------------------------- underground
def underground(W, rng):
    # (1) maintenance ring tunnel just inside the wall + 4 radial tunnels under the avenues
    ring = (RAD >= 291) & (RAD <= 297)
    for y in range(84, 89):
        W.a[y][ring] = 0
    W.a[83][ring] = W.B(DT)
    W.a[89][ring] = W.B(DB)
    for k in range(0, 360, 20):
        x, z = polar(294, k)
        W.set(x, 87, z, "minecraft:lantern[hanging=false]")
    for (x0, z0, x1, z1) in ((CX - 2, CZ - 291, CX + 2, CZ - 40), (CX - 2, CZ + 40, CX + 2, CZ + 291), (CX + 40, CZ - 2, CX + 291, CZ + 2), (CX - 291, CZ - 2, CX - 40, CZ + 2)):
        W.fill(x0, 83, z0, x1, 83, z1, DT); W.fill(x0, 84, z0, x1, 87, z1, AIR); W.fill(x0, 88, z0, x1, 88, z1, DB)
    for t in range(-280, 281, 20):
        W.set(CX + t, 87, CZ, "minecraft:lantern[hanging=true]") if abs(t) > 40 else None
        W.set(CX, 87, CZ + t, "minecraft:lantern[hanging=true]") if abs(t) > 40 else None
    # surface hatches (member gate + ladder) at the 4 diagonals
    for a in (45, 135, 225, 315):
        x, z = polar(284, a)
        W.fill(x - 3, GY, z - 3, x + 3, GY + 5, z + 3, BRK); W.fill(x - 2, GY, z - 2, x + 2, GY + 4, z + 2, AIR)
        W.fill(x - 3, GY + 6, z - 3, x + 3, GY + 6, z + 3, DT)
        W.fill(x, G, z, x, 84, z, AIR)
        ladder_shaft(W, x, z, 84, GY + 4, "south"); W.fill(x, 84, z - 1, x, GY + 4, z - 1, BRK)
        gate(W, "member", x, GY, z - 3, 1, facing="north", frame=BRK)
        W.fill(x, GY, z - 2, x, GY + 3, z - 2, AIR)
        W.fill(x - 1, GY + 4, z - 3, x + 1, GY + 4, z - 3, BRK)
        sign(W, x + 1, GY, z - 5, ["MAINTENANCE", "member access", "ring tunnel B1", ""], rot=8)
        claim(x, z, 6)
        # ring join: carve a tunnel from the shaft foot to the ring
        W.fill(x - 1, 84, z - 1, x + 1, 87, z + 1, AIR)
    # connect each hatch shaft to the ring tunnel (shaft sits in the ring band already at r=284..294)
    # (2) rail loop at y=70, half-size 190, with 4 stations
    H = 190
    y = 70
    cheb = np.maximum(np.abs(XX - CX), np.abs(YY - CZ))
    lining = (cheb >= H - 3) & (cheb <= H + 3)
    corridor = (cheb >= H - 2) & (cheb <= H + 2)
    for yy in range(y - 1, y + 7):
        W.a[yy][lining] = W.B(DB)
    for yy in range(y, y + 6):
        W.a[yy][corridor] = 0
    # rails: along the centre line of the corridor
    for t in range(-H, H + 1):
        po = (t % 3 == 0)
        for (x, z, shp) in ((CX + t, CZ - H, "east_west"), (CX + t, CZ + H, "east_west"), (CX - H, CZ + t, "north_south"), (CX + H, CZ + t, "north_south")):
            if abs(t) == H:
                continue
            if po:
                W.set(x, y - 1, z, "minecraft:redstone_block")
                W.set(x, y, z, f"minecraft:powered_rail[powered=true,shape={shp},waterlogged=false]")
            else:
                W.set(x, y, z, f"minecraft:rail[shape={shp},waterlogged=false]")
    W.set(CX - H, y, CZ - H, "minecraft:rail[shape=south_east,waterlogged=false]"); W.set(CX + H, y, CZ - H, "minecraft:rail[shape=south_west,waterlogged=false]")
    W.set(CX - H, y, CZ + H, "minecraft:rail[shape=north_east,waterlogged=false]"); W.set(CX + H, y, CZ + H, "minecraft:rail[shape=north_west,waterlogged=false]")
    for t in range(-H + 12, H - 11, 24):
        for (x, z) in ((CX + t, CZ - H + 2), (CX + t, CZ + H - 2), (CX - H + 2, CZ + t), (CX + H - 2, CZ + t)):
            W.set(x, y + 4, z, "minecraft:lantern[hanging=true]")
    # stations (raised platform inside the corridor + ladder shaft to the avenue + sign) at the four side midpoints
    for (sx, sz, face, name) in ((CX, CZ - H, "south", "NORTH"), (CX, CZ + H, "north", "SOUTH"), (CX + H, CZ, "west", "EAST"), (CX - H, CZ, "east", "WEST")):
        if face in ("south", "north"):
            pz = (1, 2) if face == "south" else (-2, -1)
            W.fill(sx - 12, y, sz + pz[0], sx + 12, y, sz + pz[1], "minecraft:smooth_quartz")
            ex, ez = sx + 14, sz + (3 if face == "south" else -3)
            W.fill(ex, y, ez, ex, G, ez, AIR)
            ladder_shaft(W, ex, ez, y, GY + 1, "west"); W.fill(ex + 1, y, ez, ex + 1, GY + 1, ez, BRK)
            sign(W, sx, y + 1, sz + pz[1], ["%s STATION" % name, "Ithaca Underground", "minecart loop", ""], rot=8 if face == "south" else 0)
        else:
            px = (1, 2) if face == "east" else (-2, -1)
            W.fill(sx + px[0], y, sz - 12, sx + px[1], y, sz + 12, "minecraft:smooth_quartz")
            ex, ez = sx + (3 if face == "east" else -3), sz + 14
            W.fill(ex, y, ez, ex, G, ez, AIR)
            ladder_shaft(W, ex, ez, y, GY + 1, "north"); W.fill(ex, y, ez + 1, ex, GY + 1, ez + 1, BRK)
            sign(W, sx + px[1], y + 1, sz, ["%s STATION" % name, "Ithaca Underground", "minecart loop", ""], rot=4 if face == "east" else 12)
        # surface kiosk above each ladder: 5x5 shell, ladder against a solid backing column, open doorway on the far side
        kx, kz = ex, ez
        W.fill(kx - 2, GY, kz - 2, kx + 2, GY + 4, kz + 2, BRK); W.fill(kx - 2, GY + 5, kz - 2, kx + 2, GY + 5, kz + 2, DT)
        if face in ("south", "north"):
            W.fill(kx - 1, GY, kz - 1, kx, GY + 3, kz + 1, AIR)          # backing column stays at kx+1
            W.fill(kx, G, kz, kx, y, kz, AIR); ladder_shaft(W, kx, kz, y, GY + 3, "west"); W.fill(kx + 1, y, kz, kx + 1, GY + 3, kz, BRK)
            W.fill(kx - 2, GY, kz, kx - 2, GY + 1, kz, AIR)
        else:
            W.fill(kx - 1, GY, kz - 1, kx + 1, GY + 3, kz, AIR)          # backing column stays at kz+1
            W.fill(kx, G, kz, kx, y, kz, AIR); ladder_shaft(W, kx, kz, y, GY + 3, "north"); W.fill(kx, y, kz + 1, kx, GY + 3, kz + 1, BRK)
            W.fill(kx, GY, kz - 2, kx, GY + 1, kz - 2, AIR)
        claim(kx, kz, 6)
    # (3) Veil secret tunnels: from the Veil HQ basement east to the palace vault corridor, west out through the wall
    vx, vz = polar(254, 210)
    yv = 78
    W.fill(vx - 16, yv - 1, vz - 8, vx + 16, yv + 5, vz + 8, DB); W.fill(vx - 14, yv, vz - 6, vx + 14, yv + 4, vz + 6, AIR)
    ladder_shaft(W, vx + 5, vz, yv, G, "south"); W.fill(vx + 5, yv, vz - 1, vx + 5, G, vz - 1, BRK)
    gate(W, "veil", vx - 1, yv, vz - 6, 1, facing="north", frame="minecraft:bookshelf")
    W.fill(vx - 14, yv, vz, vx - 120, yv + 3, vz, AIR) if False else None
    for xx in range(vx - 130, vx - 14):
        W.fill(xx, yv, vz - 1, xx, yv + 3, vz + 1, AIR); W.fill(xx, yv - 1, vz - 2, xx, yv - 1, vz + 2, DB); W.fill(xx, yv + 4, vz - 2, xx, yv + 4, vz + 2, DB)
    W.fill(vx - 130, yv, vz - 1, vx - 130, G, vz - 1, AIR); ladder_shaft(W, vx - 130, vz, yv, G, "east")
    W.set(vx - 130, G, vz, "minecraft:iron_trapdoor[facing=south,half=bottom,open=false,powered=false,waterlogged=false]")
    for xx in range(vx + 14, CX - 20):
        W.fill(xx, yv, vz - 1, xx, yv + 3, vz + 1, AIR); W.fill(xx, yv - 1, vz - 2, xx, yv - 1, vz + 2, DB); W.fill(xx, yv + 4, vz - 2, xx, yv + 4, vz + 2, DB)
    for zz in range(vz, 330):
        W.fill(CX - 21, yv, zz, CX - 19, yv + 3, zz, AIR); W.fill(CX - 22, yv - 1, zz, CX - 18, yv - 1, zz, DB); W.fill(CX - 22, yv + 4, zz, CX - 18, yv + 4, zz, DB)
    for xx in range(vx + 14, CX - 20, 20):
        W.set(xx, yv + 3, vz, "minecraft:soul_lantern[hanging=true]")
    sign(W, vx + 2, yv, vz - 5, ["VEIL TUNNELS", "veil tier only", "hidden bookshelf", "doors"], rot=8)
    REPORT.append(("veil_basement", vx, yv, vz))


def terrain_cleanup(W):
    # keep the spawn avenue free of anything left in the way at the 4 outer gates
    pass


def build_world():
    global RAD, XX, YY, OCC
    rng = np.random.default_rng(768)
    W = World(SX, SY, SZ)
    YY, XX = np.mgrid[0:SZ, 0:SX]
    RAD = np.hypot(XX - CX, YY - CZ)
    OCC = np.zeros((SZ, SX), dtype=bool)
    C.GATES.clear(); C.SHELLS.clear()
    log = lambda m: print("  %s" % m, flush=True)
    terrain(W, rng); log("terrain")
    river(W); log("river + harbour basin")
    roads(W); log("roads + street lights")
    inner_wall(W, rng); curtain_wall(W, rng); wall_towers(W); log("inner wall, curtain wall, gatehouses, towers")
    monument(W); log("monument")
    palace(W, rng); capitol(W, rng); log("royal palace + capitol")
    faction_hqs(W); log("six faction HQs")
    library(W); barracks_arenas(W); industrial(W, rng); log("library, barracks/arenas, industrial")
    harbour(W, rng); log("harbour")
    marketplace(W, rng); transit_hub_surface(W); log("marketplace, trading halls, transit hub")
    underground(W, rng); log("underground")
    n = residential(W, rng); log("houses %d" % n)
    t = gardens(W, rng); log("trees %d" % t)
    from . import build_furnish2 as F2, build_furnish as FU
    log("furnished shells %d" % F2.furnish_shells(W, []))
    log("light blocks %d" % FU.lights(W))
    return W


def landmark_probes(W):
    """9 landmark blocks (read back from the finished build) for the mod's /rift verify city"""
    zc = river_zc(467)
    pts = [("south gate outer checkpoint (public)", CX - 6, GY + 3, CZ + R_OUT1 - 1),
           ("royal district north gate (leader)", CX - 6, GY + 3, CZ - (R_IN0 + R_IN1) // 2),
           ("monument crystal", CX, GY + 96, CZ),
           ("sorter A controller", 96, L.level_floor(5) + 4, 326),
           ("sorter B controller", 96, L.level_floor(6) + 4, 350),
           ("royal vault gate (royal)", CX - 20 + 16, 58 + 3, 256 + 8 + 4),
           ("wind launcher button", 634, GROUND_TOP + 2, 430),
           ("harbour lighthouse lamp", 538, GY + 61, zc - 24 - 10),
           ("outer wall north-east tower", polar(328, 345)[0] + 9, GY + 40, polar(328, 345)[1])]
    out = []
    for (label, x, y, z) in pts:
        blk = W.palette[W.a[y, z, x]][0]
        assert blk != "minecraft:air", (label, x, y, z)
        out.append(dict(label=label, x=x, y=y + W.y_origin, z=z, block=blk))
    return out


def write_mod_data(W):
    import json, os
    res = os.path.join(os.path.dirname(__file__), "..", "..", "mod", "src", "main", "resources")
    os.makedirs(res, exist_ok=True)
    json.dump(landmark_probes(W), open(os.path.join(res, "riftbrek_city_probes.json"), "w"), indent=1)
    json.dump([dict(name="sorter halls", x0=88, z0=318, x1=150, z1=370)], open(os.path.join(res, "riftbrek_city_forceload.json"), "w"), indent=1)


def main(out_dir):
    import os
    W = build_world()
    write_mod_data(W)
    from .build_haven import HAVEN_TESTS
    import json as _j
    _j.dump(HAVEN_TESTS, open(os.path.join(out_dir, 'haven_tests.json'), 'w'), indent=1)
    os.makedirs(out_dir, exist_ok=True)
    path = os.path.join(out_dir, "RIFTBREK_ITHACA_CITY.litematic")
    bits, total = W.save(path, "Ithaca City", "RIFTBREK Design", "768x768 circular walled capital: Royal Palace, Capitol, 6 faction HQs, market, harbour, industrial redstone district, underground rail + vaults",
                         region_name="Ithaca City")
    print("palette", len(W.palette), "bits", bits, "solid", total, "tiles", len(W.tiles), "gates", len(C.GATES))
    return W, path


if __name__ == "__main__":
    import sys
    main(sys.argv[1] if len(sys.argv) > 1 else "dist")
