"""Command-driven machinery: sorter halls, crop plots, crafter pulses.
Geometry constants are shared with the schematic builder so offsets always match."""
from . import layout as L

# ---- crop plots (B7 industrial level) ---------------------------------------------------------
FARM_CROPS = {
    "wheat":    ("minecraft:wheat",     7),
    "carrots":  ("minecraft:carrots",   7),
    "potatoes": ("minecraft:potatoes",  7),
    "beetroot": ("minecraft:beetroots", 3),
}
# plot origin (px, pz) = north-west corner of the 9x9 plot.  Command block at (px+4, y0, pz+4).
FARM_PLOTS = [
    dict(name="wheat",    px=60,  pz=486),
    dict(name="carrots",  px=76,  pz=486),
    dict(name="potatoes", px=92,  pz=486),
    dict(name="beetroot", px=108, pz=486),
]


def move_fn(P):
    P.fn("storage/move", [
        "# macro: dx,dy,dz = offset of destination hopper from controller; s = slot. Source tray = controller + (0,0,1)",
        "$item replace block ~$(dx) ~$(dy) ~$(dz) container.$(s) from block ~ ~ ~1 container.$(s)",
        "$item replace block ~ ~ ~1 container.$(s) with minecraft:air",
    ])


def sorter(P, hall):
    """Static (non-macro) functions.  Every category lives in its own file per tray slot so that one bad item id / tag
    can only break that single category, never the whole sorter."""
    name, cats = hall["name"], hall["cats"]
    S = L.SORT_SLOTS
    top = ["# Sorter hall '%s' controller (repeating command block, always active)." % name]
    for s in range(S):
        top.append(f"execute if items block ~ ~ ~1 container.{s} * run function riftbrek:storage/hall_{name}_slot_{s}")
    # stuck tray (all 5 slots occupied after sorting) => alarm lamp via a redstone block beside the controller
    full = " ".join(f"if items block ~ ~ ~1 container.{s} *" for s in range(S))
    for s in range(S):
        top.append(f"execute unless items block ~ ~ ~1 container.{s} * run setblock ~-1 ~ ~ minecraft:air")
    top.append(f"execute {full} run setblock ~-1 ~ ~ minecraft:redstone_block")
    P.fn(f"storage/sort_{name}", top)
    misc_i = [i for i, (c, pr) in enumerate(cats) if pr is None][0]
    order = [i for i in range(len(cats)) if i != misc_i] + [misc_i]      # misc last = catch-all
    for s in range(S):
        P.fn(f"storage/hall_{name}_slot_{s}", [f"# hall {name}: route the stack in tray slot {s}"] + [
            f"execute if items block ~ ~ ~1 container.{s} * run function riftbrek:storage/{name}/c{i:02d}_s{s}" for i in order])
        for i, (cname, preds) in enumerate(cats):
            lines = [f"# hall {name} category '{cname}' slot {s}"]
            for k in range(L.SORT_K):
                dx, dy, dz = L.sort_col(i, k)
                if preds is None:
                    cond_list = ["*"]
                else:
                    cond_list = preds
                for pr in cond_list:
                    lines.append(
                        f"execute if items block ~ ~ ~1 container.{s} {pr} unless items block ~{dx} ~{dy} ~{dz} container.{s} * "
                        f"run function riftbrek:storage/move {{dx:{dx},dy:{dy},dz:{dz},s:{s}}}")
            # each predicate must try column k=0 first, then k=1.. : emit predicate-major order
            lines = [lines[0]]
            for pr in (["*"] if preds is None else preds):
                for k in range(L.SORT_K):
                    dx, dy, dz = L.sort_col(i, k)
                    lines.append(
                        f"execute if items block ~ ~ ~1 container.{s} {pr} unless items block ~{dx} ~{dy} ~{dz} container.{s} * "
                        f"run function riftbrek:storage/move {{dx:{dx},dy:{dy},dz:{dz},s:{s}}}")
            P.fn(f"storage/{name}/c{i:02d}_s{s}", lines)


def farms(P):
    for pl in FARM_PLOTS:
        block, maxage = FARM_CROPS[pl["name"]]
        lines = [f"# crop plot '{pl['name']}': harvest ripe crops into the plot chest and replant. Runs at the command block under the water cell."]
        for dz in range(-4, 5):
            for dx in range(-4, 5):
                if dx == 0 and dz == 0:
                    continue   # water cell
                lines.append(f"execute if block ~{dx} ~2 ~{dz} {block}[age={maxage}] run loot insert ~ ~1 ~-5 mine ~{dx} ~2 ~{dz}")
                lines.append(f"execute if block ~{dx} ~2 ~{dz} {block}[age={maxage}] run setblock ~{dx} ~2 ~{dz} {block}[age=0]")
        P.fn(f"industry/farm_{pl['name']}", lines)
    P.fn("industry/farm_tick", [
        "# throttle: crop plots are scanned every 10 s (200 ticks). Called by each plot's command block with the plot name below.",
    ])
    for pl in FARM_PLOTS:
        P.fn(f"industry/run_farm_{pl['name']}", [
            "execute store result score #t rb_tmp run time query gametime",
            "scoreboard players operation #t rb_tmp %= #200 rb_const",
            f"execute if score #t rb_tmp matches 0 run function riftbrek:industry/farm_{pl['name']}"])


def pulses(P):
    P.fn("industry/pulse_crafter", [
        "# Crafters trigger on a rising redstone edge.  Slot (directly above this command block) is a 4-tick pulse every 20 ticks.",
        "execute store result score #t rb_tmp run time query gametime",
        "scoreboard players operation #t rb_tmp %= #20 rb_const",
        "execute if score #t rb_tmp matches 0..3 run setblock ~ ~1 ~ minecraft:redstone_block",
        "execute unless score #t rb_tmp matches 0..3 run setblock ~ ~1 ~ minecraft:air",
    ])


def add(P):
    move_fn(P)
    for h in L.SORT_HALLS:
        sorter(P, h)
    farms(P)
    pulses(P)
