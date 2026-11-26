"""PANDORA - a Na'vi homeland (768 x 768): bioluminescent jungle, the giant HOMETREE with living floors, the TREE OF SOULS and its pool,
a Na'vi village of round huts, Ikran roosts on rock spires, rope bridges, a river, and the floating HALLELUJAH MOUNTAINS with hanging vines.
Origin (placement): world X 10240, Z 8192 (local 0,0). Terrain is a real height map, not a flat plate.
Becoming a Na'vi: stand on any BOND PAD (Hometree entrance, village, Ikran roosts): the data pack gives the Na'vi kit and effects.
All placement/command-block commands call riftbrek:pandora/* functions (see industry.py)."""
import numpy as np, sys, os, json
from .build_common import *
from . import build_common as C
from .world import World

SX = SZ = 768
SY = 384
CX = CZ = 384
TOTAL_PADS = []
PROBES = []

LOG = "minecraft:jungle_log[axis=y]"
LOGX = "minecraft:jungle_log[axis=x]"
LOGZ = "minecraft:jungle_log[axis=z]"
WOOD = "minecraft:jungle_planks"
SLB = "minecraft:jungle_slab[type=bottom,waterlogged=false]"
CAN = "minecraft:warped_wart_block"
CAN2 = "minecraft:nether_wart_block"
FRO = "minecraft:verdant_froglight[axis=y]"
FRO2 = "minecraft:pearlescent_froglight[axis=y]"
CAND = ["cyan", "light_blue", "purple", "magenta", "blue", "lime"]
HAY = "minecraft:hay_block[axis=y]"


def vine_hang(W, x, y, z, n, berries=True):
    """cave vines (glow berries emit light) hanging n blocks down from (x, y, z) (the block above must be solid)"""
    for i in range(n):
        yy = y - 1 - i
        if W.a[yy, z, x] != 0:
            break
        if i == n - 1 or W.a[yy - 1, z, x] != 0:
            W.set(x, yy, z, f"minecraft:cave_vines[age=25,berries={'true' if berries else 'false'}]")
        else:
            W.set(x, yy, z, f"minecraft:cave_vines_plant[berries={'true' if berries else 'false'}]")


def heights(rng):
    z, x = np.mgrid[0:SZ, 0:SX].astype(np.float32)
    H = np.zeros((SZ, SX), dtype=np.float32)
    for k in range(7):
        fx, fz = rng.uniform(0.004, 0.02), rng.uniform(0.004, 0.02)
        H += rng.uniform(1.5, 4.5) * np.sin(x * fx * 6.28 + rng.uniform(0, 6.28)) * np.cos(z * fz * 6.28 + rng.uniform(0, 6.28))
    H += 3 * np.sin(x / 23.0) * np.sin(z / 31.0)
    # flat village / hometree plateau
    r = np.hypot(x - CX, z - CZ)
    t = np.clip((r - 70) / 120.0, 0, 1); t = t * t * (3 - 2 * t)
    H = H * t
    H = np.clip(H, -9, 12)
    return (GROUND_TOP + 1 + np.round(H)).astype(np.int32)


def terrain(W, rng):
    H = heights(rng)
    zz, xx = np.mgrid[0:SZ, 0:SX]
    # river: winding band across the south half
    rz = 600 + 55 * np.sin(xx / 85.0) + 20 * np.sin(xx / 29.0)
    river = np.abs(zz - rz) < (9 + 3 * np.sin(xx / 40.0))
    H = np.where(river, GROUND_TOP - 4, H)
    # Eywa pond by the Tree of Souls
    pond = np.hypot(xx - 570, zz - 250) < 26
    H = np.where(pond, GROUND_TOP - 3, H)
    stone, dirt = W.B("minecraft:stone"), W.B("minecraft:dirt")
    deep = W.B("minecraft:deepslate")
    n = rng.random((SZ, SX))
    top = np.where(n < 0.62, W.B("minecraft:moss_block"), np.where(n < 0.85, W.B("minecraft:grass_block[snowy=false]"), W.B("minecraft:podzol[snowy=false]"))).astype(np.uint16)
    wmask = river | pond
    top = np.where(wmask, W.B("minecraft:clay"), top).astype(np.uint16)
    water = W.B("minecraft:water[level=0]")
    W.a[:81] = deep
    for y in range(81, int(H.max()) + 1):
        L_ = W.a[y]
        L_[y <= H - 4] = stone
        L_[(y > H - 4) & (y < H)] = dirt
        L_[y == H] = top[y == H]
        if y <= GROUND_TOP - 1:
            L_[(y > H) & wmask] = water
    return H, river | pond


def ground_y(H, x, z):
    return int(H[z, x])


def giant_tree(W, x, z, gy, h, r, rng):
    """tall bioluminescent tree: 2x2 jungle trunk, a wide teal umbrella canopy, hanging glow vines"""
    W.fill(x, gy + 1, z, x + 1, gy + h, z + 1, LOG)
    for k in range(4):                                         # buttress roots
        dx, dz = ((-1, 0), (2, 0), (0, -1), (0, 2))[k]
        W.fill(x + dx, gy + 1, z + dz, x + dx, gy + 3, z + dz, LOG)
    top = gy + h
    for dy in range(3):
        rr = max(r - dy * 2, 1)
        disk(W, x, z, rr, top + dy, top + dy, CAN if dy < 2 else CAN2)
    if r - 5 >= 1:
        disk(W, x, z, r - 5, top + 3, top + 3, CAN)
    for k in range(int(r * 1.4)):                              # hanging glow berries around the rim
        a = rng.uniform(0, 6.28); rr = rng.uniform(r * 0.4, r * 0.95)
        vx, vz = int(x + rr * np.cos(a)), int(z + rr * np.sin(a))
        if 0 < vx < SX - 1 and 0 < vz < SZ - 1 and W.a[top, vz, vx] != 0:
            vine_hang(W, vx, top, vz, int(rng.integers(4, 14)))
    W.set(x, top - 1, z, FRO)


def mushroom(W, x, z, gy, rng):
    h = int(rng.integers(4, 9))
    W.fill(x, gy + 1, z, x, gy + h, z, "minecraft:mushroom_stem")
    disk(W, x, z, int(rng.integers(2, 4)), gy + h + 1, gy + h + 1, "minecraft:purple_stained_glass" if rng.random() < 0.5 else "minecraft:light_blue_stained_glass")
    W.set(x, gy + h, z, "minecraft:shroomlight")


def flora(W, H, water, rng, n=26000):
    xs = rng.integers(3, SX - 3, n); zs = rng.integers(3, SZ - 3, n)
    plants = ["minecraft:short_grass", "minecraft:fern", "minecraft:blue_orchid", "minecraft:azure_bluet", "minecraft:allium", "minecraft:lily_of_the_valley",
              "minecraft:cornflower", "minecraft:large_fern[half=lower]", "minecraft:short_grass"]
    for x, z in zip(xs, zs):
        if water[z, x] or abs(x - CX) < 40 and abs(z - CZ) < 40:
            continue
        y = int(H[z, x]) + 1
        if W.a[y, z, x] != 0:
            continue
        u = rng.random()
        if u < 0.14:
            W.set(x, y, z, f"minecraft:{CAND[int(rng.integers(0, len(CAND)))]}_candle[candles={int(rng.integers(1, 5))},lit=true,waterlogged=false]")
        elif u < 0.16:
            mushroom(W, x, z, y - 1, rng)
        else:
            p = plants[int(rng.integers(0, len(plants)))]
            if p.endswith("[half=lower]") and W.a[y + 1, z, x] == 0:
                W.set(x, y, z, p); W.set(x, y + 1, z, p.replace("lower", "upper"))
            elif not p.endswith("[half=lower]"):
                W.set(x, y, z, p)


def forest(W, H, water, rng, n=1700):
    placed = 0
    for _ in range(n * 3):
        if placed >= n:
            break
        x, z = int(rng.integers(12, SX - 12)), int(rng.integers(12, SZ - 12))
        if water[z - 2:z + 3, x - 2:x + 3].any():
            continue
        d = np.hypot(x - CX, z - CZ)
        if d < 95 or (abs(x - 570) < 40 and abs(z - 250) < 40):
            continue
        gy = int(H[z, x])
        if W.a[gy + 1:gy + 4, z, x].any():
            continue
        giant_tree(W, x, z, gy, int(rng.integers(26, 52)), int(rng.integers(7, 12)), rng)
        placed += 1
    return placed


def hometree(W, H, rng):
    gy = GROUND_TOP + 1
    R, Hh = 27, 150
    # trunk: hollow cylinder
    for y in range(gy, gy + Hh):
        rr = R - (4 if y > gy + 110 else 0) + int(2 * np.sin(y / 6.0))
        disk(W, CX, CZ, rr, y, y, LOG, hollow=True)
        disk(W, CX, CZ, rr - 3, y, y, "minecraft:stripped_jungle_log[axis=y]", hollow=True)
    # buttress roots radiating out
    for k in range(10):
        a = k * 2 * np.pi / 10
        for s in range(R - 4, R + 46):
            hh = max(2, int(26 * (1 - (s - R + 4) / 50.0)))
            px, pz = int(CX + s * np.cos(a)), int(CZ + s * np.sin(a))
            for w in (-1, 0, 1):
                qx, qz = px + int(-w * np.sin(a)), pz + int(w * np.cos(a))
                W.fill(qx, gy, qz, qx, gy + hh, qz, LOG)
    # interior living floors every 14 blocks, with a 7-wide well in the middle
    for f in range(0, 9):
        y = gy + f * 14
        disk(W, CX, CZ, R - 4, y, y, "minecraft:jungle_planks")
        disk(W, CX, CZ, 6, y, y, AIR)
        for k in range(8):
            a = k * np.pi / 4
            W.set(int(CX + (R - 6) * np.cos(a)), y + 1, int(CZ + (R - 6) * np.sin(a)), "minecraft:lantern[hanging=false]")
        disk(W, CX, CZ, R - 4, y + 13, y + 13, SEA) if f == 0 else None
    for y in range(gy, gy + 9 * 14):                              # central ladder shaft
        W.set(CX - 6, y, CZ, "minecraft:ladder[facing=east,waterlogged=false]")
    for k in range(4):                                            # 4 arched entrances
        a = k * np.pi / 2
        ex, ez = int(CX + (R + 1) * np.cos(a)), int(CZ + (R + 1) * np.sin(a))
        for s in range(-4, R):
            px, pz = int(CX + (R - s + 1) * np.cos(a)), int(CZ + (R - s + 1) * np.sin(a))
            for w in range(-3, 4):
                qx, qz = px + int(-w * np.sin(a)), pz + int(w * np.cos(a))
                W.fill(qx, gy + 1, qz, qx, gy + 6 - abs(w) // 2, qz, AIR)
    # glow veins on the outside of the trunk
    for y in range(gy + 4, gy + Hh - 10, 3):
        for k in range(24):
            a = k * 2 * np.pi / 24 + y * 0.07
            W.set(int(CX + (R + 1) * np.cos(a)), y, int(CZ + (R + 1) * np.sin(a)), "minecraft:verdant_froglight[axis=y]" if k % 3 else "minecraft:pearlescent_froglight[axis=y]")
    # canopy: a huge umbrella
    top = gy + Hh
    for dy in range(6):
        rr = 92 - dy * 7
        disk(W, CX, CZ, rr, top + dy, top + dy, CAN if dy < 4 else CAN2)
    disk(W, CX, CZ, 24, top + 6, top + 8, CAN)
    for k in range(260):
        a = rng.uniform(0, 6.28); rr = rng.uniform(20, 88)
        vx, vz = int(CX + rr * np.cos(a)), int(CZ + rr * np.sin(a))
        if W.a[top, vz, vx] != 0:
            vine_hang(W, vx, top, vz, int(rng.integers(10, 38)))
    for k in range(90):                                          # glowing nodes under the canopy
        a = rng.uniform(0, 6.28); rr = rng.uniform(15, 85)
        W.set(int(CX + rr * np.cos(a)), top - 1, int(CZ + rr * np.sin(a)), FRO if k % 2 else FRO2)
    return top


def bond_pad(W, x, y, z, label):
    """BOND PAD: glowing disc; a repeating command block under it calls riftbrek:pandora/pad (gives the Na'vi kit)"""
    disk(W, x, z, 3, y, y, "minecraft:light_blue_glazed_terracotta")
    disk(W, x, z, 1, y, y, "minecraft:sea_lantern")
    cmdblock(W, x, y - 1, z, "function riftbrek:pandora/pad")
    sign(W, x + 4, y + 1, z, [label, "stand on the", "glowing disc to", "become Na'vi"], rot=4, color="cyan")
    TOTAL_PADS.append((x, y, z, label))


def hut(W, x, z, gy, rng):
    r = 5
    disk(W, x, z, r, gy, gy, "minecraft:stripped_jungle_log[axis=y]")
    disk(W, x, z, r, gy + 1, gy + 5, "minecraft:jungle_planks", hollow=True)
    disk(W, x, z, r - 1, gy + 1, gy + 5, AIR)
    for dy in range(6):
        disk(W, x, z, max(r + 1 - dy, 0), gy + 6 + dy, gy + 6 + dy, HAY)
    W.fill(x - 1, gy + 1, z + r - 1, x + 1, gy + 3, z + r, AIR)               # doorway (south)
    W.set(x, gy + 1, z - 2, "minecraft:blue_bed[facing=south,occupied=false,part=head]"); W.set(x, gy + 1, z - 1, "minecraft:blue_bed[facing=south,occupied=false,part=foot]")
    W.set(x + 2, gy + 1, z, "minecraft:crafting_table"); W.set(x - 2, gy + 1, z + 1, "minecraft:barrel[facing=up,open=false]")
    W.set(x, gy + 5, z, "minecraft:lantern[hanging=true]")
    for k in range(4):
        W.set(x + int(rng.integers(-2, 3)), gy + 1, z + int(rng.integers(-1, 3)), "minecraft:flowering_azalea_leaves[distance=7,persistent=true,waterlogged=false]")


def village(W, H, rng):
    n = 0
    for k in range(26):
        a = k * 2 * np.pi / 26 + rng.uniform(-0.05, 0.05)
        rad = 135 + 30 * (k % 3)
        x, z = int(CX + rad * np.cos(a)), int(CZ + rad * np.sin(a))
        if z > 540 and abs(z - 600) < 50:
            continue
        gy = int(H[z, x])
        W.fill(x - 6, gy + 1, z - 6, x + 6, gy + 12, z + 6, AIR)
        hut(W, x, z, gy, rng); n += 1
    return n


def island(W, cx, cz, cy, r, rng):
    depth = int(r * 1.5)
    for dy in range(depth):
        rr = int(r * (1 - dy / depth) ** 0.8)
        if rr < 1:
            break
        disk(W, cx, cz, rr, cy - dy, cy - dy, "minecraft:tuff" if dy % 3 else "minecraft:stone")
    disk(W, cx, cz, r, cy + 1, cy + 1, "minecraft:moss_block")
    disk(W, cx, cz, r - 3, cy + 2, cy + 2, "minecraft:grass_block[snowy=false]") if False else None
    for k in range(int(r * 3)):
        a = rng.uniform(0, 6.28); rr = rng.uniform(0, r - 1)
        x, z = int(cx + rr * np.cos(a)), int(cz + rr * np.sin(a))
        if 1 < x < SX - 2 and 1 < z < SZ - 2 and W.a[cy + 2, z, x] == 0:
            u = rng.random()
            if u < 0.35:
                W.set(x, cy + 2, z, f"minecraft:{CAND[int(rng.integers(0, len(CAND)))]}_candle[candles=3,lit=true,waterlogged=false]")
            elif u < 0.5:
                giant_tree(W, x, z, cy + 1, int(rng.integers(10, 20)), int(rng.integers(4, 7)), rng)
            else:
                W.set(x, cy + 2, z, "minecraft:fern")
    for k in range(int(r * 1.2)):                                 # vines hanging off the rim
        a = rng.uniform(0, 6.28)
        x, z = int(cx + (r - 1) * np.cos(a)), int(cz + (r - 1) * np.sin(a))
        if 1 < x < SX - 2 and 1 < z < SZ - 2:
            vine_hang(W, x, cy, z, int(rng.integers(8, 26)))
    # waterfall: thin glass column + mist at the foot
    a = rng.uniform(0, 6.28)
    x, z = int(cx + (r - 2) * np.cos(a)), int(cz + (r - 2) * np.sin(a))
    W.fill(x, cy - 40, z, x, cy, z, "minecraft:light_blue_stained_glass")


def mountains(W, rng):
    out = []
    placed = 0
    for _ in range(200):
        if placed >= 17:
            break
        a = rng.uniform(0, 6.28); rad = rng.uniform(130, 340)
        cx, cz = int(CX + rad * np.cos(a)), int(CZ + rad * np.sin(a))
        r = int(rng.integers(16, 42))
        if cx < r + 4 or cz < r + 4 or cx > SX - r - 4 or cz > SZ - r - 4:
            continue
        if any(np.hypot(cx - o[0], cz - o[1]) < o[2] + r + 20 for o in out):
            continue
        cy = int(rng.integers(190, 290))
        island(W, cx, cz, cy, r, rng)
        out.append((cx, cz, r, cy)); placed += 1
    return out


def tree_of_souls(W, H, rng):
    x, z = 570, 250
    gy = GROUND_TOP + 1
    for y in range(gy, gy + 44):
        disk(W, x, z, 4 + (1 if y < gy + 8 else 0), y, y, "minecraft:stripped_jungle_log[axis=y]")
    disk(W, x, z, 14, gy + 44, gy + 46, "minecraft:purple_stained_glass")
    for k in range(190):                                          # drooping luminous strands
        a = rng.uniform(0, 6.28); rr = rng.uniform(3, 14)
        vx, vz = int(x + rr * np.cos(a)), int(z + rr * np.sin(a))
        if W.a[gy + 44, vz, vx] != 0:
            L_ = int(rng.integers(16, 40))
            for i in range(L_):
                W.set(vx, gy + 43 - i, vz, "minecraft:pearlescent_froglight[axis=y]" if i % 5 == 0 else "minecraft:chain[axis=y]" if False else "minecraft:white_stained_glass_pane[east=false,north=false,south=false,up=false,waterlogged=false,west=false]")
    disk(W, x, z, 24, GROUND_TOP, GROUND_TOP, "minecraft:cyan_stained_glass")
    for k in range(16):
        a = k * np.pi / 8
        W.set(int(x + 27 * np.cos(a)), GROUND_TOP + 1, int(z + 27 * np.sin(a)), "minecraft:sea_lantern")
    sign(W, x + 8, gy, z + 8, ["TREE OF SOULS", "Eywa listens", "", ""], rot=0, color="cyan")


def roosts(W, H, rng):
    out = []
    for k in range(6):
        a = k * np.pi / 3 + 0.4
        x, z = int(CX + 300 * np.cos(a)), int(CZ + 300 * np.sin(a))
        if not (30 < x < SX - 30 and 30 < z < SZ - 30):
            x = int(np.clip(x, 40, SX - 40)); z = int(np.clip(z, 40, SZ - 40))
        gy = int(H[z, x]); top = gy + 72
        for y in range(gy, top):
            rr = 9 - (y - gy) // 16
            disk(W, x, z, rr, y, y, "minecraft:tuff" if y % 5 else "minecraft:stone")
        disk(W, x, z, 7, top, top, "minecraft:moss_block")
        for s in range(8):                                        # wooden perches
            ang = s * np.pi / 4
            for q in range(5, 12):
                W.set(int(x + q * np.cos(ang)), top - 3, int(z + q * np.sin(ang)), LOGX if abs(np.cos(ang)) > 0.5 else LOGZ)
        W.fill(x - 4, gy + 1, z - 4, x - 4, top, z - 4, "minecraft:ladder[facing=east,waterlogged=false]")
        W.fill(x - 5, gy + 1, z - 4, x - 5, top, z - 4, "minecraft:jungle_planks")
        bond_pad(W, x + 1, top, z + 1, "IKRAN ROOST %d" % (k + 1))
        out.append((x, z, top))
    return out


def bridges(W, rng):
    """rope bridges from the Hometree out to the nearest roost spurs"""
    n = 0
    for k in range(4):
        a = k * np.pi / 2 + np.pi / 4
        y = GROUND_TOP + 60
        for s in range(30, 130):
            px, pz = int(CX + s * np.cos(a)), int(CZ + s * np.sin(a))
            sag = int(3 * np.sin((s - 30) / 100.0 * np.pi))
            W.fill(px, y - sag, pz, px, y - sag, pz, SLB if False else "minecraft:jungle_planks")
            nx, nz = int(-np.sin(a) * 2), int(np.cos(a) * 2)
            W.set(px + nx, y - sag + 1, pz + nz, "minecraft:jungle_fence[east=false,north=false,south=false,waterlogged=false,west=false]")
            W.set(px - nx, y - sag + 1, pz - nz, "minecraft:jungle_fence[east=false,north=false,south=false,waterlogged=false,west=false]")
            if s % 8 == 0:
                W.set(px, y - sag + 2, pz, "minecraft:lantern[hanging=false]")
        n += 1
    return n


def paths(W, H):
    for k in range(8):
        a = k * np.pi / 4
        for s in range(30, 300):
            px, pz = int(CX + s * np.cos(a)), int(CZ + s * np.sin(a))
            if 0 < px < SX - 1 and 0 < pz < SZ - 1:
                gy = int(H[pz, px])
                if W.a[gy, pz, px] != W.B("minecraft:water[level=0]") and W.a[gy, pz, px] != W.B("minecraft:clay"):
                    W.fill(px - 1, gy, pz - 1, px + 1, gy, pz + 1, "minecraft:packed_mud")


def build_world(seed=2024):
    rng = np.random.default_rng(seed)
    W = World(SX, SY, SZ)
    log = lambda m: print("  %s" % m, flush=True)
    H, water = terrain(W, rng); log("terrain + river")
    paths(W, H); log("paths")
    tree_of_souls(W, H, rng); log("tree of souls + pond")
    top = hometree(W, H, rng); log("hometree")
    nh = village(W, H, rng); log("village huts %d" % nh)
    nt = forest(W, H, water, rng); log("giant trees %d" % nt)
    flora(W, H, water, rng); log("glow flora")
    ms = mountains(W, rng); log("hallelujah mountains %d" % len(ms))
    rs = roosts(W, H, rng); log("ikran roosts %d" % len(rs))
    nb = bridges(W, rng); log("rope bridges %d" % nb)
    bond_pad(W, CX + 31, GROUND_TOP + 1, CZ, "HOMETREE")
    bond_pad(W, CX + 128, int(H[CZ, CX + 128]) + 1, CZ - 3, "VILLAGE")
    sign(W, CX + 31, GROUND_TOP + 1, CZ + 6, ["PANDORA", "Welcome, Na'vi", "bond pad ->", ""], rot=0, color="cyan")
    # the world-tree probe blocks for the verifier
    PROBES.extend([dict(label="bond pad: Hometree (command block)", x=CX + 31, y=GROUND_TOP, z=CZ, block="minecraft:repeating_command_block")])
    return W


def main(out_dir):
    W = build_world()
    os.makedirs(out_dir, exist_ok=True)
    path = os.path.join(out_dir, "RIFTBREK_PANDORA.litematic")
    bits, total = W.save(path, "Pandora", "RIFTBREK Design", "768x768 Na'vi homeland: Hometree, Tree of Souls, village, Ikran roosts, floating Hallelujah mountains, bioluminescent forest. Origin X 10240 Z 8192.", region_name="Pandora")
    json.dump(dict(pads=TOTAL_PADS), open(os.path.join(out_dir, "pandora_info.json"), "w"), indent=1)
    print("palette", len(W.palette), "bits", bits, "solid", total, "tiles", len(W.tiles), "pads", len(TOTAL_PADS))
    return W, path


if __name__ == "__main__":
    main(sys.argv[1] if len(sys.argv) > 1 else "dist")
