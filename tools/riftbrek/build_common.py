"""Shared building helpers for the schematic."""
import math
import numpy as np
from . import layout as L
from .nbt import Byte, Long

GY = L.GY
GROUND_TOP = L.GROUND_TOP

# ---- materials ---------------------------------------------------------------------------
AIR = "minecraft:air"
BRK = "minecraft:polished_blackstone_bricks"
BRK2 = "minecraft:cracked_polished_blackstone_bricks"
PB = "minecraft:polished_blackstone"
DT = "minecraft:deepslate_tiles"
DB = "minecraft:deepslate_bricks"
CH = "minecraft:chiseled_polished_blackstone"
PU = "minecraft:purple_concrete"
BL = "minecraft:blue_concrete"
WH = "minecraft:white_concrete"
BK = "minecraft:black_concrete"
GLOW = "minecraft:crying_obsidian"
SEA = "minecraft:sea_lantern"
PG = "minecraft:purple_stained_glass"
BG = "minecraft:blue_stained_glass"
LG = "minecraft:light_blue_stained_glass"
TG = "minecraft:tinted_glass"
GLS = "minecraft:glass"
QZ = "minecraft:quartz_block"
SQZ = "minecraft:smooth_quartz"
AME = "minecraft:amethyst_block"
OBS = "minecraft:obsidian"
IB = "minecraft:iron_bars"
SLAB_BRK = "minecraft:polished_blackstone_brick_slab[type=bottom]"


def stairs(kind, facing, half="bottom"):
    return f"minecraft:{kind}_stairs[facing={facing},half={half},shape=straight,waterlogged=false]"


def cmdblock(W, x, y, z, command, kind="repeating", facing="up"):
    st = {"repeating": "repeating_command_block", "impulse": "command_block", "chain": "chain_command_block"}[kind]
    W.set(x, y, z, f"minecraft:{st}[conditional=false,facing={facing}]")
    W.tile(x, y, z, {"id": "minecraft:command_block", "Command": command, "auto": Byte(1), "TrackOutput": Byte(0),
                     "powered": Byte(0), "conditionMet": Byte(0), "SuccessCount": 0, "LastOutput": "",
                     "UpdateLastExecution": Byte(1), "LastExecution": Long(0)})


def sign(W, x, y, z, lines, rot=0, wall=None, wood="crimson", color="purple"):
    """standing sign (rot 0..15) or wall sign (wall='north'/..)."""
    lines = (list(lines) + ["", "", "", ""])[:4]
    if wall:
        W.set(x, y, z, f"minecraft:{wood}_wall_sign[facing={wall},waterlogged=false]")
    else:
        W.set(x, y, z, f"minecraft:{wood}_sign[rotation={rot},waterlogged=false]")
    face = {"has_glowing_text": Byte(1), "color": color, "messages": lines}
    back = {"has_glowing_text": Byte(0), "color": "black", "messages": ["", "", "", ""]}
    W.tile(x, y, z, {"id": "minecraft:sign", "is_waxed": Byte(1), "front_text": face, "back_text": back})


def chest(W, x, y, z, facing="north", items=None):
    W.set(x, y, z, f"minecraft:chest[facing={facing},type=single,waterlogged=false]")
    if items:
        W.tile(x, y, z, {"id": "minecraft:chest", "Items": [
            {"Slot": Byte(i), "id": nm, "count": c} for i, (nm, c) in enumerate(items)]})


def hopper(W, x, y, z, facing="down"):
    W.set(x, y, z, f"minecraft:hopper[facing={facing},enabled=true]")


def door_block(W, x, y, z, facing, hinge):
    W.set(x, y, z, f"minecraft:iron_door[facing={facing},half=lower,hinge={hinge},open=false,powered=false]")
    W.set(x, y + 1, z, f"minecraft:iron_door[facing={facing},half=upper,hinge={hinge},open=false,powered=false]")


GATES = []      # (tier, width, x, y, z) for the test report


def gate(W, tier, x, y, z, width=1, facing="north", frame=BRK, clear_z=(), clear_h=5):
    """Command-block access gate in a wall that runs along X (passage along Z).
    doors at y..y+1 (x..x+width-1), power slot row at y+2 (iron bars = closed), command block at y+3."""
    assert width in L.DOOR_WIDTHS
    for cz in clear_z:                                       # open the wall behind / in front of the door plane
        W.fill(x, y, cz, x + width - 1, y + clear_h - 1, cz, AIR)
    W.fill(x - 1, y, z, x + width, y + 3, z, frame)        # frame / lintel row first
    for i in range(width):
        door_block(W, x + i, y, z, facing, "left" if i % 2 == 0 else "right")
        W.set(x + i, y + 2, z, IB)
    cmdblock(W, x, y + 3, z, "function riftbrek:door/%s%s" % (tier, "" if width == 1 else "_w%d" % width))
    # glow trim
    W.set(x - 1, y + 2, z, GLOW); W.set(x + width, y + 2, z, GLOW)
    GATES.append((tier, width, x, y, z))


# ---- geometry helpers --------------------------------------------------------------------
def disk(W, cx, cz, r, y0, y1, b, hollow=False):
    xs = np.arange(max(0, cx - r), min(W.sx, cx + r + 1))
    zs = np.arange(max(0, cz - r), min(W.sz, cz + r + 1))
    X, Z = np.meshgrid(xs, zs)
    m = (X - cx) ** 2 + (Z - cz) ** 2 <= r * r + r
    if hollow:
        m &= ~((X - cx) ** 2 + (Z - cz) ** 2 <= (r - 1) ** 2 + (r - 1))
    bi = W.B(b)
    sub = W.a[y0:y1 + 1, zs[0]:zs[-1] + 1, xs[0]:xs[-1] + 1]
    sub[:, m] = bi


def spire(W, cx, cz, r0, y0, h, body=BK, edge=GLOW, tip=SEA):
    """square pyramid, glowing corner edges, lantern tip."""
    for t in range(h):
        r = max(0, int(round(r0 * (1 - t / h))))
        W.fill(cx - r, y0 + t, cz - r, cx + r, y0 + t, cz + r, body)
        if r > 0:
            for (ex, ez) in ((cx - r, cz - r), (cx - r, cz + r), (cx + r, cz - r), (cx + r, cz + r)):
                W.set(ex, y0 + t, ez, edge)
    W.set(cx, y0 + h, cz, tip)
    W.set(cx, y0 + h + 1, cz, "minecraft:lightning_rod[facing=up,powered=false,waterlogged=false]")


def merlons(W, x0, z0, x1, z1, y, b=BRK, step=2):
    """crenellation on the top perimeter (rect ring of 1-thick)."""
    for x in range(x0, x1 + 1, step * 2):
        W.fill(x, y, z0, min(x + step - 1, x1), y, z0, b)
        W.fill(x, y, z1, min(x + step - 1, x1), y, z1, b)
    for z in range(z0, z1 + 1, step * 2):
        W.fill(x0, y, z, x0, y, min(z + step - 1, z1), b)
        W.fill(x1, y, z, x1, y, min(z + step - 1, z1), b)


def windows_ring(W, x0, z0, x1, z1, y, h=3, glass=PG, step=5, wd=2, skip=()):
    """window slits around a rectangular facade at height y..y+h-1"""
    for x in range(x0 + 3, x1 - 2, step):
        for (z, _) in ((z0, 0), (z1, 1)):
            if any(a <= x <= b and zz == z for (a, b, zz) in skip):
                continue
            W.fill(x, y, z, x + wd - 1, y + h - 1, z, glass)
    for z in range(z0 + 3, z1 - 2, step):
        for x in (x0, x1):
            W.fill(x, y, z, x, y + h - 1, z + wd - 1, glass)


def shell(W, x0, z0, x1, z1, floors, fh=10, wall=BRK, floor_b=DT, roof=BRK, thick=2, y0=None):
    """hollow multi-storey shell; storeys of height fh (air fh-1 + slab). returns top y."""
    y0 = GY if y0 is None else y0
    top = y0 + floors * fh - 1
    W.fill(x0, y0, z0, x1, top, z1, wall)
    W.fill(x0 + thick, y0, z0 + thick, x1 - thick, top, z1 - thick, AIR)
    for f in range(floors):
        yy = y0 + f * fh + fh - 1
        W.fill(x0 + thick, yy, z0 + thick, x1 - thick, yy, z1 - thick, floor_b if f < floors - 1 else roof)
    return top


def lattice_lights(W, x0, z0, x1, z1, y, step=8, off=4, b=SEA):
    for x in range(x0 + off, x1, step):
        for z in range(z0 + off, z1, step):
            W.set(x, y, z, b)


def partitions(W, x0, z0, x1, z1, y, h=8, pitch=24, wall=BRK, gap=5, gh=5):
    """internal partition walls on a grid with arch gaps (single storey at y..y+h-1)."""
    xs = list(range(x0 + pitch, x1 - 4, pitch))
    zs = list(range(z0 + pitch, z1 - 4, pitch))
    for x in xs:
        W.fill(x, y, z0 + 1, x, y + h - 1, z1 - 1, wall)
    for z in zs:
        W.fill(x0 + 1, y, z, x1 - 1, y + h - 1, z, wall)
    # door gaps
    for x in xs:
        for z in range(z0 + pitch // 2, z1 - 3, pitch):
            W.fill(x, y, z - gap // 2, x, y + gh - 1, z + gap // 2, AIR)
    for z in zs:
        for x in range(x0 + pitch // 2, x1 - 3, pitch):
            W.fill(x - gap // 2, y, z, x + gap // 2, y + gh - 1, z, AIR)


def ladder_shaft(W, x, z, y0, y1, facing="east"):
    """vertical ladder in cell (x,z) from y0..y1; attached to the block opposite of 'facing'."""
    W.fill(x, y0, z, x, y1, z, AIR)
    for y in range(y0, y1 + 1):
        W.set(x, y, z, f"minecraft:ladder[facing={facing},waterlogged=false]")


def tree(W, x, z, kind="cherry", h=7):
    log = f"minecraft:{kind}_log[axis=y]"
    leaf = f"minecraft:{kind}_leaves[distance=1,persistent=true,waterlogged=false]"
    W.fill(x, GY, z, x, GY + h - 1, z, log)
    r = 3
    for dy in range(-1, 4):
        rr = r - (1 if dy >= 2 else 0) - (1 if dy == 3 else 0)
        for dx in range(-rr, rr + 1):
            for dz in range(-rr, rr + 1):
                if dx * dx + dz * dz <= rr * rr + 1 and not (dx == 0 and dz == 0 and dy < 2):
                    if W.a[GY + h - 2 + dy, z + dz, x + dx] == 0:
                        W.set(x + dx, GY + h - 2 + dy, z + dz, leaf)
