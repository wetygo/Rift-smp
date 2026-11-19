"""Wind-charged CHICKEN LAUNCHER - real redstone, no command blocks.

How it works (every step verified on a real 1.21.11 server, see docs/LAUNCHER.md):
  * a sealed 1x1x1 CELL holds one chicken. West dispenser = chicken spawn egg, north dispenser = splash potion of WIND CHARGING
    (effect "Wind Charged"), south dispenser = splash potion of HARMING II (strong_harming = Instant Damage II).
  * one stone BUTTON starts three repeater delay lines: egg at once -> wind-charging potion 0.8 s later -> harming II potion 1.2 s after that.
    The chicken dies while wind-charged; its wind burst throws whoever stands on the PLATFORM (the cell's roof) high into the air.
  * every dispenser is fed by a hopper from a chest (27 potions / 27 stacks of eggs). Refill the chests, nothing else.
Layout (local, cell centre = (cx, cz), floor row y, dispenser row y+1, circuit row y+2, platform = y+2 above the cell):
"""
from .build_common import *
from .nbt import Byte

SLOW = "minecraft:repeater[delay=4,facing=%s,locked=false,powered=false]"
FAST = "minecraft:repeater[delay=1,facing=%s,locked=false,powered=false]"
DUST = "minecraft:redstone_wire[east=none,north=none,power=0,south=none,west=none]"


def _items(item, count, comp=None, n=27):
    out = []
    for i in range(n):
        d = {"Slot": Byte(i), "id": item, "count": count}
        if comp:
            d["components"] = comp
        out.append(d)
    return out


def launcher(W, cx, cz, y=GROUND_TOP, label="LAUNCHER"):
    """cx,cz = chicken cell. y = ground-top row (floor). Returns the world position (x, y, z) of the launch platform surface."""
    dy = y + 1                                   # dispenser / chicken row
    cy = y + 2                                   # circuit row (platform level)
    # pad: solid foundation + a block of body so every circuit cell has support
    W.fill(cx - 7, y, cz - 5, cx + 3, y, cz + 5, DT)
    W.fill(cx - 7, dy, cz - 5, cx + 3, dy, cz + 5, BRK)
    W.fill(cx - 7, cy, cz - 5, cx + 3, cy, cz + 5, AIR)
    W.set(cx, dy, cz, AIR)                                                           # the chicken cell
    # dispensers
    W.set(cx - 1, dy, cz, "minecraft:dispenser[facing=east,triggered=false]")        # eggs
    W.set(cx, dy, cz - 1, "minecraft:dispenser[facing=south,triggered=false]")       # wind charging potion
    W.set(cx, dy, cz + 1, "minecraft:dispenser[facing=north,triggered=false]")       # harming II potion
    for p in ((cx - 1, cz), (cx, cz - 1), (cx, cz + 1)):
        W.tile(p[0], dy, p[1], {"id": "minecraft:dispenser", "Items": []})
    # supply: hopper beside each dispenser (feeding it), chest above the hopper
    sup = [((cx - 1, cz - 1), "south", "minecraft:chicken_spawn_egg", 64, None),
           ((cx + 1, cz - 1), "west", "minecraft:splash_potion", 1, {"minecraft:potion_contents": {"potion": "minecraft:wind_charged"}}),
           ((cx + 1, cz + 1), "west", "minecraft:splash_potion", 1, {"minecraft:potion_contents": {"potion": "minecraft:strong_harming"}})]
    for (hx, hz), face, item, cnt, comp in sup:
        W.set(hx, dy, hz, f"minecraft:hopper[enabled=true,facing={face}]")
        W.tile(hx, dy, hz, {"id": "minecraft:hopper", "Items": [], "TransferCooldown": 0})
        W.set(hx, cy, hz, "minecraft:chest[facing=south,type=single,waterlogged=false]")
        W.tile(hx, cy, hz, {"id": "minecraft:chest", "Items": _items(item, cnt, comp)})
    # platform over the cell (glass: you see the chicken)
    W.set(cx, cy, cz, TG)
    # ---- circuit on the circuit row (dust sits on the dispensers = powers them) ----
    X = lambda dx, dz: (cx + dx, cy, cz + dz)
    def put(dx, dz, b): W.set(*X(dx, dz), b)
    # button + trunk (west of the cell, signal runs east)
    W.set(cx - 5, dy, cz, BRK); W.set(cx - 5, cy, cz, PB)                              # block that the button powers
    W.set(cx - 6, cy, cz, "minecraft:stone_button[face=wall,facing=west,powered=false]")
    put(-4, 0, FAST % "east")
    put(-3, 0, DUST)
    put(-2, 0, DUST)       # splitter
    put(-1, 0, DUST)       # on top of the egg dispenser
    # north branch (wind charging): 2 slow repeaters
    put(-2, -1, SLOW % "north"); put(-2, -2, DUST); put(-1, -2, SLOW % "east"); put(0, -2, DUST); put(0, -1, DUST)
    # south branch (harming II): 3 slow repeaters
    put(-2, 1, SLOW % "south"); put(-2, 2, SLOW % "south"); put(-2, 3, DUST); put(-1, 3, SLOW % "east"); put(0, 3, DUST); put(0, 2, DUST); put(0, 1, DUST)
    W.fill(cx - 2, dy, cz + 2, cx, dy, cz + 3, BRK)
    fix_dust(W, [p for p in [(cx + dx, cy, cz + dz) for dx in range(-8, 3) for dz in range(-6, 7)] if W.get(*p) == "minecraft:redstone_wire"])
    sign(W, cx - 3, cy, cz - 2, [label, "stand on the", "glass block", "press button"], rot=4)
    return (cx, cy + 1, cz)


def tube(W, cx, cz, y=GROUND_TOP, height=24):
    """open glass shaft above the platform so the launch is seen/contained."""
    cy = y + 2
    for h in range(cy + 1, cy + 1 + height):
        for dx in (-1, 1):
            for dz in range(-1, 2):
                W.set(cx + dx, h, cz + dz, TG)
        W.set(cx, h, cz - 1, TG); W.set(cx, h, cz + 1, TG)
