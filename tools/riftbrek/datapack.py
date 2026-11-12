"""Generates the RIFTBREK Vanguard data pack (Minecraft Java 1.21.11, data pack format 94.1)."""
import json, os, shutil, zipfile
from . import layout as L

NS = "riftbrek"
ENCH_ARMOR = '{"minecraft:protection":4,"minecraft:unbreaking":3,"minecraft:mending":1}'
ENCH_SWORD = '{"minecraft:sharpness":5,"minecraft:unbreaking":3,"minecraft:mending":1}'
ENCH_ARMOR_C = '{"minecraft:protection":4,"minecraft:unbreaking":3}'
ENCH_SWORD_C = '{"minecraft:sharpness":5,"minecraft:unbreaking":3}'


class Pack:
    def __init__(self, root):
        self.root = root
        self.files = {}

    def fn(self, path, lines):
        if isinstance(lines, str):
            lines = lines.strip("\n").split("\n")
        body = "\n".join(lines) + "\n"
        self.files[f"data/{NS}/function/{path}.mcfunction"] = body

    def raw(self, path, text):
        self.files[path] = text

    def write(self):
        if os.path.isdir(self.root):
            shutil.rmtree(self.root)
        for p, t in self.files.items():
            full = os.path.join(self.root, p)
            os.makedirs(os.path.dirname(full), exist_ok=True)
            with open(full, "w", newline="\n") as f:
                f.write(t)


def tellraw(sel, text, color):
    return 'tellraw %s {"text":"%s","color":"%s"}' % (sel, text, color)


def build(root):
    P = Pack(root)
    fac = L.FACTIONS

    # ------------------------------------------------------------------ pack metadata & tags
    P.raw("pack.mcmeta", json.dumps({"pack": {
        "description": "RIFTBREK Vanguard - registry, credentials, Veil, kits, access doors, storage, industry (MC 1.21.11)",
        "min_format": [94, 1], "max_format": [94, 1]}}, indent=2) + "\n")
    P.raw("data/minecraft/tags/function/load.json", json.dumps({"values": [f"{NS}:load"]}) + "\n")
    P.raw("data/minecraft/tags/function/tick.json", json.dumps({"values": [f"{NS}:tick"]}) + "\n")

    # ------------------------------------------------------------------ load / tick
    objs = ["rb_clear", "rb_cred", "rb_role", "rb_id", "rb_visitor", "rb_kit", "rb_lastkit", "rb_issued",
            "rb_denied", "rb_incident", "rb_lock", "rb_tmp", "rb_const", "rb_msgcd", "rb_cbs", "rb_bl"]
    load = ["# Runs on every /reload and world start. NOTHING here may reset persistent player data."]
    load += [f"scoreboard objectives add {o} dummy" for o in objs]
    load.append("scoreboard objectives add rb_req trigger")
    load += [
        "execute unless score #GLOBAL rb_lock = #GLOBAL rb_lock run scoreboard players set #GLOBAL rb_lock 0",
        "execute unless score #NEXT rb_id = #NEXT rb_id run scoreboard players set #NEXT rb_id 1000",
        "scoreboard players set #20 rb_const 20",
        "scoreboard players set #200 rb_const 200",
        "scoreboard players set #100 rb_const 100",
        "scoreboard players set #2 rb_const 2",
        "execute unless score #ON rb_bl = #ON rb_bl run scoreboard players set #ON rb_bl 0",
        "execute unless score #SPAWNED rb_bl = #SPAWNED rb_bl run scoreboard players set #SPAWNED rb_bl 0",
        "execute unless score #PH rb_bl = #PH rb_bl run scoreboard players set #PH rb_bl 0",
        "execute unless score #T rb_bl = #T rb_bl run scoreboard players set #T rb_bl 0",
        "scoreboard players set #600 rb_const 600",
        "execute unless data storage riftbrek:registry roster run data modify storage riftbrek:registry roster set value []",
        "execute unless data storage riftbrek:registry players run data modify storage riftbrek:registry players set value {}",
        "execute unless data storage riftbrek:log entries run data modify storage riftbrek:log entries set value []",
        "function riftbrek:setup/teams",
        "function riftbrek:setup/gamerules",
        'tellraw @a {"text":"[RIFTBREK] Vanguard datapack loaded.","color":"light_purple"}',
    ]
    P.fn("load", load)

    teams = []
    for f, (name, code, role, color, banner) in fac.items():
        teams.append(f"team add rb_{f}")
        teams.append(f"team modify rb_{f} color {color}")
    P.fn("setup/teams", teams + ["function riftbrek:setup/team_veil"])
    P.fn("setup/team_veil", ["team modify rb_veil nametagVisibility never", "team modify rb_veil seeFriendlyInvisibles false"])
    # Isolated: game-rule names changed in 1.21.11 (snake_case). A failure here cannot break load.
    P.fn("setup/gamerules", [
        "# Silences command-block feedback to ops. 1.21.11 renamed game rules to namespaced snake_case.",
        "# If /reload reports an error for THIS file only, run the rule by hand: /gamerule command_block_output false",
        "gamerule minecraft:command_block_output false",
    ])

    tick = [
        "scoreboard players enable @a rb_req",
        "execute as @a[scores={rb_req=1..}] run function riftbrek:req/dispatch",
        "# Veil operatives are kept invisible everywhere (zone/visible overrides this for non-Veil only).",
        "execute as @a[tag=rb_veil,tag=!rb_revoked] run effect give @s minecraft:invisibility 4 0 true",
        "# Visitor passes count down in ONLINE ticks.",
        "execute as @a[tag=rb_guest,scores={rb_visitor=1..}] run scoreboard players remove @s rb_visitor 1",
        "execute as @a[tag=rb_guest,scores={rb_visitor=..0}] run function riftbrek:visitor/expire",
        "execute as @a[scores={rb_msgcd=1..}] run scoreboard players remove @s rb_msgcd 1",
        "execute as @a[scores={rb_cbs=1..}] run scoreboard players remove @s rb_cbs 1",
    ]
    P.fn("tick", tick)

    # ------------------------------------------------------------------ trigger dispatch (player facing)
    disp = [
        "# Player-facing commands: /trigger rb_req set <n>.  Every action re-validates server side.",
        "execute if score @s rb_req matches 1 run function riftbrek:book/issue",
        "execute if score @s rb_req matches 2 run function riftbrek:kit/request",
        "execute if score @s rb_req matches 3 run function riftbrek:registry/public",
        "execute if score @s rb_req matches 4 run function riftbrek:registry/leader_private",
        "execute if score @s rb_req matches 5 run function riftbrek:registry/self",
        "execute if score @s rb_req matches 9 run function riftbrek:req/help",
    ]
    creators = ["flame", "wemmbu", "theobald", "parrot", "manepear", "spoke"]
    for i, c in enumerate(creators):
        disp.append(f"execute if score @s rb_req matches {11 + i} run function riftbrek:kit/creator_{c}")
    disp += ["scoreboard players set @s rb_req 0", "scoreboard players enable @s rb_req"]
    P.fn("req/dispatch", disp)
    P.fn("req/help", [
        tellraw("@s", "RIFTBREK commands: /trigger rb_req set N  |  1 ID book | 2 faction kit | 3 public roster | 4 leader registry | 5 my status | 11-16 creator kits | 9 help", "light_purple")])

    # ------------------------------------------------------------------ admin: faction helpers
    P.fn("admin/_clear_roles", [f"tag @s remove rb_{f}" for f in fac] + [
        "tag @s remove rb_leader", "tag @s remove rb_royal", "tag @s remove rb_guest", "tag @s remove rb_revoked"] +
        [f"tag @s remove rb_leader_{f}" for f in fac] + [f"team leave @s"])
    P.fn("admin/_newid", [
        "scoreboard players operation @s rb_id = #NEXT rb_id",
        "scoreboard players add #NEXT rb_id 1"])
    for f, (name, code, role, color, banner) in fac.items():
        P.fn(f"admin/_faction_{f}", [
            f"tag @s add rb_{f}", "tag @s add rb_member",
            f"scoreboard players set @s rb_role {role}",
            f"scoreboard players set @s rb_clear {L.CLR_MEMBER}",
            "scoreboard players set @s rb_cred 1",
            f"team join rb_{f} @s",
            f'data modify storage riftbrek:tmp q.faction set value "{name}"',
            f'data modify storage riftbrek:tmp q.fcode set value "{code}"',
            'data modify storage riftbrek:tmp q.rank set value "Member"',
        ])

    # register: operator entry point (macro)
    P.fn("admin/register", [
        "# OP ONLY.  /function riftbrek:admin/register {mc:\"PlayerName\",discord:\"discord_handle\",faction:\"birds\"}",
        "# faction = birds | unstables | abstracters | veil | archivist | wildcards.  Player must be ONLINE.",
        '$execute unless entity @a[name=$(mc)] run tellraw @s {"text":"RIFTBREK: $(mc) must be online to register.","color":"red"}',
        '$execute as $(mc) run function riftbrek:admin/register_apply {mc:"$(mc)",discord:"$(discord)",faction:"$(faction)"}',
    ])
    P.fn("admin/register_apply", [
        "# executes AS the player being registered (macro args come from admin/register)",
        "execute if score @s rb_id matches 1.. run tag @s add rb_rereg",
        "function riftbrek:admin/_clear_roles",
        "execute unless score @s rb_id matches 1.. run function riftbrek:admin/_newid",
        "data modify storage riftbrek:tmp q set value {}",
        "execute store result storage riftbrek:tmp q.id int 1 run scoreboard players get @s rb_id",
        '$data modify storage riftbrek:tmp q.mc set value "$(mc)"',
        '$data modify storage riftbrek:tmp q.discord set value "$(discord)"',
        '$data modify storage riftbrek:tmp q.key set value "$(faction)"',
        '$function riftbrek:admin/_faction_$(faction)',
        'data modify storage riftbrek:tmp q.status set value "active"',
        "function riftbrek:admin/_write with storage riftbrek:tmp q",
        "data modify storage riftbrek:tmp n set value {}",
        "execute store result storage riftbrek:tmp n.id int 1 run scoreboard players get @s rb_id",
        "execute if entity @s[tag=!rb_rereg] run data modify storage riftbrek:registry roster append from storage riftbrek:tmp n",
        "tag @s remove rb_rereg",
        "function riftbrek:log/entry_register",
        tellraw("@s", "RIFTBREK: you are registered. Credential active. Use /trigger rb_req set 1 for your ID book.", "aqua"),
    ])
    P.fn("admin/_write", [
        '$data modify storage riftbrek:registry players."$(id)" set value {id:$(id),mc:"$(mc)",discord:"$(discord)",key:"$(key)",faction:"$(faction)",fcode:"$(fcode)",rank:"$(rank)",status:"$(status)"}'])

    # helper: run a macro on a named player & fetch their id into storage
    P.fn("admin/_setrank", [
        "# executes as player; macro arg: rank",
        "data modify storage riftbrek:tmp r set value {}",
        "execute store result storage riftbrek:tmp r.id int 1 run scoreboard players get @s rb_id",
        '$data modify storage riftbrek:tmp r.rank set value "$(rank)"',
        "function riftbrek:admin/_setrank2 with storage riftbrek:tmp r"])
    P.fn("admin/_setrank2", ['$data modify storage riftbrek:registry players."$(id)".rank set value "$(rank)"'])
    P.fn("admin/_setstatus", [
        "data modify storage riftbrek:tmp r set value {}",
        "execute store result storage riftbrek:tmp r.id int 1 run scoreboard players get @s rb_id",
        '$data modify storage riftbrek:tmp r.status set value "$(status)"',
        "function riftbrek:admin/_setstatus2 with storage riftbrek:tmp r"])
    P.fn("admin/_setstatus2", ['$data modify storage riftbrek:registry players."$(id)".status set value "$(status)"'])

    # leader / royal / revoke / restore / visitor
    leader_lines = [
        "# OP ONLY. /function riftbrek:admin/leader {mc:\"PlayerName\"}   (player must already be registered)",
        '$execute unless entity @a[name=$(mc),tag=rb_member,tag=!rb_revoked] run tellraw @s {"text":"RIFTBREK: $(mc) is not an active registered member - register first.","color":"red"}',
        '$execute as $(mc) if entity @s[tag=rb_member,tag=!rb_revoked] run function riftbrek:admin/leader_apply',
    ]
    P.fn("admin/leader", leader_lines)
    la = ["tag @s add rb_leader"]
    for f in fac:
        la.append(f"execute if entity @s[tag=rb_{f}] run tag @s add rb_leader_{f}")
    la += [f"scoreboard players set @s rb_clear {L.CLR_LEADER}",
           'function riftbrek:admin/_setrank {rank:"Leader"}',
           "function riftbrek:log/entry_leader",
           tellraw("@s", "RIFTBREK: leadership role active. Request your Leader ID book with /trigger rb_req set 1.", "gold")]
    P.fn("admin/leader_apply", la)
    P.fn("admin/unleader", [
        "# OP ONLY. /function riftbrek:admin/unleader {mc:\"PlayerName\"}",
        '$execute as $(mc) run function riftbrek:admin/unleader_apply'])
    P.fn("admin/unleader_apply", ["tag @s remove rb_leader"] + [f"tag @s remove rb_leader_{f}" for f in fac] + [
        f"execute if entity @s[tag=rb_member,tag=!rb_royal] run scoreboard players set @s rb_clear {L.CLR_MEMBER}",
        'execute if entity @s[tag=!rb_royal] run function riftbrek:admin/_setrank {rank:"Member"}',
        tellraw("@s", "RIFTBREK: leadership role removed.", "yellow")])
    P.fn("admin/royal", [
        "# OP ONLY. /function riftbrek:admin/royal {mc:\"PlayerName\"}",
        '$execute as $(mc) run function riftbrek:admin/royal_apply'])
    P.fn("admin/royal_apply", [
        "tag @s remove rb_revoked", "tag @s add rb_royal", "tag @s add rb_member",
        f"scoreboard players set @s rb_clear {L.CLR_ROYAL}", "scoreboard players set @s rb_cred 1",
        "execute unless score @s rb_id matches 1.. run function riftbrek:admin/_newid",
        'function riftbrek:admin/_setrank {rank:"Royal"}',
        "function riftbrek:log/entry_royal",
        tellraw("@s", "RIFTBREK: Royal clearance assigned.", "gold")])
    P.fn("admin/unroyal", [
        "# OP ONLY. /function riftbrek:admin/unroyal {mc:\"PlayerName\"}",
        '$execute as $(mc) run function riftbrek:admin/unroyal_apply'])
    P.fn("admin/unroyal_apply", [
        "tag @s remove rb_royal",
        f"scoreboard players set @s rb_clear {L.CLR_MEMBER}",
        "execute if entity @s[tag=rb_leader] run scoreboard players set @s rb_clear 4",
        'function riftbrek:admin/_setrank {rank:"Member"}',
        tellraw("@s", "RIFTBREK: Royal clearance removed.", "yellow")])
    P.fn("admin/revoke", [
        "# OP ONLY. Revokes EVERYTHING: tags, clearance, credential. /function riftbrek:admin/revoke {mc:\"PlayerName\"}",
        '$execute as $(mc) run function riftbrek:admin/revoke_apply'])
    P.fn("admin/revoke_apply", [f"tag @s remove rb_{f}" for f in fac] + [f"tag @s remove rb_leader_{f}" for f in fac] + [
        "tag @s remove rb_member", "tag @s remove rb_leader", "tag @s remove rb_guest", "tag @s remove rb_royal",
        "tag @s add rb_revoked",
        "scoreboard players set @s rb_clear 0", "scoreboard players set @s rb_cred 0",
        "scoreboard players set @s rb_role 0", "scoreboard players set @s rb_visitor 0",
        "team leave @s", "effect clear @s minecraft:invisibility",
        'function riftbrek:admin/_setstatus {status:"revoked"}',
        "function riftbrek:log/entry_revoke",
        tellraw("@s", "RIFTBREK: credentials revoked. Doors, kits and registry access are disabled server-side.", "red")])
    P.fn("admin/revoke_credential", [
        "# OP ONLY. Suspends the credential only (tags kept). /function riftbrek:admin/revoke_credential {mc:\"PlayerName\"}",
        '$execute as $(mc) run function riftbrek:admin/suspend_apply'])
    P.fn("admin/suspend_apply", [
        "scoreboard players set @s rb_cred 0",
        'function riftbrek:admin/_setstatus {status:"suspended"}',
        tellraw("@s", "RIFTBREK: credential suspended.", "red")])
    P.fn("admin/restore", [
        "# OP ONLY. Restores a suspended credential for an un-revoked member. /function riftbrek:admin/restore {mc:\"PlayerName\"}",
        '$execute as $(mc) run function riftbrek:admin/restore_apply'])
    P.fn("admin/restore_apply", [
        "execute if entity @s[tag=rb_member,tag=!rb_revoked] run scoreboard players set @s rb_cred 1",
        "execute if entity @s[tag=rb_member,tag=!rb_revoked] run function riftbrek:admin/_setstatus {status:\"active\"}",
        "execute unless entity @s[tag=rb_member,tag=!rb_revoked] run " + tellraw("@s", "Cannot restore: player is revoked or not registered. Use admin/register again.", "red"),
        "execute if entity @s[tag=rb_member,tag=!rb_revoked] run " + tellraw("@s", "RIFTBREK: credential restored.", "green")])
    P.fn("admin/visitor", [
        "# OP ONLY. 10-minute visitor pass (12000 ONLINE ticks). /function riftbrek:admin/visitor {mc:\"PlayerName\"}",
        '$execute as $(mc) run function riftbrek:admin/visitor_apply {mc:"$(mc)"}'])
    P.fn("admin/visitor_apply", [
        "execute if entity @s[tag=rb_member] run " + tellraw("@s", "Already a member - visitor pass not needed.", "yellow"),
        '$execute unless entity @s[tag=rb_member] run function riftbrek:admin/visitor_grant {mc:"$(mc)"}'])
    P.fn("admin/visitor_grant", [
        "tag @s remove rb_revoked", "tag @s add rb_guest",
        "execute unless score @s rb_id matches 1.. run function riftbrek:admin/_newid",
        "scoreboard players set @s rb_visitor 12000", f"scoreboard players set @s rb_clear {L.CLR_VISITOR}",
        "scoreboard players set @s rb_cred 1",
        "data modify storage riftbrek:tmp q set value {}",
        "execute store result storage riftbrek:tmp q.id int 1 run scoreboard players get @s rb_id",
        '$data modify storage riftbrek:tmp q.mc set value "$(mc)"',
        'data modify storage riftbrek:tmp q.discord set value "n/a"',
        'data modify storage riftbrek:tmp q.key set value "visitor"',
        'data modify storage riftbrek:tmp q.faction set value "Visitor"',
        'data modify storage riftbrek:tmp q.fcode set value "VS"',
        'data modify storage riftbrek:tmp q.rank set value "Visitor"',
        'data modify storage riftbrek:tmp q.status set value "active"',
        "function riftbrek:admin/_write with storage riftbrek:tmp q",
        tellraw("@s", "RIFTBREK: visitor pass active for ~10 minutes of online time.", "aqua")])
    P.fn("visitor/expire", [
        "tag @s remove rb_guest", "scoreboard players set @s rb_clear 0", "scoreboard players set @s rb_cred 0",
        'function riftbrek:admin/_setstatus {status:"expired"}',
        tellraw("@s", "RIFTBREK: visitor access expired.", "yellow")])
    P.fn("admin/lockdown_on", [
        "# OP ONLY. Closes every door except Royal-tier doors.",
        "scoreboard players set #GLOBAL rb_lock 1",
        'tellraw @a {"text":"RIFTBREK LOCKDOWN: secure facilities closed by staff.","color":"red"}'])
    P.fn("admin/lockdown_off", [
        "scoreboard players set #GLOBAL rb_lock 0",
        'tellraw @a {"text":"RIFTBREK LOCKDOWN LIFTED.","color":"green"}'])
    P.fn("admin/incident", [
        "# OP ONLY. /function riftbrek:admin/incident {mc:\"PlayerName\"}",
        '$execute as $(mc) run scoreboard players add @s rb_incident 1',
        '$tellraw @s {"text":"Incident counter incremented for $(mc). Document in the Archivist log.","color":"yellow"}'])
    P.fn("admin/whois", [
        "# OP ONLY - shows full record INCLUDING Veil. Output goes to the operator only. {id:1001}",
        '$data modify storage riftbrek:tmp rec set from storage riftbrek:registry players."$(id)"',
        "function riftbrek:registry/show_full with storage riftbrek:tmp rec"])
    P.fn("admin/recover", [
        "# OP ONLY - admin recovery: re-creates objectives/teams/storage WITHOUT touching any player data.",
        "function riftbrek:load",
        tellraw("@s", "RIFTBREK recovery complete (no player data was reset).", "green")])
    P.fn("admin/reset_cooldown", [
        "# OP ONLY - run AS the player: execute as Name run function riftbrek:admin/reset_cooldown",
        "scoreboard players set @s rb_kit 0", "scoreboard players set @s rb_lastkit 0"])
    P.fn("admin/gate_test", [
        "# run AS a player to see which tiers they would pass",
        "execute if entity @s[tag=!rb_revoked,scores={rb_cred=1..,rb_clear=1..}] run " + tellraw("@s", "public tier: PASS", "green"),
        "execute if entity @s[tag=!rb_revoked,scores={rb_cred=1..,rb_clear=2..}] run " + tellraw("@s", "member tier: PASS", "green"),
        "execute if entity @s[tag=!rb_revoked,scores={rb_cred=1..,rb_clear=4..}] run " + tellraw("@s", "leader tier: PASS", "green"),
        "execute if entity @s[tag=rb_royal,tag=!rb_revoked,scores={rb_cred=1..,rb_clear=5..}] run " + tellraw("@s", "royal tier: PASS", "gold"),
        "execute if score #GLOBAL rb_lock matches 1 run " + tellraw("@s", "LOCKDOWN ACTIVE: only royal doors open", "red")])

    # ------------------------------------------------------------------ logs (Veil-safe)
    for ev, txt in [("register", "registered"), ("leader", "promoted to Leader"), ("royal", "granted Royal"), ("revoke", "revoked")]:
        P.fn(f"log/entry_{ev}", [
            "data modify storage riftbrek:tmp l set value {}",
            "execute store result storage riftbrek:tmp l.id int 1 run scoreboard players get @s rb_id",
            "execute store result storage riftbrek:tmp l.time int 1 run time query gametime",
            f'data modify storage riftbrek:tmp l.event set value "{txt}"',
            # Veil entries are logged by credential id ONLY - no username is ever written.
            "execute if entity @s[tag=rb_veil] run data modify storage riftbrek:tmp l.veil set value 1b",
            "data modify storage riftbrek:log entries append from storage riftbrek:tmp l"])
    P.fn("log/entry_kit", [
        "data modify storage riftbrek:tmp l set value {}",
        "execute store result storage riftbrek:tmp l.id int 1 run scoreboard players get @s rb_id",
        "execute store result storage riftbrek:tmp l.time int 1 run time query gametime",
        'data modify storage riftbrek:tmp l.event set value "kit issued"',
        "data modify storage riftbrek:log entries append from storage riftbrek:tmp l"])

    # ------------------------------------------------------------------ registry
    P.fn("registry/self", [
        "data modify storage riftbrek:tmp q set value {}",
        "execute store result storage riftbrek:tmp q.id int 1 run scoreboard players get @s rb_id",
        "execute unless score @s rb_id matches 1.. run " + tellraw("@s", "You are not registered.", "red"),
        "execute if score @s rb_id matches 1.. run function riftbrek:registry/self_fetch with storage riftbrek:tmp q"])
    P.fn("registry/self_fetch", [
        '$data modify storage riftbrek:tmp rec set from storage riftbrek:registry players."$(id)"',
        "function riftbrek:registry/show_self with storage riftbrek:tmp rec"])
    P.fn("registry/show_self", [
        '$tellraw @s [{"text":"Vanguard registry | ","color":"aqua"},{"text":"$(faction) | $(rank) | status: $(status) | credential RB-$(fcode)-$(id)","color":"white"}]'])
    P.fn("registry/show_full", [
        '$tellraw @s {"text":"[ADMIN] RB-$(fcode)-$(id) | MC: $(mc) | Discord: $(discord) | $(faction) | $(rank) | $(status)","color":"gold"}'])
    P.fn("registry/show", [
        '$tellraw @s {"text":"RB-$(fcode)-$(id) | MC: $(mc) | Discord: $(discord) | $(faction) | $(rank) | $(status)","color":"light_purple"}'])
    P.fn("registry/show_veil", [
        '$tellraw @s {"text":"CLASSIFIED RB-VL-$(id) | MC: $(mc) | Discord: $(discord) | $(rank) | $(status)","color":"dark_purple"}'])
    P.fn("registry/fetch_show", [
        '$data modify storage riftbrek:tmp rec set from storage riftbrek:registry players."$(id)"',
        "# Veil is NEVER shown in the public roster, whatever list the id came from",
        'execute unless data storage riftbrek:tmp rec{key:"veil"} run function riftbrek:registry/show with storage riftbrek:tmp rec'])
    P.fn("registry/fetch_show_veil", [
        '$data modify storage riftbrek:tmp rec set from storage riftbrek:registry players."$(id)"',
        'execute if data storage riftbrek:tmp rec{key:"veil"} run function riftbrek:registry/show_veil with storage riftbrek:tmp rec'])
    P.fn("registry/public", [
        "# Public roster: every NON-Veil member with Minecraft + Discord usernames. Veil is never listed.",
        'tellraw @s {"text":"=== RIFTBREK Vanguard roster ===","color":"light_purple"}',
        "data modify storage riftbrek:tmp iter set from storage riftbrek:registry roster",
        "function riftbrek:registry/iter",
        'tellraw @s {"text":"Veil: CLASSIFIED. Names, Discord handles and UUIDs are omitted.","color":"dark_purple"}'])
    P.fn("registry/iter", [
        "execute if data storage riftbrek:tmp iter[0] run function riftbrek:registry/fetch_show with storage riftbrek:tmp iter[0]",
        "data remove storage riftbrek:tmp iter[0]",
        "execute if data storage riftbrek:tmp iter[0] run function riftbrek:registry/iter"])
    P.fn("registry/leader_private", [
        "# Leader/Royal only, output to the caller only. NEVER paste this output publicly.",
        "execute unless entity @s[tag=!rb_revoked,scores={rb_cred=1..,rb_clear=4..}] run " + tellraw("@s", "DENIED: leader authorization required.", "red"),
        "execute if entity @s[tag=!rb_revoked,scores={rb_cred=1..,rb_clear=4..}] run function riftbrek:registry/veil_list"])
    P.fn("registry/veil_list", [
        'tellraw @s {"text":"=== VEIL LEDGER (restricted) ===","color":"dark_purple"}',
        "data modify storage riftbrek:tmp iter set from storage riftbrek:registry roster",
        "function riftbrek:registry/iter_veil"])
    P.fn("registry/iter_veil", [
        "execute if data storage riftbrek:tmp iter[0] run function riftbrek:registry/fetch_show_veil with storage riftbrek:tmp iter[0]",
        "data remove storage riftbrek:tmp iter[0]",
        "execute if data storage riftbrek:tmp iter[0] run function riftbrek:registry/iter_veil"])

    # ------------------------------------------------------------------ identity books (data from registry, never trusted)
    P.fn("book/issue", [
        "# Books are informational only. Doors/kits NEVER read books - only server-side tags & scores.",
        "execute unless score @s rb_id matches 1.. run " + tellraw("@s", "Book denied: you are not registered.", "red"),
        "execute if entity @s[tag=rb_revoked] run " + tellraw("@s", "Book denied: credential revoked.", "red"),
        "data modify storage riftbrek:tmp q set value {}",
        "execute store result storage riftbrek:tmp q.id int 1 run scoreboard players get @s rb_id",
        "execute if score @s rb_id matches 1.. unless entity @s[tag=rb_revoked] run function riftbrek:book/fetch with storage riftbrek:tmp q"])
    P.fn("book/fetch", [
        '$data modify storage riftbrek:tmp rec set from storage riftbrek:registry players."$(id)"',
        "execute store result storage riftbrek:tmp rec.clear int 1 run scoreboard players get @s rb_clear",
        "execute if entity @s[tag=rb_veil] run function riftbrek:book/give_veil with storage riftbrek:tmp rec",
        "execute if entity @s[tag=rb_guest] run function riftbrek:book/give_visitor with storage riftbrek:tmp rec",
        "execute if entity @s[tag=!rb_veil,tag=!rb_guest,tag=rb_member] run function riftbrek:book/give_member with storage riftbrek:tmp rec",
        "scoreboard players add @s rb_issued 1"])
    hdr = "RIFTBREK VANGUARD\\n"
    note = "\\n\\nThis book is NOT access. Doors check the server registry."
    P.fn("book/give_member", [
        '$give @s minecraft:written_book[minecraft:written_book_content={title:"Vanguard $(rank) ID",author:"RIFTBREK",pages:["' + hdr +
        'Minecraft: $(mc)\\nDiscord: $(discord)\\nFaction: $(faction)\\nRank: $(rank)\\nClearance: $(clear)\\nCredential: RB-$(fcode)-$(id)' + note + '"]}]'])
    P.fn("book/give_veil", [
        '$give @s minecraft:written_book[minecraft:written_book_content={title:"Veil Anonymous ID",author:"RIFTBREK",pages:["' + hdr +
        'VEIL OPERATIVE\\nIdentity: CLASSIFIED\\nRank: $(rank)\\nClearance: $(clear)\\nOperative code: RB-VL-$(id)\\n\\nLeaders verify privately.' + note + '"]}]'])
    P.fn("book/give_visitor", [
        '$give @s minecraft:written_book[minecraft:written_book_content={title:"Visitor Access ID",author:"RIFTBREK",pages:["' + hdr +
        'VISITOR\\nMinecraft: $(mc)\\nClearance: $(clear)\\nPass: RB-VS-$(id)\\n\\nTemporary access expires automatically.' + note + '"]}]'])

    # ------------------------------------------------------------------ kits
    def armor(e):
        return [f"give @s minecraft:netherite_{p}[minecraft:enchantments={e}] 1" for p in ("helmet", "chestplate", "leggings", "boots")]

    def sword(e):
        return f"give @s minecraft:netherite_sword[minecraft:enchantments={e}] 1"

    base_extra = {
        "birds": ["give @s minecraft:elytra 1", "give @s minecraft:trident 1", "give @s minecraft:mace 1", "give @s minecraft:netherite_pickaxe 1", "give @s minecraft:ender_pearl 16"],
        "unstables": ["give @s minecraft:crossbow 1", "give @s minecraft:wind_charge 16", "give @s minecraft:ender_pearl 16", "give @s minecraft:cobweb 1"],
        "abstracters": ["give @s minecraft:bow 1", "give @s minecraft:arrow 64", "give @s minecraft:mace 1", "give @s minecraft:ender_pearl 16"],
        "veil": ["give @s minecraft:spyglass 1", "give @s minecraft:ender_pearl 16", 'give @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:long_invisibility"}] 1'],
        "archivist": ["give @s minecraft:shulker_box 1", "give @s minecraft:ender_chest 1", "give @s minecraft:book 1", "give @s minecraft:netherite_pickaxe 1"],
        "wildcards": ["give @s minecraft:elytra 1", "give @s minecraft:firework_rocket 16", "give @s minecraft:netherite_pickaxe 1", "give @s minecraft:crafting_table 1"],
    }
    P.fn("kit/_cooldown_check", [
        "# sets tag rb_kit_ok on @s when a kit may be issued (cooldown 12000 ticks = 10 min; Royal bypasses)",
        "tag @s remove rb_kit_ok",
        "execute store result score #now rb_tmp run time query gametime",
        "scoreboard players operation #diff rb_tmp = #now rb_tmp",
        "scoreboard players operation #diff rb_tmp -= @s rb_lastkit",
        "execute unless score @s rb_kit matches 1.. run tag @s add rb_kit_ok",
        "execute if score @s rb_kit matches 1.. if score #diff rb_tmp matches 12000.. run tag @s add rb_kit_ok",
        "execute if entity @s[tag=rb_royal] run tag @s add rb_kit_ok",
        "execute if entity @s[tag=!rb_kit_ok] unless score @s rb_msgcd matches 1.. run " + tellraw("@s", "Kit on cooldown (10 min between kits).", "yellow"),
        "execute if entity @s[tag=!rb_kit_ok] run scoreboard players set @s rb_msgcd 100"])
    P.fn("kit/_done", [
        "scoreboard players add @s rb_kit 1",
        "scoreboard players operation @s rb_lastkit = #now rb_tmp",
        "function riftbrek:log/entry_kit",
        tellraw("@s", "Kit issued and logged in the Archivist ledger.", "green")])
    for f, (name, code, role, color, banner) in fac.items():
        lines = ["clear @s minecraft:shield 0",
                 f'give @s minecraft:shield[minecraft:base_color="{banner}"] 1'] + armor(ENCH_ARMOR) + [sword(ENCH_SWORD),
                 "give @s minecraft:cooked_beef 32", "give @s minecraft:golden_apple 8"] + base_extra[f] + ["function riftbrek:kit/_done"]
        P.fn(f"kit/internal_{f}", lines)
        P.fn(f"kit/{f}", [
            f"execute unless entity @s[tag=rb_{f},tag=!rb_revoked,scores={{rb_cred=1..}}] run " + tellraw("@s", "Kit denied: faction or credential invalid.", "red"),
            f"execute if entity @s[tag=rb_{f},tag=!rb_revoked,scores={{rb_cred=1..}}] run function riftbrek:kit/_cooldown_check",
            f"execute if entity @s[tag=rb_{f},tag=!rb_revoked,tag=rb_kit_ok,scores={{rb_cred=1..}}] run function riftbrek:kit/internal_{f}",
        ])
        # physical kit pad (command block under a pad): only authorised faction members trigger it
        P.fn(f"kit/pad_{f}", [
            f"execute as @a[distance=..2.5,tag=rb_{f},tag=!rb_revoked,scores={{rb_cred=1..}}] run function riftbrek:kit/{f}"])
    req = ["# trigger 2: issue the kit of the caller's own faction"]
    for f in fac:
        req.append(f"execute if entity @s[tag=rb_{f}] run function riftbrek:kit/{f}")
    req.append("execute unless entity @s[tag=rb_member] run " + tellraw("@s", "Kit denied: members only.", "red"))
    P.fn("kit/request", req)

    cr = {
        "flame":    ("FlameFrags", ["give @s minecraft:bow 1", 'give @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:fire_resistance"}] 1', "give @s minecraft:golden_apple 8"]),
        "wemmbu":   ("Wemmbu", ["give @s minecraft:crossbow 1", "give @s minecraft:wind_charge 16", "give @s minecraft:golden_apple 8"]),
        "theobald": ("TheobaldTheBird", ["give @s minecraft:elytra 1", "give @s minecraft:firework_rocket 16", "give @s minecraft:golden_apple 8"]),
        "parrot":   ("ParrotX2", ["give @s minecraft:elytra 1", "give @s minecraft:ender_pearl 8", "give @s minecraft:golden_apple 8"]),
        "manepear": ("ManePear", ["give @s minecraft:bow 1", "give @s minecraft:mace 1", "give @s minecraft:golden_apple 8"]),
        "spoke":    ("SpokeIsHere", ["give @s minecraft:crossbow 1", "give @s minecraft:redstone 16", "give @s minecraft:ender_pearl 8", "give @s minecraft:golden_apple 8"]),
    }
    for c, (nm, extra) in cr.items():
        P.fn(f"kit/internal_creator_{c}", ["give @s minecraft:shield 1"] + armor(ENCH_ARMOR_C) + [sword(ENCH_SWORD_C)] + extra + [
            "function riftbrek:kit/_done",
            tellraw("@s", f"Issued custom {nm}-inspired kit (design choice, not verified canon).", "green")])
        P.fn(f"kit/creator_{c}", [
            "execute unless entity @s[tag=rb_member,tag=!rb_revoked,scores={rb_cred=1..}] run " + tellraw("@s", "Creator kit denied: active membership required.", "red"),
            "execute if entity @s[tag=rb_member,tag=!rb_revoked,scores={rb_cred=1..}] run function riftbrek:kit/_cooldown_check",
            f"execute if entity @s[tag=rb_member,tag=!rb_revoked,tag=rb_kit_ok,scores={{rb_cred=1..}}] run function riftbrek:kit/internal_creator_{c}"])
        P.fn(f"kit/pad_creator_{c}", [
            f"execute as @a[distance=..2.5,tag=rb_member,tag=!rb_revoked,scores={{rb_cred=1..}}] run function riftbrek:kit/creator_{c}"])

    # ------------------------------------------------------------------ access doors (run by command blocks in the schematic)
    for tier, (sels, royal_pass, exempt) in L.DOOR_TIERS.items():
        allsel = list(sels) + ([L.ROYAL_SEL] if royal_pass else [])
        for w in L.DOOR_WIDTHS:
            if w == 1:
                pos_in, pos_out = "", ""
                setb = lambda b: f"setblock ~ ~-1 ~ minecraft:{b}"
                rad = 3
            else:
                shift = w // 2
                pos_in, pos_out = f"positioned ~{shift} ~ ~ ", f" positioned ~-{shift} ~ ~"
                setb = lambda b, w=w: f"fill ~ ~-1 ~ ~{w - 1} ~-1 ~ minecraft:{b}"
                rad = w // 2 + 3
            lines = [f"# door tier '{tier}' width {w}: runs AT the command block; the power slot is the cell directly BELOW it (door lintel). Open = redstone_block, closed = iron_bars"]
            for s in allsel:
                is_royal = (s == L.ROYAL_SEL)
                lockc = "" if (is_royal or exempt) else " unless score #GLOBAL rb_lock matches 1"
                lines.append(f"execute {pos_in}if entity @a[distance=..{rad},{s}]{lockc}{pos_out} run {setb('redstone_block')}")
            unl = " ".join(f"unless entity @a[distance=..{rad},{s}]" for s in allsel)
            lines.append(f"execute {pos_in}{unl}{pos_out} run {setb('iron_bars')}")
            if not exempt:
                # lockdown closes everything for non-royal: close unless a royal is present
                lines.append(f"execute {pos_in}if score #GLOBAL rb_lock matches 1 unless entity @a[distance=..{rad},{L.ROYAL_SEL}]{pos_out} run {setb('iron_bars')}")
            P.fn(f"door/{tier}" + ("" if w == 1 else f"_w{w}"), lines)

    # ------------------------------------------------------------------ zones (run by command blocks)
    P.fn("zone/visible", [
        "# secure zone: non-Veil players must be visible. Veil stay invisible (tick keeps re-applying it).",
        "execute as @a[distance=..48,tag=!rb_veil] run effect clear @s minecraft:invisibility"])
    P.fn("zone/visible_wide", [
        "# same as zone/visible but 100 blocks wide: used by the faction wings and the citadel (up to 192 blocks across)",
        "execute as @a[distance=..100,tag=!rb_veil] run effect clear @s minecraft:invisibility"])
    P.fn("zone/chunkban", [
        "# SAFE SIMULATED 'chunk ban square' - no chunk is touched. Unauthorised players are slowed, warned, then ejected.",
        "# square is 48x48; the command block sits at its centre, 1 block below the paving",
        "execute positioned ~-24 ~-1 ~-24 as @a[dx=47,dy=16,dz=47,tag=!rb_member,tag=!rb_guest] positioned ~24 ~1 ~24 run function riftbrek:zone/cbs_hit"])
    P.fn("zone/cbs_hit", [
        "scoreboard players add @s rb_cbs 2",
        "effect give @s minecraft:slowness 2 3 true",
        "effect give @s minecraft:darkness 2 0 true",
        "execute unless score @s rb_msgcd matches 1.. run " + tellraw("@s", "CHUNK BAN SQUARE: unauthorised. Leave now or you will be ejected.", "red"),
        "scoreboard players set @s rb_msgcd 100",
        "execute if score @s rb_cbs matches 120.. run function riftbrek:zone/cbs_eject"])
    P.fn("zone/cbs_eject", [
        "# executor position is the command block: push the offender 28 blocks south (outside the wall)",
        "tp @s ~ ~ ~28",
        "scoreboard players set @s rb_cbs 0",
        tellraw("@s", "You were ejected from the Chunk Ban Square (simulation).", "red")])
    P.fn("zone/lockdown_siren", [
        "# optional alarm: place a command block beside a note block / lamp array",
        "execute if score #GLOBAL rb_lock matches 1 run setblock ~ ~1 ~ minecraft:redstone_block",
        "execute unless score #GLOBAL rb_lock matches 1 run setblock ~ ~1 ~ minecraft:air"])

    return P


def build_with_layout(root, extra_fn):
    P = build(root)
    extra_fn(P)
    return P


def package(root, zip_path):
    os.makedirs(os.path.dirname(zip_path), exist_ok=True)
    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED) as z:
        for dp, dn, fns in os.walk(root):
            dn.sort()
            for fn in sorted(fns):
                full = os.path.join(dp, fn)
                z.write(full, os.path.relpath(full, root))
