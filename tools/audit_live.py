"""Live audit of every redstone device instance in the HQ on a real server: lamp-line circuits (every one), the 4 wind launchers, both sorter halls,
the mega-building halls (sample units) and the minecart bolt line start.  usage: audit_live.py <server_dir> ; world = merged HQ files, origin 8192/8192 (ward 7808/7808)."""
import json, os, re, subprocess, sys, time
srv = sys.argv[1]
info = json.load(open(os.path.join(os.path.dirname(__file__), "..", "docs", "ward_info.json")))
mega = json.load(open(os.path.join(os.path.dirname(__file__), "..", "docs", "mega_info.json")))
PZ = {"N": 0, "S": 1152, "W": 384}
feed = []                                # (command, wait_after)
def C(cmd, wait=0.0): feed.append((cmd, wait))
def fl_add(x0, z0, x1, z1): C(f"forceload add {x0} {z0} {x1} {z1}", 2.5)
def fl_rm(x0, z0, x1, z1): C(f"forceload remove {x0} {z0} {x1} {z1}", 0.2)

# 1. lamp lines, grouped by building
lines = [t for t in info["tests"] if t.get("kind") == "line"]
groups = {}
for t in lines:
    x, y, z = t["lever"]
    groups.setdefault((t["strip"], t["name"].rsplit(" lamp line", 1)[0]), []).append(t)
for (strip, bname), ts in groups.items():
    xs = [t["lever"][0] + 7808 for t in ts]; zs = [t["lever"][2] + 7808 + PZ[strip] for t in ts]
    box = (min(xs) - 2, min(zs) - 3, max(xs) + 16, max(zs) + 4)
    fl_add(*box)
    for t in ts:
        lx, ly, lz = t["lever"]; X, Y, Z = lx + 7808, ly - 64, lz + 7808 + PZ[strip]
        dx = t["dust"][-1][0] + 7808
        tag = re.sub(r"[^A-Za-z0-9]", "_", t["name"])
        C(f"setblock {X} {Y} {Z} minecraft:lever[face=floor,facing=north,powered=true]", 1.3)
        C(f"execute if block {dx} {Y - 1} {Z} minecraft:redstone_lamp[lit=true] run say AUD|LINE|{tag}|ON", 0.0)
        C(f"execute unless block {dx} {Y - 1} {Z} minecraft:redstone_lamp[lit=true] run say AUD|LINE|{tag}|FAIL", 0.0)
        C(f"setblock {X} {Y} {Z} minecraft:lever[face=floor,facing=north,powered=false]", 0.3)
    fl_rm(*box)

# 2. wind launchers (4): trigger, chicken seen, zombie in the cell launched
for k in range(4):
    cx, cz = 8192 + 580 + 26 * k, 8192 + 100
    fl_add(cx - 12, cz - 8, cx + 8, cz + 8)
    pb = (cx - 5, 33, cz)
    C("kill @e[type=!player]", 0.2)
    C(f"summon minecraft:zombie {cx}.5 32 {cz}.5 " + '{Tags:["az"],PersistenceRequired:1b,Silent:1b,attributes:[{id:"minecraft:movement_speed",base:0}]}', 1.0)
    C(f"setblock {pb[0]} {pb[1]} {pb[2]} minecraft:air", 1.0)
    C(f"setblock {pb[0]} {pb[1]} {pb[2]} minecraft:redstone_block", 0.0)
    for i in range(14):
        C("execute if entity @e[type=minecraft:chicken] run say AUD|LAUNCH%d|CHICKEN" % k, 0.0)
        C("execute as @e[tag=az] run data get entity @s Pos[1]", 0.25)
    C(f"setblock {pb[0]} {pb[1]} {pb[2]} minecraft:air", 0.3)
    fl_rm(cx - 12, cz - 8, cx + 8, cz + 8)

# 3. sorters
for name, ox, oy, oz, items in (("A", 8192 + 560, -4, 8192 + 472, [("minecraft:oak_log", 0, 0), ("minecraft:cobblestone", 2, 1), ("minecraft:coal", 6, 2)]),):
    fl_add(ox - 4, oz - 4, ox + 40, oz + 24)
    for (it, cat, slot) in items:
        C(f"item replace block {ox} {oy} {oz + 1} container.{slot} with {it} 4", 0.0)
    C("say .", 3.0)
    for (it, cat, slot) in items:
        hx, hz = ox + 2 + 2 * cat, oz + 2
        C(f"execute if items block {hx} {oy - 1} {hz} container.* {it} run say AUD|SORT_{name}|{it}|OK", 0.0)
        C(f"execute unless items block {hx} {oy - 1} {hz} container.* {it} run say AUD|SORT_{name}|{it}|FAIL", 0.0)
    fl_rm(ox - 4, oz - 4, ox + 40, oz + 24)

# 4. mega halls (farm units, furnace rows, storage meters data present)
for t in mega["tests"]:
    off = t["off"]
    if t["kind"] == "farm":
        sx, sy, sz = [8192 + off[0] + t["stem"][0], t["stem"][1] - 64, 8192 + off[2] + t["stem"][2]]
        fl_add(sx - 4, sz - 4, sx + 8, sz + 6)
        C(f"setblock {sx + 1} {sy} {sz} minecraft:{'melon' if 'melon' in t['fruit_block'] else 'pumpkin'}", 4.0)
        C(f"execute if items block {sx + 1} {sy - 2} {sz} container.0 * run say AUD|FARM|{t['name']}|OK", 0.0)
        C(f"execute unless items block {sx + 1} {sy - 2} {sz} container.0 * run say AUD|FARM|{t['name']}|FAIL", 0.0)
        fl_rm(sx - 4, sz - 4, sx + 8, sz + 6)
    if t["kind"] == "furnace_row" and ("IRON" in t["name"] or "STONE" in t["name"]):
        ox_, oy_, oz_ = 8192 + off[0] + t["out"][0], t["out"][1] - 64, 8192 + off[2] + t["out"][2]
        ux = 8192 + off[0] + t["unit0"][0]
        fl_add(ux - 3, oz_ - 4, ox_ + 3, oz_ + 4)
        C("say .", 45.0)
        C(f"execute if items block {ox_} {oy_} {oz_} container.0 * run say AUD|FURNACE|{t['name']}|OK", 0.0)
        C(f"execute unless items block {ox_} {oy_} {oz_} container.0 * run say AUD|FURNACE|{t['name']}|FAIL", 0.0)
        fl_rm(ux - 3, oz_ - 4, ox_ + 3, oz_ + 4)

if __name__ == "__main__":
    proc = subprocess.Popen(["java", "-Xmx6G", "-jar", "server.jar", "nogui"], cwd=srv, stdin=subprocess.PIPE, stdout=open(os.path.join(srv, "audit.log"), "w"), stderr=subprocess.STDOUT, text=True)
    time.sleep(30)
    for c, w in feed:
        proc.stdin.write(c + "\n"); proc.stdin.flush(); time.sleep(max(w, 0.05))
    proc.stdin.write("stop\n"); proc.stdin.flush(); proc.wait(timeout=120)
    log = open(os.path.join(srv, "audit.log")).read()
    res = {}
    for m in re.finditer(r"AUD\|(\w+)\|([^|\n]+)\|(\w+)", log):
        res[(m.group(1), m.group(2))] = m.group(3)
    fails = [k for k, v in res.items() if v == "FAIL"]
    print("LINES ok", sum(1 for k, v in res.items() if k[0] == "LINE" and v == "ON"), "of", len(lines))
    for k, v in sorted(res.items()):
        if k[0] != "LINE":
            print(" ", k, v)
    for k in range(4):
        print("LAUNCH", k, "chicken seen:", bool(re.search(r"AUD\|LAUNCH%d\|CHICKEN" % k, log)))
    ys = re.findall(r"entity data: ([\d.]+)d", log)
    print("zombie heights seen: max", max([float(v) for v in ys] or [0]))
    print("FAILED:", len(fails), fails[:12])
