"""THREE MORE CITIES (768 x 768 each), one generator with three themes:
  FROSTHOLM   - snow / ice city: ice castle with spires, frozen lake, snow-roofed timber houses, igloo domes, spruce forest
  SANDSPIRE   - desert city: 3 stepped pyramids with chambers, obelisks, domed palace, oasis with palms, bazaar, sandstone houses
  EMBERFORGE  - volcanic forge city: lava moat and lava falls, the Forge Citadel with chimneys, basalt pillars, anvil statue, blackstone houses
Each has: terrain, a crenellated curtain wall with 4 command-block gatehouses, a street grid, ~200 furnished houses, a keep/landmarks, and a full
underground (build_cityunder: station hub, tunnels, minecart ring line, gated treasury, hatches).
Placement: row 2 south of the Pipeline wall - Frostholm X 8192, Sandspire X 9216, Emberforge X 10240; all Z 9728."""
import sys, os, json
import numpy as np
from .build_common import *
from . import build_common as C
from .world import World
from . import build_cityunder as CU

SX = SZ = 768
SY = 384
CX = CZ = 384

THEMES = {
    "frostholm": dict(title="FROSTHOLM", wall="minecraft:stone_bricks", wall2="minecraft:snow_block", floor="minecraft:spruce_planks", roof="minecraft:snow_block", trim="minecraft:spruce_log[axis=y]",
                      glow="minecraft:sea_lantern", glass="minecraft:light_blue_stained_glass", top="minecraft:snow_block", sub="minecraft:dirt", road="minecraft:packed_ice", accent="minecraft:blue_ice"),
    "sandspire": dict(title="SANDSPIRE", wall="minecraft:sandstone", wall2="minecraft:cut_sandstone", floor="minecraft:smooth_sandstone", roof="minecraft:terracotta", trim="minecraft:chiseled_sandstone",
                      glow="minecraft:glowstone", glass="minecraft:orange_stained_glass", top="minecraft:sand", sub="minecraft:sandstone", road="minecraft:smooth_sandstone", accent="minecraft:gold_block"),
    "emberforge": dict(title="EMBERFORGE", wall="minecraft:blackstone", wall2="minecraft:polished_blackstone_bricks", floor="minecraft:polished_blackstone", roof="minecraft:nether_bricks", trim="minecraft:basalt[axis=y]",
                       glow="minecraft:shroomlight", glass="minecraft:red_stained_glass", top="minecraft:netherrack", sub="minecraft:netherrack", road="minecraft:polished_basalt[axis=y]", accent="minecraft:magma_block"),
}


def stairs_(kind, facing, half="bottom"):
    return f"minecraft:{kind}_stairs[facing={facing},half={half},shape=straight,waterlogged=false]"


def terrain(W, T, rng, ground=GROUND_TOP):
    W.fill(0, 0, 0, SX - 1, ground - 5, SZ - 1, "minecraft:deepslate")
    W.fill(0, ground - 4, 0, SX - 1, ground - 1, SZ - 1, T["sub"])
    W.fill(0, ground, 0, SX - 1, ground, SZ - 1, T["top"])
    # gentle dunes / drifts outside the walls
    z, x = np.mgrid[0:SZ, 0:SX].astype(np.float32)
    r = np.hypot(x - CX, z - CZ)
    H = (3 * np.sin(x / 31.0) * np.sin(z / 27.0) + 2 * np.sin(x / 13.0 + z / 17.0)) * np.clip((r - 330) / 40.0, 0, 1)
    H = np.round(H).astype(int)
    top = W.B(T["top"])
    for dy in (1, 2, 3, 4, 5):
        m = H >= dy
        W.a[ground + dy][m] = top
    return


def road(W, T, x0, z0, x1, z1):
    W.fill(x0, GROUND_TOP, z0, x1, GROUND_TOP, z1, T["road"])
    if x1 - x0 > z1 - z0:
        for x in range(x0 + 6, x1, 24):
            W.fill(x, GY, z0, x, GY + 3, z0, "minecraft:polished_blackstone_wall[east=none,north=none,south=none,up=true,waterlogged=false,west=none]")
            W.set(x, GY + 4, z0, T["glow"] if "shroom" not in T["glow"] else "minecraft:sea_lantern")
    else:
        for z in range(z0 + 6, z1, 24):
            W.fill(x0, GY, z, x0, GY + 3, z, "minecraft:polished_blackstone_wall[east=none,north=none,south=none,up=true,waterlogged=false,west=none]")
            W.set(x0, GY + 4, z, T["glow"] if "shroom" not in T["glow"] else "minecraft:sea_lantern")


def house(W, T, x0, z0, w, d, floors, rng, facing="south"):
    x1, z1 = x0 + w - 1, z0 + d - 1
    fh = 6
    top = shell(W, x0, z0, x1, z1, floors, fh, wall=T["wall"], floor_b=T["floor"], roof=T["floor"], thick=1)
    for k in range(w // 2 + 2):                                         # gabled roof
        if x0 + k > x1 - k:
            break
        W.fill(x0 + k, top + 1 + k, z0 - 1, x1 - k, top + 1 + k, z1 + 1, T["roof"])
    for f in range(floors):
        yy = GY + f * fh
        windows_ring(W, x0, z0, x1, z1, yy + 2, h=2, glass=T["glass"], step=5, wd=2)
    cx = (x0 + x1) // 2
    W.fill(cx - 1, GY, z1, cx + 1, GY + 2, z1, AIR)                      # doorway (south)
    W.set(x0 + 2, GY, z0 + 2, "minecraft:red_bed[facing=south,occupied=false,part=head]"); W.set(x0 + 2, GY, z0 + 3, "minecraft:red_bed[facing=south,occupied=false,part=foot]")
    W.set(x1 - 2, GY, z0 + 2, "minecraft:chest[facing=south,type=single,waterlogged=false]")
    W.set(x1 - 2, GY, z0 + 4, "minecraft:crafting_table")
    W.set(cx, GY + fh - 2, (z0 + z1) // 2, "minecraft:lantern[hanging=true]")
    if floors > 1:
        ladder_shaft(W, x0 + 1, z0 + 1, GY, top - 1, "east")
    return top


def tower(W, T, cx, cz, r, h, cap="cone"):
    for y in range(GY, GY + h):
        disk(W, cx, cz, r, y, y, T["wall2"] if (y - GY) % 10 else T["wall"], hollow=True)
        if (y - GY) % 9 == 4:
            for k in range(8):
                a = k * np.pi / 4
                W.set(int(cx + (r - 1) * np.cos(a)), y, int(cz + (r - 1) * np.sin(a)), T["glow"])
    for y in range(GY, GY + h):
        W.set(cx - r + 1, y, cz, "minecraft:ladder[facing=east,waterlogged=false]")
    for f in range(0, h, 12):
        disk(W, cx, cz, r - 1, GY + f, GY + f, T["floor"])
    if cap == "cone":
        for k in range(r + 1):
            disk(W, cx, cz, r - k, GY + h + k, GY + h + k, T["roof"])
    else:
        disk(W, cx, cz, r + 1, GY + h, GY + h, T["wall"])


def city_wall(W, T, gates=True):
    a, b, t, h = 30, SX - 31, 8, 26
    for (x0, z0, x1, z1) in ((a, a, b, a + t - 1), (a, b - t + 1, b, b), (a, a, a + t - 1, b), (b - t + 1, a, b, b)):
        W.fill(x0, GY, z0, x1, GY + h, z1, T["wall"])
    for x in range(a, b + 1, 2):
        W.fill(x, GY + h + 1, a, x, GY + h + 2, a + 1, T["wall2"]); W.fill(x, GY + h + 1, b - 1, x, GY + h + 2, b, T["wall2"])
    for z in range(a, b + 1, 2):
        W.fill(a, GY + h + 1, z, a + 1, GY + h + 2, z, T["wall2"]); W.fill(b - 1, GY + h + 1, z, b, GY + h + 2, z, T["wall2"])
    for (x, z) in ((a, a), (b, a), (a, b), (b, b)):
        tower(W, T, x, z, 8, 44)
    for k in range(a + 40, b - 20, 60):                                  # wall towers
        for (x, z) in ((k, a + 3), (k, b - 3), (a + 3, k), (b - 3, k)):
            tower(W, T, x, z, 4, 34, cap="flat")
    # gatehouses (12 wide, public tier command-block doors) in the middle of each wall
    gx = CX - 6
    gate(W, "public", gx, GY, a + t // 2, 12, facing="north", frame=T["wall2"], clear_z=list(range(a, a + t)), clear_h=8)
    gate(W, "public", gx, GY, b - t // 2, 12, facing="north", frame=T["wall2"], clear_z=list(range(b - t + 1, b + 1)), clear_h=8)
    W.fill(a, GY, CZ - 6, a + t - 1, GY + 7, CZ + 5, AIR); W.fill(b - t + 1, GY, CZ - 6, b, GY + 7, CZ + 5, AIR)       # west / east gates are open arches
    W.fill(a, GY + 8, CZ - 7, a + t - 1, GY + 9, CZ + 6, T["wall2"]); W.fill(b - t + 1, GY + 8, CZ - 7, b, GY + 9, CZ + 6, T["wall2"])
    sign(W, gx + 4, GY, a - 2, [T["title"], "NORTH GATE", "public tier", ""], rot=8, color="light_blue")
    sign(W, gx + 4, GY, b + 2, [T["title"], "SOUTH GATE", "public tier", ""], rot=0, color="light_blue")


def streets(W, T):
    for k in (-3, -2, -1, 0, 1, 2, 3):
        c = CX + k * 112
        road(W, T, c - 7, 38, c + 6, SZ - 39)
        road(W, T, 38, c - 7, SX - 39, c + 6)


def houses(W, T, rng, skip_r=150):
    n = 0
    for i in range(-3, 3):
        for j in range(-3, 3):
            lx = CX + i * 112 + 14; lz = CZ + j * 112 + 14                # lot origin (98 x 98)
            if np.hypot(lx + 49 - CX, lz + 49 - CZ) < skip_r:
                continue
            if lx < 50 or lz < 50 or lx + 98 > SX - 50 or lz + 98 > SZ - 50:
                continue
            for a in range(3):
                for b in range(3):
                    if rng.random() < 0.15:
                        continue
                    w = int(rng.integers(18, 26)); d = int(rng.integers(16, 24))
                    house(W, T, lx + a * 32 + 1, lz + b * 32 + 1, w, d, int(rng.integers(1, 4)), rng); n += 1
    return n


# ----------------------------------------------------------------------------------------------- theme landmarks
def frost_landmarks(W, T, rng):
    # frozen lake west of the keep
    disk(W, 190, 384, 55, GROUND_TOP, GROUND_TOP, "minecraft:blue_ice")
    disk(W, 190, 384, 52, GROUND_TOP - 1, GROUND_TOP, "minecraft:ice")
    # ice castle (keep): 5 spires on a terrace
    W.fill(CX - 50, GY, CZ - 50, CX + 50, GY + 3, CZ + 50, "minecraft:packed_ice")
    top = shell(W, CX - 36, CZ - 36, CX + 36, CZ + 36, 6, 12, wall="minecraft:white_concrete", floor_b="minecraft:blue_ice", roof="minecraft:blue_ice", thick=3, y0=GY + 4)
    windows_ring(W, CX - 36, CZ - 36, CX + 36, CZ + 36, GY + 10, h=5, glass="minecraft:light_blue_stained_glass", step=6, wd=3)
    for f in range(6):
        lattice_lights(W, CX - 36, CZ - 36, CX + 36, CZ + 36, GY + 4 + f * 12 + 11, step=8, off=4)
    ladder_shaft(W, CX - 33, CZ - 33, GY + 4, top - 1, "east")
    gate(W, "member", CX - 6, GY + 4, CZ + 36, 12, facing="north", frame="minecraft:white_concrete", clear_z=[CZ + 35, CZ + 34, CZ + 33], clear_h=7)
    for (dx, dz, hh) in ((-36, -36, 110), (36, -36, 110), (-36, 36, 110), (36, 36, 110), (0, 0, 150)):
        spire(W, CX + dx, CZ + dz, 9 if hh < 140 else 12, GY + 4, hh, body="minecraft:white_concrete", edge="minecraft:blue_ice", tip="minecraft:sea_lantern")
    sign(W, CX - 8, GY + 4, CZ + 40, ["ICE CASTLE", "member tier", "Frostholm", ""], rot=0, color="light_blue")
    # igloo domes
    for k in range(9):
        a = k * 2 * np.pi / 9
        x, z = int(CX + 210 * np.cos(a)), int(CZ + 210 * np.sin(a))
        for dy in range(7):
            rr = int(round((7 * 7 - dy * dy) ** 0.5))
            disk(W, x, z, rr, GY + dy, GY + dy, "minecraft:snow_block", hollow=True)
        W.fill(x - 1, GY, z + 7, x + 1, GY + 2, z + 7, AIR); W.set(x, GY + 5, z, "minecraft:lantern[hanging=true]")
    # snowy spruce forest in the free corners
    for _ in range(420):
        x, z = int(rng.integers(60, SX - 60)), int(rng.integers(60, SZ - 60))
        if W.a[GY, z, x] != 0 or W.a[GROUND_TOP, z, x] != W.B(T["top"]) or W.a[GY:GY + 12, z - 3:z + 4, x - 3:x + 4].any():
            continue
        h = int(rng.integers(9, 18))
        W.fill(x, GY, z, x, GY + h, z, "minecraft:spruce_log[axis=y]")
        for k in range(h // 2):
            disk(W, x, z, max(1, 4 - k // 2), GY + h - 2 * k, GY + h - 2 * k, "minecraft:spruce_leaves[distance=1,persistent=true,waterlogged=false]")
            W.set(x, GY + h - 2 * k + 1, z, "minecraft:snow[layers=1]") if False else None


def sand_landmarks(W, T, rng):
    # three stepped pyramids at the corners of the inner city + one big in the middle
    def pyramid(cx, cz, s, gold=True):
        for k in range(s // 2):
            W.fill(cx - s // 2 + k, GY + k, cz - s // 2 + k, cx + s // 2 - k, GY + k, cz + s // 2 - k, "minecraft:sandstone" if k % 4 else "minecraft:cut_sandstone")
        W.fill(cx - s // 2 + 1, GY, cz - s // 2 + 1, cx + s // 2 - 1, GY + s // 2 - 4, cz + s // 2 - 1, AIR) if False else None
        # chamber + entrance tunnel
        W.fill(cx - 6, GY, cz - 6, cx + 6, GY + 8, cz + 6, AIR)
        W.fill(cx - 6, GY - 1, cz - 6, cx + 6, GY - 1, cz + 6, "minecraft:smooth_sandstone")
        W.fill(cx - 2, GY, cz + 6, cx + 2, GY + 4, cz + s // 2, AIR)
        W.set(cx, GY + 1, cz, "minecraft:chest[facing=south,type=single,waterlogged=false]")
        W.set(cx, GY + s // 2, cz, "minecraft:gold_block")
        for dx in (-5, 5):
            for dz in (-5, 5):
                W.set(cx + dx, GY, cz + dz, "minecraft:lantern[hanging=false]")
    pyramid(CX, CZ, 90)
    for (dx, dz) in ((-170, -170), (170, -170), (-170, 170)):
        pyramid(CX + dx, CZ + dz, 56)
    # obelisks
    for k in range(8):
        a = k * np.pi / 4 + 0.39
        x, z = int(CX + 125 * np.cos(a)), int(CZ + 125 * np.sin(a))
        W.fill(x - 1, GY, z - 1, x + 1, GY + 30, z + 1, "minecraft:smooth_sandstone")
        W.fill(x, GY + 31, z, x, GY + 34, z, "minecraft:gold_block"); W.set(x, GY + 35, z, "minecraft:sea_lantern")
    # domed palace (south of centre)
    px, pz = CX, CZ + 180
    top = shell(W, px - 40, pz - 25, px + 40, pz + 25, 3, 12, wall="minecraft:cut_sandstone", floor_b="minecraft:smooth_sandstone", roof="minecraft:smooth_sandstone", thick=2)
    for dy in range(22):
        rr = int(round((22 * 22 - dy * dy) ** 0.5))
        disk(W, px, pz, rr, top + 1 + dy, top + 1 + dy, "minecraft:gold_block" if dy % 6 == 0 else "minecraft:orange_terracotta", hollow=True)
    spire(W, px, pz, 2, top + 23, 14, body="minecraft:gold_block", edge="minecraft:gold_block", tip="minecraft:sea_lantern")
    windows_ring(W, px - 40, pz - 25, px + 40, pz + 25, GY + 4, h=4, glass="minecraft:orange_stained_glass", step=6, wd=3)
    gate(W, "member", px - 6, GY, pz - 25, 12, facing="north", frame="minecraft:cut_sandstone", clear_z=[pz - 24, pz - 23], clear_h=6)
    sign(W, px - 8, GY, pz - 28, ["SULTAN'S PALACE", "member tier", "Sandspire", ""], rot=8, color="orange")
    # oasis with palms north of the centre
    disk(W, CX, CZ - 190, 28, GROUND_TOP, GROUND_TOP, "minecraft:water[level=0]")
    disk(W, CX, CZ - 190, 30, GROUND_TOP, GROUND_TOP, "minecraft:grass_block[snowy=false]", hollow=True)
    for k in range(22):
        a = k * 2 * np.pi / 22
        x, z = int(CX + 33 * np.cos(a)), int(CZ - 190 + 33 * np.sin(a))
        h = int(rng.integers(8, 14))
        W.fill(x, GY, z, x, GY + h, z, "minecraft:jungle_log[axis=y]")
        for (dx, dz) in ((1, 0), (-1, 0), (0, 1), (0, -1), (2, 0), (-2, 0), (0, 2), (0, -2)):
            W.set(x + dx, GY + h, z + dz, "minecraft:jungle_leaves[distance=1,persistent=true,waterlogged=false]")
        W.set(x, GY + h + 1, z, "minecraft:jungle_leaves[distance=1,persistent=true,waterlogged=false]")
    # bazaar stalls (striped terracotta awnings) around the plaza
    for k in range(40):
        a = k * 2 * np.pi / 40
        x, z = int(CX + 80 * np.cos(a)), int(CZ + 80 * np.sin(a))
        col = ("red", "orange", "yellow", "white")[k % 4]
        W.fill(x - 2, GY, z - 2, x + 2, GY, z + 2, "minecraft:smooth_sandstone_slab[type=bottom,waterlogged=false]")
        for (dx, dz) in ((-2, -2), (2, -2), (-2, 2), (2, 2)):
            W.fill(x + dx, GY, z + dz, x + dx, GY + 3, z + dz, "minecraft:oak_fence[east=false,north=false,south=false,waterlogged=false,west=false]")
        W.fill(x - 2, GY + 4, z - 2, x + 2, GY + 4, z + 2, f"minecraft:{col}_terracotta")
        W.set(x, GY + 1, z, "minecraft:barrel[facing=up,open=false]"); W.set(x + 1, GY + 1, z, "minecraft:chest[facing=south,type=single,waterlogged=false]")
    for _ in range(160):                                                # cactus + dead bushes outside
        x, z = int(rng.integers(50, SX - 50)), int(rng.integers(50, SZ - 50))
        if abs(x - CX) < 150 and abs(z - CZ) < 150:
            continue
        if W.a[GY, z, x] == 0 and W.a[GROUND_TOP, z, x] == W.B(T["top"]):
            W.fill(x, GY, z, x, GY + int(rng.integers(1, 4)), z, "minecraft:cactus[age=0]")


def ember_landmarks(W, T, rng):
    # lava moat ring around the citadel
    for r in range(70, 92):
        disk(W, CX, CZ, r, GROUND_TOP - 1, GROUND_TOP, "minecraft:lava[level=0]", hollow=True) if r in (70, 91) else None
    disk(W, CX, CZ, 91, GROUND_TOP - 2, GROUND_TOP, "minecraft:lava[level=0]")
    disk(W, CX, CZ, 69, GROUND_TOP - 2, GROUND_TOP, "minecraft:polished_blackstone")
    disk(W, CX, CZ, 92, GROUND_TOP, GROUND_TOP, "minecraft:blackstone", hollow=True)
    # bridges across the moat (4)
    for k in range(4):
        a = k * np.pi / 2
        for s in range(66, 96):
            px, pz = int(CX + s * np.cos(a)), int(CZ + s * np.sin(a))
            for w in range(-3, 4):
                qx, qz = px + int(-w * np.sin(a)), pz + int(w * np.cos(a))
                W.set(qx, GROUND_TOP, qz, "minecraft:nether_bricks")
                if abs(w) == 3:
                    W.set(qx, GY, qz, "minecraft:nether_brick_fence[east=false,north=false,south=false,waterlogged=false,west=false]")
    # Forge Citadel
    top = shell(W, CX - 40, CZ - 40, CX + 40, CZ + 40, 5, 14, wall="minecraft:blackstone", floor_b="minecraft:polished_blackstone", roof="minecraft:polished_blackstone_bricks", thick=3)
    windows_ring(W, CX - 40, CZ - 40, CX + 40, CZ + 40, GY + 5, h=5, glass="minecraft:red_stained_glass", step=7, wd=3)
    for f in range(5):
        lattice_lights(W, CX - 40, CZ - 40, CX + 40, CZ + 40, GY + f * 14 + 13, step=8, off=4, b="minecraft:shroomlight")
    ladder_shaft(W, CX - 37, CZ - 37, GY, top - 1, "east")
    gate(W, "member", CX - 6, GY, CZ + 40, 12, facing="north", frame="minecraft:polished_blackstone_bricks", clear_z=[CZ + 39, CZ + 38, CZ + 37], clear_h=7)
    sign(W, CX - 8, GY, CZ + 44, ["FORGE CITADEL", "member tier", "Emberforge", ""], rot=0, color="red")
    for (dx, dz) in ((-40, -40), (40, -40), (-40, 40), (40, 40)):         # chimney towers with lava falls
        tower(W, T, CX + dx, CZ + dz, 7, 90, cap="flat")
        W.fill(CX + dx - 1, GY + 91, CZ + dz - 1, CX + dx + 1, GY + 92, CZ + dz + 1, "minecraft:lava[level=0]")
        for y in range(GY + 20, GY + 91, 3):
            W.set(CX + dx + 8, y, CZ + dz, "minecraft:lava[level=8]") if False else None
    # anvil statue + forge in the courtyard
    ax, az = CX, CZ - 60
    W.fill(ax - 5, GY, az - 3, ax + 5, GY + 3, az + 3, "minecraft:polished_blackstone")
    W.fill(ax - 2, GY + 4, az - 2, ax + 2, GY + 9, az + 2, "minecraft:blackstone")
    W.fill(ax - 8, GY + 10, az - 3, ax + 8, GY + 13, az + 3, "minecraft:blackstone")
    W.fill(ax + 8, GY + 11, az - 1, ax + 14, GY + 12, az + 1, "minecraft:blackstone")
    W.fill(ax - 4, GY + 14, az - 3, ax + 4, GY + 14, az + 3, "minecraft:magma_block")
    # lava lakes + basalt pillars outside
    for k in range(10):
        a = rng.uniform(0, 6.28); rad = rng.uniform(190, 300)
        x, z = int(CX + rad * np.cos(a)), int(CZ + rad * np.sin(a))
        if 60 < x < SX - 60 and 60 < z < SZ - 60:
            disk(W, x, z, int(rng.integers(8, 16)), GROUND_TOP - 2, GROUND_TOP, "minecraft:lava[level=0]")
    for _ in range(260):
        x, z = int(rng.integers(50, SX - 50)), int(rng.integers(50, SZ - 50))
        if np.hypot(x - CX, z - CZ) < 150 or W.a[GROUND_TOP, z, x] != W.B(T["top"]) or W.a[GY, z, x] != 0:
            continue
        h = int(rng.integers(4, 18))
        W.fill(x, GY, z, x, GY + h, z, "minecraft:basalt[axis=y]")
        if h > 9:
            W.set(x, GY + h + 1, z, "minecraft:shroomlight")
    for _ in range(180):                                                 # crimson / warped fungus trees
        x, z = int(rng.integers(50, SX - 50)), int(rng.integers(50, SZ - 50))
        if np.hypot(x - CX, z - CZ) < 150 or W.a[GY, z, x] != 0 or W.a[GROUND_TOP, z, x] != W.B(T["top"]):
            continue
        h = int(rng.integers(6, 12)); crim = rng.random() < 0.5
        W.fill(x, GY, z, x, GY + h, z, "minecraft:crimson_stem[axis=y]" if crim else "minecraft:warped_stem[axis=y]")
        disk(W, x, z, 3, GY + h, GY + h + 1, "minecraft:nether_wart_block" if crim else "minecraft:warped_wart_block")
        W.set(x, GY + h - 1, z, "minecraft:shroomlight")


LANDMARKS = {"frostholm": frost_landmarks, "sandspire": sand_landmarks, "emberforge": ember_landmarks}


def build_world(name, seed):
    T = THEMES[name]
    rng = np.random.default_rng(seed)
    W = World(SX, SY, SZ)
    C.SHELLS.clear(); C.GATES.clear()
    log = lambda m: print("  [%s] %s" % (name, m), flush=True)
    terrain(W, T, rng); log("terrain")
    streets(W, T); log("streets")
    LANDMARKS[name](W, T, rng); log("landmarks")
    n = houses(W, T, rng); log("houses %d" % n)
    city_wall(W, T); log("wall + gatehouses")
    # underground: station hub under the keep, ring line, treasury, hatches
    U = CU.city_underground(W, CX, CZ, 230, lambda x, z: GROUND_TOP, label=T["title"], extra_hatches=[(60, 60), (700, 60), (60, 700), (700, 700)])
    nc, big = CU.connectivity(W); U["components"], U["largest"] = nc, big
    log("underground: components %d largest %d" % (nc, big))
    return W, U, n


def main(name, out_dir, seed=5):
    W, U, n = build_world(name, seed)
    os.makedirs(out_dir, exist_ok=True)
    path = os.path.join(out_dir, "RIFTBREK_%s.litematic" % name.upper())
    W.save(path, THEMES[name]["title"], "RIFTBREK Design", "768x768 city: %s" % THEMES[name]["title"], region_name=THEMES[name]["title"])
    json.dump(dict(name=name, houses=n, under=U, gates=len(C.GATES)), open(os.path.join(out_dir, "%s_info.json" % name), "w"), default=list)
    print("saved", path, "tiles", len(W.tiles), "gates", len(C.GATES))
    return W, path


if __name__ == "__main__":
    main(sys.argv[1], sys.argv[2] if len(sys.argv) > 2 else "dist")
