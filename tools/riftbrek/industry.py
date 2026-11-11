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


def synth(P):
    for (name, table, label) in L.SYNTH:
        P.fn(f"industry/synth_{name}", [
            f"# COMMAND-DRIVEN generator (not a survival-legit farm): every 5 s inserts one loot roll of {table} into the chest above this command block.",
            "execute store result score #t rb_tmp run time query gametime",
            "scoreboard players operation #t rb_tmp %= #100 rb_const",
            f"execute if score #t rb_tmp matches 0 run loot insert ~ ~1 ~ loot {table}"])


def blimp(P):
    """Moving airship = display entities + armor-stand seats driven by this function set. Experimental / untested."""
    import math
    ph = "#PH rb_bl"; tt = "#T rb_bl"
    P.fn("blimp/spawn", ["# runs at the dock-A controller: builds the ship 1.5 blocks above the block (ground level)",
        "scoreboard players set #SPAWNED rb_bl 1", "scoreboard players set #PH rb_bl 0", "scoreboard players set #T rb_bl 0"] + _blimp_summons())
    P.fn("blimp/tick", [
        "# controller (repeating command block under dock A). The ship only exists after: /function riftbrek:admin/blimp_on",
        "execute unless score #SPAWNED rb_bl matches 1 if score #ON rb_bl matches 1 run function riftbrek:blimp/spawn",
        "execute if score #SPAWNED rb_bl matches 1 run function riftbrek:blimp/run"])
    run = ["scoreboard players add #T rb_bl 1",
           "# bookkeeping: riders who left, seats that emptied",
           "execute as @a[tag=rb_riding] unless data entity @s RootVehicle run function riftbrek:blimp/left",
           "execute as @e[tag=rb_seat,tag=rb_taken] unless data entity @s Passengers run tag @s remove rb_taken",
           "execute as @a[tag=rb_nob] at @s unless entity @e[tag=rb_seat,distance=..12] run tag @s remove rb_nob"]
    for p_ in (0, 2, 4, 6):
        run.append(f"execute if score #PH rb_bl matches {p_} if score #T rb_bl matches 1..100 run function riftbrek:blimp/board")
        run.append(f"execute if score #PH rb_bl matches {p_} if score #T rb_bl matches 600.. run function riftbrek:blimp/next")
    for p_, d, n in ((1, "s", 804), (3, "s", 440), (5, "n", 440), (7, "n", 804)):
        run.append(f"execute if score #PH rb_bl matches {p_} run function riftbrek:blimp/move_{d}")
        run.append(f"execute if score #PH rb_bl matches {p_} if score #T rb_bl matches {n}.. run function riftbrek:blimp/next")
    P.fn("blimp/run", run)
    P.fn("blimp/next", ["scoreboard players set #T rb_bl 0", "scoreboard players add #PH rb_bl 1",
                        "execute if score #PH rb_bl matches 8.. run scoreboard players set #PH rb_bl 0"])
    P.fn("blimp/move_s", ["# 0.5 block/tick south (+z) along the lane x=250; all hull + seat entities move together",
                          "execute as @e[tag=rb_blimp] at @s run tp @s ~ ~ ~0.5"])
    P.fn("blimp/move_n", ["execute as @e[tag=rb_blimp] at @s run tp @s ~ ~ ~-0.5"])
    P.fn("blimp/board", [
        "# during the first 5 s of every stop: authorised players within 8 blocks of the ship are seated (6 seats). Lockdown = no boarding.",
        "execute unless score #GLOBAL rb_lock matches 1 as @e[tag=rb_seat,limit=1] at @s as @a[distance=..8,tag=!rb_riding,tag=!rb_nob,tag=!rb_revoked,scores={rb_cred=1..,rb_clear=1..}] run function riftbrek:blimp/mount"])
    P.fn("blimp/mount", [
        "execute if entity @e[tag=rb_seat,tag=!rb_taken] run tag @e[tag=rb_seat,tag=!rb_taken,limit=1,sort=nearest] add rb_pending",
        "ride @s mount @e[tag=rb_pending,limit=1]",
        "execute if entity @e[tag=rb_pending] run tag @s add rb_riding",
        "tag @e[tag=rb_pending] add rb_taken",
        "tag @e[tag=rb_pending] remove rb_pending"])
    P.fn("blimp/left", ["tag @s remove rb_riding", "tag @s add rb_nob"])
    P.fn("admin/blimp_on", ["# OP ONLY. Spawns the airship at dock A (needs the dock-A chunk loaded) and starts the A-B-C-B-A cycle.",
                            "scoreboard players set #ON rb_bl 1"])
    P.fn("admin/blimp_off", ["# OP ONLY. Removes the airship and stops the cycle.",
                             "scoreboard players set #ON rb_bl 0", "scoreboard players set #SPAWNED rb_bl 0",
                             "execute as @a[tag=rb_riding] run ride @s dismount",
                             "kill @e[tag=rb_blimp]"])


def _blimp_summons():
    import math
    L_ = []
    def disp(block, tx, ty, tz, sx, sy, sz):
        return ('summon minecraft:block_display ~ ~1.5 ~ {Tags:["rb_blimp"],teleport_duration:2,block_state:{Name:"minecraft:%s"},'
                'transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[%.2ff,%.2ff,%.2ff],scale:[%.2ff,%.2ff,%.2ff]}}'
                % (block, tx, ty, tz, sx, sy, sz))
    half = 22.0
    for k in range(-11, 11):
        zc = 2.0 * k + 1.0
        r = 8.0 * math.sqrt(max(0.0, 1 - (zc / half) ** 2))
        r = max(r, 1.0)
        blk = "purple_concrete" if k % 4 == 0 else "white_concrete"
        L_.append(disp(blk, -r, 9.0 - r, 2.0 * k, 2 * r, 2 * r, 2.0))
    L_.append(disp("blue_concrete", -0.3, 17.0, -20.0, 0.6, 1.2, 40.0))              # spine stripe
    L_.append(disp("purple_concrete", -0.3, 9.0, -24.0, 0.6, 9.0, 7.0))              # top fin
    L_.append(disp("purple_concrete", -0.3, 0.5, -24.0, 0.6, 8.0, 7.0))              # bottom fin
    L_.append(disp("purple_concrete", -8.0, 8.7, -24.0, 16.0, 0.6, 7.0))             # horizontal fin
    L_.append(disp("white_concrete", -2.5, 0.2, -6.0, 5.0, 3.0, 12.0))               # gondola
    L_.append(disp("light_blue_stained_glass", -2.6, 1.4, -5.0, 5.2, 1.0, 10.0))     # gondola windows
    for i, (sx, sz) in enumerate(((-1.2, -4.0), (1.2, -4.0), (-1.2, 0.0), (1.2, 0.0), (-1.2, 4.0), (1.2, 4.0))):
        L_.append('summon minecraft:armor_stand ~%.1f ~1.5 ~%.1f {Invisible:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,Tags:["rb_blimp","rb_seat"],DisabledSlots:4144959}' % (sx, sz))
    return L_


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
    P.fn("admin/forceload", ["# OP ONLY. Keeps sorters, industry, synthesis hall, blimp lane and the checkpoint loaded. Run admin/origin first.",
                              "function riftbrek:admin/forceload_do with storage riftbrek:cfg origin"])
    P.fn("admin/forceload_off", ["function riftbrek:admin/forceload_remove_do with storage riftbrek:cfg origin"])


def verify(P):
    y = lambda ly: ly + L.WORLD_Y0
    GY = L.GY
    checks = [
        ("ground (grass) at local 100,95,100", 100, 95, 100, "minecraft:grass_block"),
        ("gatehouse door controller", 378, GY + 3, 760, "minecraft:repeating_command_block"),
        ("citadel entrance controller", 378, GY + 3, 366, "minecraft:repeating_command_block"),
        ("blimp controller (dock A)", 250, L.GROUND_TOP - 1, 78, "minecraft:repeating_command_block"),
        ("sorter A controller (B5)", 560, L.level_floor(5) + 4, 472, "minecraft:repeating_command_block"),
        ("sorter B controller (B6)", 560, L.level_floor(6) + 4, 520, "minecraft:repeating_command_block"),
        ("synthesis unit (B11)", L.SYNTH_ORIGIN[0], L.level_floor(11) + 1, L.SYNTH_ORIGIN[1], "minecraft:repeating_command_block"),
        ("great spire tip region (citadel)", 383, GY + 170, 271, "minecraft:black_concrete"),
        ("south-east corner tower base", 760, GY + 10, 760, "minecraft:polished_blackstone_bricks"),
    ]
    lines = ["# macro: x,z = schematic origin (admin/origin).  Run: /function riftbrek:admin/verify",
             'tellraw @s {"text":"[RIFTBREK] paste check (PASS = expected block found):","color":"light_purple"}']
    for (label, x, ly, z, blk) in checks:
        lines.append(f'$execute positioned $(x) {y(ly)} $(z) if block ~{x} ~ ~{z} {blk} run tellraw @s {{"text":"PASS  {label}","color":"green"}}')
        lines.append(f'$execute positioned $(x) {y(ly)} $(z) unless block ~{x} ~ ~{z} {blk} run tellraw @s {{"text":"FAIL  {label} (chunk not loaded, wrong origin, or not pasted)","color":"red"}}')
    P.fn("admin/verify_do", lines)
    P.fn("admin/verify", ["# OP ONLY. Needs admin/origin first. Stand near the schematic so the chunks are loaded (or run admin/forceload first).",
                          "function riftbrek:admin/verify_do with storage riftbrek:cfg origin"])


def add(P):
    move_fn(P)
    for h in L.SORT_HALLS:
        sorter(P, h)
    farms(P)
    pulses(P)
    synth(P)
    blimp(P)
    forceload(P)
    verify(P)
