"""Data-pack side of the Member Quarters: alarms, emergency buttons, book mail, lava-curtain privacy, launch pads."""
from . import layout as L


def add(P):
    rooms = [r for r in L.q_rooms() if r["kind"] == "room"]
    N = len(rooms)
    # ------------------------------------------------------------------ alarms (origin macro: rooms are located relative to the schematic origin)
    P.fn("alarm/ring_here", [
        "# runs AT the room centre: audible/visible only to players inside that room (8 blocks)",
        "playsound minecraft:block.bell.use master @a[distance=..9] ~ ~ ~ 2 0.5",
        'title @a[distance=..9] title {"text":"ALARM","color":"red","bold":true}',
        "particle minecraft:angry_villager ~ ~1 ~ 1.5 1 1.5 0 12"])
    for r in rooms:
        cx, cy, cz = r["centre"]
        n = r["n"]
        P.fn(f"alarm/room_{n}", [f"# macro: x,z = schematic origin.  Rings room {n} only.",
                                  f"$execute positioned $(x) -64 $(z) positioned ~{cx} ~{cy} ~{cz} run function riftbrek:alarm/ring_here"])
        P.fn(f"alarm/emergency_{n}", [
            f"# EMERGENCY button in room {n} (macro: origin)",
            f'tellraw @a[tag=rb_member,tag=!rb_revoked] [{{"text":"[EMERGENCY] ","color":"red","bold":true}},{{"text":"room {n} sent an emergency signal","color":"white"}}]',
            f'title @a[tag=rb_member,tag=!rb_revoked] actionbar {{"text":"EMERGENCY in room {n}","color":"red"}}',
            "execute as @a[tag=rb_member,tag=!rb_revoked] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 0.7 0.5",
            f"$execute positioned $(x) -64 $(z) positioned ~{cx} ~{cy} ~{cz} run function riftbrek:alarm/ring_here"])
    P.fn("alarm/all", ["# OP / control-room panel: ring EVERY room + tell all members",
                       'tellraw @a[tag=rb_member,tag=!rb_revoked] {"text":"[ALARM] All rooms - control room alarm!","color":"red","bold":true}'] +
         [f"function riftbrek:alarm/room_{r['n']} with storage riftbrek:cfg origin" for r in rooms])
    P.fn("alarm/reset", ["# silence + clear alarm titles", "stopsound @a master minecraft:block.bell.use", "title @a clear",
                         'tellraw @a[tag=rb_member,tag=!rb_revoked] {"text":"[ALARM] cleared","color":"green"}'])
    # ------------------------------------------------------------------ book mail between room dispensers
    P.fn("mail/move", [
        "# macro: dx,dy,dz = destination dispenser relative to the sending room's mail command block, s = slot",
        "$item replace block ~$(dx) ~$(dy) ~$(dz) container.$(s) from block ~ ~1 ~ container.$(s)",
        "$item replace block ~ ~1 ~ container.$(s) with minecraft:air",
        '$execute positioned ~$(dx) ~$(dy) ~$(dz) run title @a[distance=..8] actionbar {"text":"You have mail in your dispenser","color":"gold"}'])
    for src in rooms:
        sx, sy, sz = src["mail_cb"]
        P.fn(f"mail/room_{src['n']}", [f"# room {src['n']} mailbox (command block under the dispenser): books titled with another room's number are forwarded there"] +
             [f"execute if items block ~ ~1 ~ container.{s} minecraft:written_book run function riftbrek:mail/room_{src['n']}_slot_{s}" for s in range(9)])
        for s in range(9):
            lines = [f"# room {src['n']} slot {s}"]
            for dst in rooms:
                if dst["n"] == src["n"]:
                    continue
                dx, dy, dz = dst["mail_cb"][0] - sx, dst["mail_cb"][1] + 1 - sy, dst["mail_cb"][2] - sz
                d = dst["n"]
                for pred in (f'minecraft:written_book[minecraft:written_book_content~{{title:"{d}"}}]',
                             f'minecraft:written_book[minecraft:written_book_content~{{title:{{raw:"{d}"}}}}]',
                             f'minecraft:written_book[minecraft:custom_name="{d}"]',
                             f'minecraft:written_book[minecraft:custom_name={{text:"{d}"}}]'):
                    lines.append(f"execute if items block ~ ~1 ~ container.{s} {pred} unless items block ~{dx} ~{dy} ~{dz} container.{s} * "
                                 f"run function riftbrek:mail/move {{dx:{dx},dy:{dy},dz:{dz},s:{s}}}")
            P.fn(f"mail/room_{src['n']}_slot_{s}", lines)
    # ------------------------------------------------------------------ lava-curtain privacy (lever on = lava between the two glass layers)
    for r in rooms:
        px, py, pz = r["priv_cb"]
        gx0, gy0, gz0, gx1, gy1, gz1 = r["gap"]
        f = f"~{gx0 - px} ~{gy0 - py} ~{gz0 - pz} ~{gx1 - px} ~{gy1 - py} ~{gz1 - pz}"
        P.fn(f"privacy/room_{r['n']}", [
            f"# room {r['n']}: lever (east face of this command block) ON = lava curtain, OFF = clear window",
            f"execute if block ~1 ~ ~ minecraft:lever[powered=true] run fill {f} minecraft:lava replace minecraft:air",
            f"execute unless block ~1 ~ ~ minecraft:lever[powered=true] run fill {f} minecraft:air replace minecraft:lava"])
    # ------------------------------------------------------------------ launch pads
    elytra = "if items entity @s armor.chest minecraft:elytra"
    P.fn("launch/pad", [
        "# runs AT a launch pad. Members wearing an elytra are shot 1000 blocks up (slow falling for 6 s to open the wings).",
        f"execute as @a[distance=..2.2,tag=rb_member,tag=!rb_revoked,scores={{rb_cred=1..}}] {elytra} run function riftbrek:launch/go",
        f"execute as @a[distance=..2.2,tag=rb_member,tag=!rb_revoked,scores={{rb_cred=1..}}] unless items entity @s armor.chest minecraft:elytra unless score @s rb_msgcd matches 1.. run function riftbrek:launch/no_elytra"])
    P.fn("launch/go", [
        "playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 3 0.7",
        "particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.15 60",
        f"tp @s ~ ~{L.LAUNCH_HEIGHT} ~",
        "effect give @s minecraft:slow_falling 6 0 true",
        'title @s actionbar {"text":"LAUNCHED - open your elytra!","color":"aqua"}'])
    P.fn("launch/no_elytra", ['tellraw @s {"text":"Launch pad: wear an elytra in your chestplate slot first.","color":"yellow"}', "scoreboard players set @s rb_msgcd 60"])
