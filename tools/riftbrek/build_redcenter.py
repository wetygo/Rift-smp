"""REDSTONE CENTER - complete, working redstone builds (floor 2 of the Redstone Works N building, plus the roof).
Floor 1 of the same building is the REDSTONE HAVEN (logic lab, hopper clock, fill meters, piston curtain).
Every build here is plain vanilla redstone / hoppers / furnaces (no command blocks) and comes with a self-test record (RC_TESTS)
that tools/redcenter_livetest.py replays on a real server.  Written in settled (unpowered) state: pasted blocks are not block-updated."""
from .build_common import *
from .nbt import Byte

RC_TESTS = []
LAMP_OFF = "minecraft:redstone_lamp[lit=false]"


def _sign(W, x, y, z, lines):
    sign(W, x, y, z, lines, rot=8, color="light_blue")


def _wire(W, cells, y):
    for (x, z) in cells:
        W.set(x, y, z, "minecraft:redstone_wire")
    fix_dust(W, [(x, y, z) for (x, z) in cells])
    for (x, z) in cells:
        n, props = W.palette[W.a[y, z, x]]
        W.set(x, y, z, n + "[" + ",".join(f"{k}={('0' if k == 'power' else v)}" for k, v in sorted(props.items())) + "]")


def plate_door(W, x, z, y):
    """iron door that opens while anything stands on either pressure plate (plates touch the door)"""
    W.fill(x, y, z, x + 8, y + 3, z, BRK)
    W.fill(x + 4, y, z, x + 4, y + 1, z, AIR)
    W.set(x + 4, y, z, "minecraft:iron_door[facing=north,half=lower,hinge=left,open=false,powered=false]")
    W.set(x + 4, y + 1, z, "minecraft:iron_door[facing=north,half=upper,hinge=left,open=false,powered=false]")
    W.set(x + 4, y, z - 1, "minecraft:stone_pressure_plate[powered=false]")
    W.set(x + 4, y, z + 1, "minecraft:stone_pressure_plate[powered=false]")
    _sign(W, x + 1, y, z - 1, ["PLATE DOOR", "step on a plate", "iron door opens", "no buttons"])
    RC_TESTS.append(dict(kind="door", name="PLATE DOOR", door=(x + 4, y, z), plate=(x + 4, y, z - 1)))


def delay_timer(W, x, z, y):
    """lever -> 4 repeaters at delay 4 (4 x 4 redstone ticks = 1.6 s) -> lamp"""
    W.set(x, y, z, "minecraft:lever[face=floor,facing=north,powered=false]")
    W.set(x + 1, y, z, "minecraft:redstone_wire")
    for i in range(4):
        W.set(x + 2 + i, y, z, "minecraft:repeater[delay=4,facing=west,locked=false,powered=false]")
    W.set(x + 6, y, z, "minecraft:redstone_wire")
    fix_dust(W, [(x + 1, y, z), (x + 6, y, z)])
    for dx in (1, 6):
        n, props = W.palette[W.a[y, z, x + dx]]
        W.set(x + dx, y, z, n + "[" + ",".join(f"{k}={('0' if k == 'power' else v)}" for k, v in sorted(props.items())) + "]")
    W.set(x + 7, y, z, LAMP_OFF)
    _sign(W, x, y, z + 1, ["DELAY TIMER", "flip the lever", "lamp lights after", "about 1.6 s"])
    RC_TESTS.append(dict(kind="timer", name="DELAY TIMER", lever=(x, y, z), lamp=(x + 7, y, z)))


def smelter(W, x, z, y):
    """hopper-fed furnace: ore chest -> hopper -> furnace <- hopper <- fuel chest; furnace -> hopper -> output chest"""
    ore = [{"Slot": Byte(i), "id": "minecraft:raw_iron", "count": 16} for i in range(3)]
    fuel = [{"Slot": Byte(i), "id": "minecraft:coal", "count": 64} for i in range(2)]
    W.set(x, y, z, "minecraft:chest[facing=south,type=single,waterlogged=false]"); W.tile(x, y, z, {"id": "minecraft:chest", "Items": []})            # output
    W.set(x, y + 1, z, "minecraft:hopper[enabled=true,facing=down]"); W.tile(x, y + 1, z, {"id": "minecraft:hopper", "Items": [], "TransferCooldown": 0})
    W.set(x, y + 2, z, "minecraft:furnace[facing=south,lit=false]"); W.tile(x, y + 2, z, {"id": "minecraft:furnace", "Items": []})
    W.set(x, y + 3, z, "minecraft:hopper[enabled=true,facing=down]"); W.tile(x, y + 3, z, {"id": "minecraft:hopper", "Items": [], "TransferCooldown": 0})
    W.set(x, y + 4, z, "minecraft:chest[facing=south,type=single,waterlogged=false]"); W.tile(x, y + 4, z, {"id": "minecraft:chest", "Items": ore})
    W.set(x + 1, y + 2, z, "minecraft:hopper[enabled=true,facing=west]"); W.tile(x + 1, y + 2, z, {"id": "minecraft:hopper", "Items": [], "TransferCooldown": 0})
    W.set(x + 1, y + 3, z, "minecraft:chest[facing=south,type=single,waterlogged=false]"); W.tile(x + 1, y + 3, z, {"id": "minecraft:chest", "Items": fuel})
    W.set(x + 1, y, z, BRK); W.set(x + 1, y + 1, z, BRK)                      # support for the fuel hopper
    W.set(x + 2, y + 2, z, BRK)
    _sign(W, x - 1, y, z + 1, ["AUTO SMELTER", "raw iron + coal in", "the top chests,", "ingots below"])
    RC_TESTS.append(dict(kind="smelter", name="AUTO SMELTER", out=(x, y, z), furnace=(x, y + 2, z)))


def tripwire_trap(W, x, z, y):
    """tripwire hooks + string; a creature crossing it powers the hook's block, which fires the dispenser (arrows) beside it"""
    arrows = [{"Slot": Byte(i), "id": "minecraft:arrow", "count": 64} for i in range(3)]
    W.set(x, y, z, BRK); W.set(x + 7, y, z, BRK)
    W.set(x + 1, y, z, "minecraft:tripwire_hook[attached=true,facing=east,powered=false]")
    W.set(x + 6, y, z, "minecraft:tripwire_hook[attached=true,facing=west,powered=false]")
    for i in range(2, 6):
        W.set(x + i, y, z, "minecraft:tripwire[attached=true,disarmed=false,east=true,north=false,powered=false,south=false,west=true]")
    W.set(x, y + 1, z, "minecraft:dispenser[facing=south,triggered=false]"); W.tile(x, y + 1, z, {"id": "minecraft:dispenser", "Items": arrows})
    W.set(x + 7, y + 1, z, "minecraft:dispenser[facing=south,triggered=false]"); W.tile(x + 7, y + 1, z, {"id": "minecraft:dispenser", "Items": arrows})
    _sign(W, x + 3, y, z + 2, ["TRIPWIRE TRAP", "walk through the", "string: the two", "dispensers fire"])
    RC_TESTS.append(dict(kind="tripwire", name="TRIPWIRE TRAP", string=(x + 3, y, z), disp=[(x, y + 1, z), (x + 7, y + 1, z)]))


def night_lamp(W, x, z, y):
    """on the ROOF: inverted daylight sensor lights the lamp next to it at night"""
    W.set(x, y - 1, z, BRK); W.set(x + 1, y - 1, z, BRK)
    W.set(x, y, z, "minecraft:daylight_detector[inverted=true,power=0]")
    W.tile(x, y, z, {"id": "minecraft:daylight_detector"})
    W.set(x + 1, y, z, LAMP_OFF)
    W.set(x - 1, y, z, BRK)
    _sign(W, x, y, z + 1, ["NIGHT LAMP", "inverted daylight", "sensor: lamp on", "after dark"])
    RC_TESTS.append(dict(kind="night", name="NIGHT LAMP", sensor=(x, y, z), lamp=(x + 1, y, z)))


def redcenter(W, x0, z0, x1, z1, y, roof_y):
    """floor-2 hall: a row of stalls (each ~24 wide) in two rows"""
    W.fill(x0, y, z0, x1, y + 9, z1, AIR)
    for xx in range(x0 + 4, x1, 8):
        for zz in range(z0 + 3, z1, 8):
            W.set(xx, y + 10, zz, SEA)
    cx = x0 + 6; zA = z0 + 10; zB = z0 + 50
    plate_door(W, cx, zA, y)
    delay_timer(W, cx + 24, zA, y)
    tripwire_trap(W, cx + 58, zA, y)
    smelter(W, cx + 90, zA, y)
    sign(W, (x0 + x1) // 2, y, z0 + 2, ["REDSTONE CENTER", "complete builds", "floor 1: Haven", "floor 3: roof lamp"], rot=0, color="red")
    night_lamp(W, x0 + 12, z0 + 12, roof_y)
    return RC_TESTS
