"""Command-driven machinery: sorter halls, crop plots, crafter pulses.
Geometry constants are shared with the schematic builder so offsets always match."""
from . import layout as L
from . import build_wings as BW

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


def pandora(P):
    """PANDORA: bond pads turn the player into a Na'vi (kit, effects, team colour); `pandora/leave` undoes it"""
    P.fn("pandora/setup", ["# run once: the Na'vi team", "team add rb_navi", "team modify rb_navi color aqua", "team modify rb_navi friendlyFire false"])
    P.fn("pandora/pad", ["# runs AT a bond pad command block (repeating): a player standing within 1.6 blocks who is not Na'vi yet becomes one",
                         "execute as @a[distance=..1.6,tag=!rb_navi] run function riftbrek:pandora/become_navi"])
    P.fn("pandora/become_navi", [
        "tag @s add rb_navi",
        "team add rb_navi",
        "team join rb_navi @s",
        "effect give @s minecraft:night_vision infinite 0 true",
        "effect give @s minecraft:jump_boost infinite 1 true",
        "effect give @s minecraft:speed infinite 0 true",
        "give @s minecraft:bow[minecraft:custom_name={text:\"Na'vi bow\",color:\"aqua\",italic:false}]",
        "give @s minecraft:arrow 64",
        "give @s minecraft:elytra[minecraft:custom_name={text:\"Ikran wings\",color:\"aqua\",italic:false}]",
        "give @s minecraft:firework_rocket 64",
        "give @s minecraft:leather_chestplate[minecraft:dyed_color=2977750,minecraft:custom_name={text:\"Na'vi sash\",color:\"aqua\",italic:false}]",
        "give @s minecraft:leather_leggings[minecraft:dyed_color=2977750]",
        "tellraw @s {text:\"You are Na'vi. Eywa is with you. Jump off a roost and glide on your Ikran wings.\",color:\"aqua\"}",
        "playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 1.2"])
    P.fn("pandora/leave", ["tag @s remove rb_navi", "team leave @s", "effect clear @s minecraft:night_vision", "effect clear @s minecraft:jump_boost", "effect clear @s minecraft:speed",
                           "tellraw @s {text:\"You are no longer Na'vi.\",color:\"gray\"}"])


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


def synth(P):
    for (name, table, label) in L.SYNTH:
        P.fn(f"industry/synth_{name}", [
            f"# COMMAND-DRIVEN generator (not a survival-legit farm): every 5 s inserts one loot roll of {table} into the chest above this command block.",
            "execute store result score #t rb_tmp run time query gametime",
            "scoreboard players operation #t rb_tmp %= #100 rb_const",
            f"execute if score #t rb_tmp matches 0 run loot insert ~ ~1 ~ loot {table}"])


def forceload(P):
    P.fn("admin/origin", ["# OP ONLY. Tell the pack where you pasted the schematic (world X/Z of local 0,0).  /function riftbrek:admin/origin {x:1000,z:-500}",
                           "$data modify storage riftbrek:cfg origin set value {x:$(x),z:$(z)}"])
    add_lines = ["# macro: x,z = schematic origin"]
    rm_lines = ["# macro: x,z = schematic origin"]
    for (nm, x0, z0, x1, z1) in L.FORCELOAD:
        add_lines.append(f"$execute positioned $(x) 0 $(z) run forceload add ~{x0} ~{z0} ~{x1} ~{z1}")
        rm_lines.append(f"$execute positioned $(x) 0 $(z) run forceload remove ~{x0} ~{z0} ~{x1} ~{z1}")
    P.fn("admin/forceload_do", add_lines)
    P.fn("admin/forceload_remove_do", rm_lines)
    P.fn("admin/forceload", ["# OP ONLY. Keeps sorters, industry, synthesis hall and the checkpoint loaded. Run admin/origin first.",
                              "function riftbrek:admin/forceload_do with storage riftbrek:cfg origin"])
    P.fn("admin/forceload_off", ["function riftbrek:admin/forceload_remove_do with storage riftbrek:cfg origin"])


def verify(P):
    y = lambda ly: ly + L.WORLD_Y0
    GY = L.GY
    checks = [
        ("ground (grass) at local 100,95,100", 100, 95, 100, "minecraft:grass_block"),
        ("gatehouse door controller", 378, GY + 3, 760, "minecraft:repeating_command_block"),
        ("citadel entrance controller", 378, GY + 3, 366, "minecraft:repeating_command_block"),
        ("sorter A controller (B5)", 560, L.level_floor(5) + 4, 472, "minecraft:repeating_command_block"),
        ("sorter B controller (B6)", 560, L.level_floor(6) + 4, 520, "minecraft:repeating_command_block"),
        ("synthesis unit (B11)", L.SYNTH_ORIGIN[0], L.level_floor(11) + 1, L.SYNTH_ORIGIN[1], "minecraft:repeating_command_block"),
        ("great spire tip region (citadel)", 383, GY + 170, 271, "minecraft:black_concrete"),
        ("south-east corner tower wall", 766, GY + 10, 750, "minecraft:polished_blackstone_bricks"),
    ]
    lines = ["# macro: x,z = schematic origin (admin/origin).  Run: /function riftbrek:admin/verify",
             'tellraw @s {"text":"[RIFTBREK] paste check (PASS = expected block found):","color":"light_purple"}']
    for (label, x, ly, z, blk) in checks:
        lines.append(f'$execute in minecraft:overworld positioned $(x) {y(ly)} $(z) if block ~{x} ~ ~{z} {blk} run tellraw @s {{"text":"PASS  {label}","color":"green"}}')
        lines.append(f'$execute in minecraft:overworld positioned $(x) {y(ly)} $(z) unless block ~{x} ~ ~{z} {blk} run tellraw @s {{"text":"FAIL  {label} (chunk not loaded, wrong origin, or not pasted)","color":"red"}}')
    P.fn("admin/verify_do", lines)
    import json as _j, os as _o
    _p = _o.path.join(_o.path.dirname(__file__), "..", "..", "mod", "src", "main", "resources", "riftbrek_probes.json")
    _o.makedirs(_o.path.dirname(_p), exist_ok=True)
    _j.dump([dict(label=l, x=x, y=y(ly), z=z, block=b) for (l, x, ly, z, b) in checks], open(_p, "w"), indent=1)
    _j.dump([dict(name=n, x0=x0, z0=z0, x1=x1, z1=z1) for (n, x0, z0, x1, z1) in L.FORCELOAD],
            open(_o.path.join(_o.path.dirname(_p), "riftbrek_forceload.json"), "w"), indent=1)
    P.fn("admin/verify", ["# OP ONLY. Needs admin/origin first. Chunks must be loaded: use the mod's /rift verify (loads them itself) or stand near the base.",
                          "function riftbrek:admin/verify_do with storage riftbrek:cfg origin"])


def add(P):
    move_fn(P)
    for h in L.SORT_HALLS:
        sorter(P, h)
    farms(P)
    pulses(P)
    synth(P)
    P.fn("monitor/lockdown_lamp", ["# runs AT the monitor command block in the security control room: a redstone block above it while lockdown is ON lights the indicator lamps",
        "execute if score #GLOBAL rb_lock matches 1 run setblock ~ ~1 ~ minecraft:redstone_block",
        "execute unless score #GLOBAL rb_lock matches 1 run setblock ~ ~1 ~ minecraft:air"])
    pandora(P)
    forceload(P)
    verify(P)
    from . import quarters_dp
    quarters_dp.add(P)
