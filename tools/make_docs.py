"""Generates docs that must stay in sync with the build: command handbook + module index."""
import sys, os, re, collections
sys.path.insert(0, os.path.dirname(__file__))
import validate
from riftbrek import layout as L

ROOT = os.path.join(os.path.dirname(__file__), "..")
PACK = os.path.join(ROOT, "datapack", "RIFTBREK_Vanguard_Datapack")
LIT = os.path.join(ROOT, "dist", "RIFTBREK_Vanguard_Headquarters_MASTER.litematic")
ids, texts = validate.functions(PACK)

ADMIN = [  # (function, args, who, what, example)
    ("admin/register", '{mc,discord,faction}', "OP (level 2+)", "Registers an ONLINE player: assigns a credential id, faction tags, team, clearance 2, writes the registry record. faction = birds | unstables | abstracters | veil | archivist | wildcards.",
     '/function riftbrek:admin/register {mc:"Steve",discord:"steve_discord",faction:"birds"}'),
    ("admin/leader", '{mc}', "OP", "Promotes a registered, un-revoked member to faction Leader (clearance 4).", '/function riftbrek:admin/leader {mc:"Steve"}'),
    ("admin/unleader", '{mc}', "OP", "Removes leadership (back to clearance 2 unless Royal).", '/function riftbrek:admin/unleader {mc:"Steve"}'),
    ("admin/royal", '{mc}', "OP", "Grants Royal clearance 5 (royal doors, lockdown-proof, kit cooldown bypass).", '/function riftbrek:admin/royal {mc:"wetygo"}'),
    ("admin/unroyal", '{mc}', "OP", "Removes Royal clearance.", '/function riftbrek:admin/unroyal {mc:"wetygo"}'),
    ("admin/revoke", '{mc}', "OP", "Full revocation: every faction/leader/royal/guest tag removed, rb_revoked added, clearance + credential = 0, team left, invisibility cleared, registry status = revoked.", '/function riftbrek:admin/revoke {mc:"Steve"}'),
    ("admin/revoke_credential", '{mc}', "OP", "Suspends ONLY the credential (rb_cred = 0). Tags stay so the player can be restored.", '/function riftbrek:admin/revoke_credential {mc:"Steve"}'),
    ("admin/restore", '{mc}', "OP", "Restores a suspended credential. Refuses revoked players (re-register them).", '/function riftbrek:admin/restore {mc:"Steve"}'),
    ("admin/visitor", '{mc}', "OP", "10-minute visitor pass (12000 ONLINE ticks, clearance 1). Ignored for members.", '/function riftbrek:admin/visitor {mc:"Guest123"}'),
    ("admin/lockdown_on", "-", "OP", "Emergency lockdown: every command-block door closes except royal-tier doors; royal players still pass everything.", "/function riftbrek:admin/lockdown_on"),
    ("admin/lockdown_off", "-", "OP", "Lifts lockdown.", "/function riftbrek:admin/lockdown_off"),
    ("admin/incident", '{mc}', "OP", "Increments the player's rb_incident counter.", '/function riftbrek:admin/incident {mc:"Steve"}'),
    ("admin/whois", '{id}', "OP", "Prints the FULL registry record (including Veil real names) to the operator only.", "/function riftbrek:admin/whois {id:1001}"),
    ("admin/gate_test", "-", "run AS the player", "Shows which door tiers the player passes right now.", "/execute as Steve run function riftbrek:admin/gate_test"),
    ("admin/reset_cooldown", "-", "run AS the player", "Resets the kit cooldown for that player.", "/execute as Steve run function riftbrek:admin/reset_cooldown"),
    ("admin/origin", "{x,z}", "OP", "Stores the world X/Z where you pasted schematic local (0,0). Needed by verify/forceload.", "/function riftbrek:admin/origin {x:1000,z:-500}"),
    ("admin/verify", "-", "OP", "Checks 9 signature blocks of the pasted schematic and prints PASS/FAIL for each (chunks must be loaded).", "/function riftbrek:admin/verify"),
    ("admin/forceload", "-", "OP", "Force-loads sorters, industry, synthesis hall, blimp lane and checkpoint (after admin/origin).", "/function riftbrek:admin/forceload"),
    ("admin/forceload_off", "-", "OP", "Removes those force-loaded chunks.", "/function riftbrek:admin/forceload_off"),
    ("admin/blimp_on", "-", "OP", "Spawns the experimental airship at dock A and starts its route.", "/function riftbrek:admin/blimp_on"),
    ("admin/blimp_off", "-", "OP", "Removes the airship.", "/function riftbrek:admin/blimp_off"),
    ("admin/recover", "-", "OP", "Admin recovery: re-runs load (objectives, teams, storage defaults). Never resets player data.", "/function riftbrek:admin/recover"),
]
PLAYER = [
    ("1", "ID book", "Issues your identity book. Non-Veil: Minecraft + Discord username, faction, rank, clearance, credential id. Veil: anonymous operative code only. A book NEVER authorises anything."),
    ("2", "Faction kit", "Issues the kit of your own faction (10-minute cooldown; Royal bypasses)."),
    ("3", "Public roster", "Lists every non-Veil member with Minecraft + Discord names. Veil is never listed."),
    ("4", "Leader registry", "Leader/Royal only: restricted Veil ledger (credential id + names). Output goes only to the caller."),
    ("5", "My status", "Your faction, rank, status and credential id."),
    ("9", "Help", "Shows the trigger list."),
    ("11", "FlameFrags-inspired kit", "Members only (design choice, not verified canon)."),
    ("12", "Wemmbu-inspired kit", "Members only."),
    ("13", "TheobaldTheBird-inspired kit", "Members only."),
    ("14", "ParrotX2-inspired kit", "Members only."),
    ("15", "ManePear-inspired kit", "Members only."),
    ("16", "SpokeIsHere-inspired kit", "Members only."),
]


def classify(fid):
    n = fid.split(":")[1]
    if n.startswith(("door/", "zone/", "kit/pad_", "industry/run_farm_", "industry/pulse_crafter")) or re.match(r"storage/sort_\w$", n):
        return "cb"
    if n in {a[0] for a in ADMIN} or n in ("registry/public", "registry/leader_private", "registry/self", "book/issue", "req/dispatch", "req/help") \
            or re.match(r"kit/(birds|unstables|abstracters|veil|archivist|wildcards|request|creator_\w+)$", n):
        return "pub"
    return "int"


def main():
    d, r, pal, a = validate.load_litematic(LIT)
    L_ = []
    w = L_.append
    w("# RIFTBREK Vanguard - Command Handbook (generated from the real datapack)\n")
    w("Data pack format 94.1 (Minecraft Java 1.21.11). Every function in the pack is listed in section 5 and every public entry point in sections 1-4.")
    w("Numbering is stable: **C1.. = player commands, C20.. = operator commands, C60.. = command-block-only functions**.\n")
    w("> Permission model: `/function` needs gamemaster (OP level 2+). Players have **no** OP commands - they use `/trigger rb_req set N`. Doors, kit pads, sorters and farms are driven by command blocks inside the schematic, not by players.\n")
    w("## 1. Player commands (no OP needed)\n")
    w("`/trigger rb_req set <N>` - re-enabled for every player every tick; each action re-validates tags/scores server-side.\n")
    w("| # | command | what it does |\n|---|---|---|")
    for i, (n, nm, desc) in enumerate(PLAYER, 1):
        w(f"| C{i} | `/trigger rb_req set {n}` | **{nm}** - {desc} |")
    w("\n## 2. Operator commands (OP level 2+)\n")
    w("Macro functions take a compound argument. Use exact Minecraft names; the player must be online for `register`/`visitor`.\n")
    for i, (fn, args, who, what, ex) in enumerate(ADMIN, 20):
        w(f"### C{i}. `riftbrek:{fn}`\n- who: {who}\n- args: `{args}`\n- {what}\n- example: `{ex}`\n")
    w("## 3. Faction kit functions (OP, or called by a kit pad)\n")
    for f, (name, code, role, color, banner) in L.FACTIONS.items():
        w(f"- `riftbrek:kit/{f}` - run AS a {name} member: `/execute as Name run function riftbrek:kit/{f}`. Shield banner colour: {banner}. Needs faction tag + active credential, 10-minute cooldown.")
    for c in ("flame", "wemmbu", "theobald", "parrot", "manepear", "spoke"):
        w(f"- `riftbrek:kit/creator_{c}` - any active member.")
    w("- `riftbrek:book/issue`, `riftbrek:registry/public`, `riftbrek:registry/self`, `riftbrek:registry/leader_private` - run AS the player (the trigger calls these).\n")
    w("## 4. Command-block-only functions (called by blocks inside the schematic - not typed by anyone)\n")
    n = 60
    for fid in sorted(ids):
        if classify(fid) == "cb":
            w(f"- C{n}. `{fid}`"); n += 1
    w("\n## 5. Full function index (what is public vs internal)\n")
    w("| function | class |\n|---|---|")
    for fid in sorted(ids):
        cls = {"cb": "command-block only", "pub": "public (player/OP)", "int": "internal - do not call by hand"}[classify(fid)]
        w(f"| `{fid}` | {cls} |")
    w("\n## 6. Admin recovery & troubleshooting\n")
    w("""| symptom | fix |
|---|---|
| Doors never open | Command blocks disabled: set `enable-command-block=true` in `server.properties` and restart. In singleplayer: Open to LAN / cheats on. |
| Doors/sorters dead far from you | Command blocks only run in loaded chunks. Stand nearby or `/forceload add <x1> <z1> <x2> <z2>` over the module (see MODULE_INDEX). |
| Chat spam from command blocks | `/gamerule command_block_output false` (1.21.11 name). The pack tries to set it on load. |
| Player locked out / wrong rank | `/function riftbrek:admin/revoke {mc:"Name"}` then `register` again. Manual: `/tag Name list`, `/scoreboard players get Name rb_clear`. |
| Lockdown stuck on | `/function riftbrek:admin/lockdown_off` (or `/scoreboard players set #GLOBAL rb_lock 0`). |
| Door slot stuck open/closed | The slot is the block directly below each gate's command block: set `iron_bars` (closed) / `redstone_block` (open) by hand. |
| Kit says cooldown | `/execute as Name run function riftbrek:admin/reset_cooldown`. |
| Scoreboard/teams missing after update | `/function riftbrek:admin/recover` (does not touch player data). |
| Wipe EVERYTHING (destructive!) | `/scoreboard objectives remove rb_clear` ... for each rb_* objective, `/data remove storage riftbrek:registry players`, `/data remove storage riftbrek:log entries`, then `/reload`. |
| Sorter tray stuck (alarm lamp lit) | All five tray slots hold items that no category chest could take: empty the MISC chests or add chests; then the tray drains by itself. |
| Reload error mentioning `setup/gamerules` | Harmless: run `/gamerule command_block_output false` yourself. |
""")
    open(os.path.join(ROOT, "docs", "COMMAND_HANDBOOK.md"), "w").write("\n".join(L_) + "\n")

    # ---- module index
    M = []
    w = M.append
    w("# RIFTBREK Vanguard - Module index (auto-generated)\n")
    w("All coordinates are **schematic-local**: x 0..767, z 0..767, y 0..223.  \n"
      "World position = `origin + (x, y - 64, z)` when the schematic origin is pasted at world Y = **-64** (required so B12 fits above the world bottom).\n"
      "Ground surface (first walkable layer) is local y = 96 = world y 32.\n")
    levels = "\n".join(f"| B{k} | y {L.level_floor(k)} (world {L.level_floor(k) - 64}) |" for k in range(1, 13))
    w("## Underground levels\n| level | floor |\n|---|---|\n" + levels + "\n")
    cbs = [t for t in r["TileEntities"] if t["id"].endswith("command_block")]
    groups = collections.defaultdict(list)
    for t in cbs:
        fid = t["Command"].split(" ", 1)[1].replace("riftbrek:", "")
        key = fid.split("/")[0] + "/" + (fid.split("/")[1].split("_")[0] if fid.startswith(("door", "kit")) else "")
        groups[fid.split("/")[0]].append((fid, t["x"], t["y"], t["z"]))
    for g, items in sorted(groups.items()):
        w(f"## command blocks: `{g}/` ({len(items)})\n| function | local x,y,z | world offset (y-64) |\n|---|---|---|")
        for fid, x, y, z in sorted(items):
            w(f"| `{fid}` | {x}, {y}, {z} | +{x}, {y - 64}, +{z} |")
        w("")
    w("## Force-load rectangles (local x,z, add your origin X/Z)\n")
    for h in L.SORT_HALLS:
        n = len(h["cats"])
        w(f"- sorter hall {h['name'].upper()} (B{h['level']}): x {h['ox'] - 6}..{h['ox'] + 2 * n + 4}, z {h['oz'] - 4}..{h['oz'] + 2 * L.SORT_K + 4}")
    w("- crop plots + smelters + crafters (B7): x 48..262, z 470..610")
    w("- checkpoint / chunk-ban square: x 360..407, z 660..707")
    open(os.path.join(ROOT, "docs", "MODULE_INDEX.md"), "w").write("\n".join(M) + "\n")
    # ---- annex map (from assemble.py's report)
    import json
    rp = os.path.join(ROOT, "docs", "annex_placement.json")
    if os.path.exists(rp):
        info = json.load(open(rp))
        A = ["# Annex quarter map (auto-generated)\n",
             "All builds below are extra regions of the MASTER `.litematic`, on a grass plateau east of the HQ wall (x >= 768). Coordinates are HQ-local; world = origin + (x, y-64, z). The plateau top is local y 95 like the HQ.\n",
             "| build | author | community | local x,y,z | size X x Y x Z | source data ver | recoloured purple |", "|---|---|---|---|---|---|---|"]
        for i in sorted(info, key=lambda i: (i["z"], i["x"])):
            A.append(f"| {i['name']} | {i['author']} | {i['community']} | {i['x']}, {i['y']}, {i['z']} | {i['size'][0]} x {i['size'][1]} x {i['size'][2]} | {i['dv']} | {'yes' if i['purple'] else 'no (original colours)'} |")
        open(os.path.join(ROOT, "docs", "ANNEX_MAP.md"), "w").write("\n".join(A) + "\n")
    # coverage check: every function id must appear in the handbook
    txt = open(os.path.join(ROOT, "docs", "COMMAND_HANDBOOK.md")).read()
    missing = [f for f in ids if f"`{f}`" not in txt]
    print("handbook covers", len(ids) - len(missing), "of", len(ids), "functions", "MISSING:" + str(missing) if missing else "")


if __name__ == "__main__":
    main()
