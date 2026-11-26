"""REDSTONE HAVEN - the ground floor of Ithaca City's industrial redstone district: a hall of real, working vanilla redstone.

Everything here is plain redstone (no command blocks) and every circuit comes with a generated self-test (HAVEN_TESTS) that the
live-server test replays: levers are flipped with /setblock and the lamps are read back.

Conventions (checked on a real 1.21.11 server): a repeater/comparator `facing` points toward its INPUT; the schematic is NOT block-updated
when it is pasted, so every circuit is written in its settled all-levers-off state (torch lit flags, dust power, lamp lit flags).
"""
import re
from .build_common import *
from .build_common import NO_DECOR as C_NO

Y = GY                      # working layer (dust, levers, torches, lamps)
STONE = "minecraft:stone"
LAMP_ON = "minecraft:redstone_lamp[lit=true]"
LAMP_OFF = "minecraft:redstone_lamp[lit=false]"
HAVEN_TESTS = []            # filled by build: dicts with name, levers, steps


def lever(W, x, z, on=False, y=None):
    W.set(x, Y if y is None else y, z, f"minecraft:lever[face=floor,facing=north,powered={'true' if on else 'false'}]")


def torch(W, x, z, facing, lit):
    W.set(x, Y, z, f"minecraft:redstone_wall_torch[facing={facing},lit={'true' if lit else 'false'}]")


def dusts(W, cells, y=None):
    """cells: {(x,z): power}. connection shapes via fix_dust, then the settled power values."""
    yy = Y if y is None else y
    for (x, z) in cells:
        W.set(x, yy, z, "minecraft:redstone_wire")
    fix_dust(W, [(x, yy, z) for (x, z) in cells])
    for (x, z), p in cells.items():
        name, props = W.palette[W.a[yy, z, x]]
        s = name + "[" + ",".join(f"{k}={('%d' % p) if k == 'power' else v}" for k, v in sorted(props.items())) + "]"
        W.set(x, yy, z, s)


def lamp(W, x, z, lit, y=None):
    W.set(x, Y if y is None else y, z, LAMP_ON if lit else LAMP_OFF)


def label(W, x, z, lines):
    sign(W, x, Y, z, lines, rot=8, color="light_blue")


# ------------------------------------------------------------------------------------------------ logic gates
def gate_not(W, ox, oz):
    lever(W, ox, oz)
    dusts(W, {(ox + 1, oz): 0}); W.set(ox + 2, Y, oz, STONE); torch(W, ox + 3, oz, "east", True)
    dusts(W, {(ox + 4, oz): 15, (ox + 5, oz): 14}); lamp(W, ox + 6, oz, True)
    return dict(levers=[(ox, oz)], lamp=(ox + 6, oz), fn=lambda a: not a[0], name="NOT")


def gate_or(W, ox, oz):
    lever(W, ox, oz); lever(W, ox, oz + 2)
    dusts(W, {(ox + 1, oz): 0, (ox + 2, oz): 0, (ox + 3, oz): 0, (ox + 1, oz + 2): 0, (ox + 2, oz + 2): 0, (ox + 3, oz + 2): 0,
              (ox + 3, oz + 1): 0, (ox + 4, oz + 1): 0, (ox + 5, oz + 1): 0})
    lamp(W, ox + 6, oz + 1, False)
    return dict(levers=[(ox, oz), (ox, oz + 2)], lamp=(ox + 6, oz + 1), fn=lambda a: a[0] or a[1], name="OR")


def _inverter_row(W, ox, oz):
    lever(W, ox, oz); dusts(W, {(ox + 1, oz): 0}); W.set(ox + 2, Y, oz, STONE); torch(W, ox + 3, oz, "east", True)


def gate_and(W, ox, oz):
    _inverter_row(W, ox, oz); _inverter_row(W, ox, oz + 4)
    dusts(W, {(ox + 4, oz): 15, (ox + 4, oz + 1): 14, (ox + 4, oz + 4): 15, (ox + 4, oz + 3): 14})
    W.set(ox + 4, Y, oz + 2, STONE); torch(W, ox + 5, oz + 2, "east", False)
    dusts(W, {(ox + 6, oz + 2): 0, (ox + 7, oz + 2): 0}); lamp(W, ox + 8, oz + 2, False)
    return dict(levers=[(ox, oz), (ox, oz + 4)], lamp=(ox + 8, oz + 2), fn=lambda a: a[0] and a[1], name="AND")


def gate_nand(W, ox, oz):
    _inverter_row(W, ox, oz); _inverter_row(W, ox, oz + 4)
    dusts(W, {(ox + 4, oz): 15, (ox + 4, oz + 1): 14, (ox + 4, oz + 2): 13, (ox + 4, oz + 3): 14, (ox + 4, oz + 4): 15,
              (ox + 5, oz + 2): 12, (ox + 6, oz + 2): 11})
    lamp(W, ox + 7, oz + 2, True)
    return dict(levers=[(ox, oz), (ox, oz + 4)], lamp=(ox + 7, oz + 2), fn=lambda a: not (a[0] and a[1]), name="NAND")


def gate_nor(W, ox, oz):
    lever(W, ox, oz); lever(W, ox, oz + 2)
    dusts(W, {(ox + 1, oz): 0, (ox + 2, oz): 0, (ox + 3, oz): 0, (ox + 1, oz + 2): 0, (ox + 2, oz + 2): 0, (ox + 3, oz + 2): 0,
              (ox + 3, oz + 1): 0, (ox + 4, oz + 1): 0})
    W.set(ox + 5, Y, oz + 1, STONE); torch(W, ox + 6, oz + 1, "east", True)
    dusts(W, {(ox + 7, oz + 1): 15, (ox + 8, oz + 1): 14}); lamp(W, ox + 9, oz + 1, True)
    return dict(levers=[(ox, oz), (ox, oz + 2)], lamp=(ox + 9, oz + 1), fn=lambda a: not (a[0] or a[1]), name="NOR")


def logic_lab(W, x0, z0):
    cells = [gate_not, gate_or, gate_and, gate_nand, gate_nor]
    ox = x0
    for g in cells:
        d = g(W, ox, z0)
        HAVEN_TESTS.append(dict(kind="gate", name=d["name"], levers=d["levers"], lamp=d["lamp"], table=[
            ([int(b) for b in combo], bool(d["fn"](combo))) for combo in ([(a, b) for a in (False, True) for b in (False, True)] if len(d["levers"]) == 2 else [(False,), (True,)])]))
        label(W, ox + 3, z0 + 7, [d["name"] + " GATE", "flip the levers", "lamp = output", ""])
        W.set(ox + 3, Y - 1, z0 + 7, STONE)
        ox += 12


# ------------------------------------------------------------------------------------------------ hopper clock
def hopper_clock(W, x0, z0):
    """two hoppers pointing at each other pass one item back and forth (8-tick cooldown); a comparator reads one of them and a
    dust line drives a bar of lamps: the lamps blink every ~0.8 s"""
    A, B = (x0 + 3, z0), (x0 + 4, z0)
    W.set(*(A[0], Y, A[1]), "minecraft:hopper[enabled=true,facing=east]")
    W.tile(A[0], Y, A[1], {"id": "minecraft:hopper", "Items": [{"Slot": Byte(0), "id": "minecraft:redstone", "count": 1}], "TransferCooldown": 0})
    W.set(B[0], Y, B[1], "minecraft:hopper[enabled=true,facing=west]")
    W.tile(B[0], Y, B[1], {"id": "minecraft:hopper", "Items": [], "TransferCooldown": 0})
    for xx in (A[0], B[0]):
        W.set(xx, Y - 1, z0, "minecraft:polished_blackstone"); W.set(xx, Y, z0 - 1, "minecraft:polished_blackstone"); W.set(xx, Y, z0 + 1, "minecraft:polished_blackstone")
    W.set(x0 + 5, Y, z0, "minecraft:polished_blackstone")
    # comparator west of hopper A, input = the hopper (to its east) -> facing east; output goes west
    W.set(x0 + 2, Y, z0, "minecraft:comparator[facing=east,mode=compare,powered=true]")
    W.tile(x0 + 2, Y, z0, {"id": "minecraft:comparator", "OutputSignal": 1})
    # repeater (input = the comparator on its east side, so facing east) restores full strength; dust turns north at x0
    W.set(x0 + 1, Y, z0, "minecraft:repeater[delay=1,facing=east,locked=false,powered=true]")
    cells = {(x0, z0): 15}
    for i in range(1, 7):
        cells[(x0, z0 - i)] = 15 - i
    dusts(W, cells)
    for i in range(1, 7):
        W.set(x0, Y - 1, z0 - i, LAMP_ON)
    label(W, x0 + 3, z0 + 3, ["HOPPER CLOCK", "2 hoppers + 1 item", "comparator reads it", "lamps blink ~0.8 s"])
    W.set(x0 + 3, Y - 1, z0 + 3, STONE)
    HAVEN_TESTS.append(dict(kind="clock", name="HOPPER CLOCK", lamps=[(x0, z0 - i) for i in range(1, 7)], lamp_y=Y - 1))


# ------------------------------------------------------------------------------------------------ comparator fill meters
def fill_meter(W, mx, z0, slots, name):
    """chest -> comparator -> 14-cell dust line; every row has dust -> repeater -> lamp, so the lamp row is a bar graph of how full the chest is"""
    items = [{"Slot": Byte(i), "id": "minecraft:cobblestone", "count": 64} for i in range(slots)]
    W.set(mx, Y, z0, "minecraft:chest[facing=south,type=single,waterlogged=false]")
    W.tile(mx, Y, z0, {"id": "minecraft:chest", "Items": items})
    sig = 1 + int(slots / 27 * 14) if slots else 0
    W.set(mx, Y, z0 + 1, f"minecraft:comparator[facing=north,mode=compare,powered={'true' if sig else 'false'}]")
    W.tile(mx, Y, z0 + 1, {"id": "minecraft:comparator", "OutputSignal": sig})
    cells = {(mx, z0 + 2 + d): max(sig - d, 0) for d in range(14)}
    dusts(W, cells)
    lamps = []
    for d in range(14):
        z = z0 + 2 + d
        on = cells[(mx, z)] > 0
        # a repeater strongly powers its lamp, and a strongly powered lamp lights every lamp touching it - so the lamps zig-zag
        # (even rows east of the dust, odd rows west) and never touch each other
        if d % 2 == 0:
            W.set(mx + 1, Y, z, f"minecraft:repeater[delay=1,facing=west,locked=false,powered={'true' if on else 'false'}]"); lamp(W, mx + 2, z, on); lamps.append((mx + 2, z))
        else:
            W.set(mx - 1, Y, z, f"minecraft:repeater[delay=1,facing=east,locked=false,powered={'true' if on else 'false'}]"); lamp(W, mx - 2, z, on); lamps.append((mx - 2, z))
    label(W, mx + 4, z0, [name, "fill the chest", "bar = how full", "(1 lamp per 1/14)"])
    W.set(mx + 4, Y - 1, z0, STONE)
    HAVEN_TESTS.append(dict(kind="meter", name=name, chest=(mx, z0), lamps=lamps, lamp_y=Y, slots=slots, expect=sig))


# ------------------------------------------------------------------------------------------------ piston curtain
def piston_curtain(W, x, z0):
    """six sticky pistons in a wall (facing west, each pushing a coloured block). A dust line runs behind them and a repeater beside each
    piston powers it (dust ON a piston would pop off when the piston extends). One lever slides the whole wall out one block."""
    cols = ["purple", "blue", "white", "light_blue", "magenta", "black"]
    pz = [z0 + i * 2 for i in range(6)]
    for i, z in enumerate(pz):
        W.set(x, Y, z, "minecraft:sticky_piston[extended=false,facing=west]")
        W.set(x - 1, Y, z, f"minecraft:{cols[i]}_concrete")
        W.set(x + 1, Y, z, "minecraft:repeater[delay=1,facing=east,locked=false,powered=false]")       # input from the dust on its east, output west into the piston
    for z in range(z0, z0 + 12):
        if z not in pz:
            W.set(x + 1, Y, z, "minecraft:polished_blackstone")
    dusts(W, {(x + 2, z): 0 for z in range(z0, z0 + 12)})
    lever(W, x + 2, z0 + 12)
    label(W, x - 3, z0 + 13, ["PISTON CURTAIN", "flip the lever", "6 sticky pistons", "push the wall"])
    W.set(x - 3, Y - 1, z0 + 13, STONE)
    HAVEN_TESTS.append(dict(kind="pistons", name="PISTON CURTAIN", lever=(x + 2, z0 + 12, Y), pistons=[(x, z) for z in pz], pushed=[(x - 2, z) for z in pz]))


# ------------------------------------------------------------------------------------------------ the hall
def haven(W, x0, z0, x1, z1):
    """clear the ground floor of the industrial wing interior (x0..x1, z0..z1) and fill it with the circuits"""
    C_NO.append((x0 - 2, z0 - 2, x1 + 2, z1 + 2, GY, GY + 9))
    W.fill(x0, GY, z0, x1, GY + 9, z1, AIR)
    W.fill(x0, GROUND_TOP, z0, x1, GROUND_TOP, z1, "minecraft:deepslate_tiles")
    for xx in range(x0 + 4, x1, 8):
        for zz in range(z0 + 3, z1, 8):
            W.set(xx, GY + 9, zz, SEA)
    HAVEN_TESTS.clear()
    logic_lab(W, x0 + 2, z1 - 7)                  # logic lab along the south wall (rows z1-7..z1-3, signs at z1)
    hopper_clock(W, x0 + 2, z0 + 9)
    for k, (slots, nm) in enumerate(((5, "METER 5/27"), (13, "METER 13/27"), (24, "METER 24/27"))):
        fill_meter(W, x0 + 24 + k * 10, z0 + 1, slots, nm)
    piston_curtain(W, x1 - 4, z0 + 2)
    sign(W, (x0 + x1) // 2, GY, z0 + 1, ["REDSTONE HAVEN", "Ithaca City", "real redstone", "no command blocks"], rot=0, color="red")
    W.set((x0 + x1) // 2, GROUND_TOP, z0 + 1, "minecraft:redstone_block")
    return HAVEN_TESTS
