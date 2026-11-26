"""Live-server test for the Redstone Haven: python3 haven_livetest.py <haven_tests.json> <server_dir> [OX OZ]
Flips every lever combination with /setblock, reads lamps back, samples the clock, checks meters and pistons."""
import json, subprocess, sys, time, re
tests = json.load(open(sys.argv[1])); srv = sys.argv[2]
OX = int(sys.argv[3]) if len(sys.argv) > 3 else 12288
OZ = int(sys.argv[4]) if len(sys.argv) > 4 else 8192
W = lambda x, y, z: (OX + x, y - 64, OZ + z)
GY = 96
cmds = []           # (command, delay_after)
tag = 0
def say(cond, name):
    global tag
    tag += 1
    cmds.append((f"execute if {cond} run say T{tag}|{name}", 0.0)); return tag
def at(x, y, z): return "%d %d %d" % W(x, y, z)
exp = {}            # tag name -> expected truth
def lamp_state(x, y, z, name):
    cmds.append((f"execute if block {at(x,y,z)} minecraft:redstone_lamp[lit=true] run say R|{name}|1", 0.0))
    cmds.append((f"execute if block {at(x,y,z)} minecraft:redstone_lamp[lit=false] run say R|{name}|0", 0.0))
lx, ly, lz = [], None, None
for t in tests:
    if t["kind"] == "gate":
        n = t["name"]
        # initial settled state (all levers off) read BEFORE touching anything
        lx, lz = t["lamp"]; lamp_state(lx, GY, lz, f"{n}|init")
for t in tests:
    if t["kind"] == "gate":
        n = t["name"]; lx, lz = t["lamp"]
        for combo, want in t["table"]:
            for (x, z), v in zip(t["levers"], combo):
                cmds.append((f"setblock {at(x, GY, z)} minecraft:lever[face=floor,facing=north,powered={'true' if v else 'false'}]", 0.0))
            cmds.append(("say .", 0.9))
            lamp_state(lx, GY, lz, f"{n}|{''.join(str(c) for c in combo)}")
        for (x, z) in t["levers"]:
            cmds.append((f"setblock {at(x, GY, z)} minecraft:lever[face=floor,facing=north,powered=false]", 0.0))
        cmds.append(("say .", 0.6))
for t in tests:
    if t["kind"] == "clock":
        for i in range(24):
            for k, (x, z) in enumerate(t["lamps"][:2]):
                cmds.append((f"execute if block {at(x, t['lamp_y'] + 64 + 0 if False else t['lamp_y'], z)} minecraft:redstone_lamp[lit=true] run say C|{i}|{k}|1", 0.0))
                cmds.append((f"execute if block {at(x, t['lamp_y'], z)} minecraft:redstone_lamp[lit=false] run say C|{i}|{k}|0", 0.0))
            cmds.append(("say .", 0.35))
for t in tests:
    if t["kind"] == "meter":
        t["lamp_y"] = 96
        n = t["name"]
        def count(label):
            for d, (x, z) in enumerate(t["lamps"]):
                cmds.append((f"execute if block {at(x, t['lamp_y'], z)} minecraft:redstone_lamp[lit=true] run say M|{n}|{label}|{d}", 0.0))
            cmds.append(("say .", 0.1))
        count("init")
        cx, cz = t["chest"]
        cmds.append((f"item replace block {at(cx, GY, cz)} container.0 with minecraft:air", 0.0))
        cmds.append((f"setblock {at(cx + 1, GY, cz + 1)} minecraft:stone", 0.0)); cmds.append(("say .", 0.4))   # neighbour update makes the comparator re-read the chest
        cmds.append((f"setblock {at(cx + 1, GY, cz + 1)} minecraft:air", 0.0)); cmds.append(("say .", 0.8))
        count("minus1")
for t in tests:
    if t["kind"] == "pistons":
        lx_, lz_, ly_ = t["lever"]
        def pistons(label):
            for (px, pz) in t["pushed"]:
                cmds.append((f"execute if block {at(px, GY, pz)} #minecraft:concrete_powder run say P|{label}|{pz}", 0.0)) if False else None
                cmds.append((f"execute if block {at(px, GY, pz)} minecraft:purple_concrete run say P|{label}|{pz}|a", 0.0))
                for c in ("blue", "white", "light_blue", "magenta", "black"):
                    cmds.append((f"execute if block {at(px, GY, pz)} minecraft:{c}_concrete run say P|{label}|{pz}|a", 0.0))
        pistons("closed")
        cmds.append((f"setblock {at(lx_, ly_, lz_)} minecraft:lever[face=floor,facing=north,powered=true]", 0.0)); cmds.append(("say .", 1.6))
        pistons("open")
        cmds.append((f"setblock {at(lx_, ly_, lz_)} minecraft:lever[face=floor,facing=north,powered=false]", 0.0)); cmds.append(("say .", 1.6))
        pistons("closed2")
import os
for f in ("world/datapacks",):
    pass
# force-load the whole bounding box of every coordinate used by the tests
pts = []
for t in tests:
    for k in ("levers", "lamps", "pistons", "pushed"):
        pts += [tuple(p[:2]) for p in (t.get(k) or [])]
    for k in ("lamp", "chest", "lever"):
        if t.get(k):
            pts.append(tuple(t[k][:2]))
x0_, x1_ = min(p[0] for p in pts) - 6, max(p[0] for p in pts) + 6
z0_, z1_ = min(p[1] for p in pts) - 6, max(p[1] for p in pts) + 6
a_, b_ = W(x0_, GY, z0_), W(x1_, GY, z1_)
stdin = [f"forceload add {a_[0]} {a_[2]} {b_[0]} {b_[2]}"]
feed = open(os.path.join(srv, "feed.txt"), "w")
feed.write("\n".join(f"{c}|{d}" for c, d in [(stdin[0], 5.0)] + cmds)); feed.close()
# run
proc = subprocess.Popen(["java", "-Xmx3G", "-jar", "server.jar", "nogui"], cwd=srv, stdin=subprocess.PIPE, stdout=open(os.path.join(srv, "live.log"), "w"), stderr=subprocess.STDOUT, text=True)
time.sleep(28)
for c, d in [(stdin[0], 5.0)] + cmds:
    proc.stdin.write(c + "\n"); proc.stdin.flush(); time.sleep(max(d, 0.04))
proc.stdin.write("stop\n"); proc.stdin.flush(); proc.wait(timeout=60)
log = open(os.path.join(srv, "live.log")).read()
res = {}
for m in re.finditer(r"R\|(\w+)\|(\w+)\|(\d)", log):
    res[(m.group(1), m.group(2))] = int(m.group(3))
fails = 0
for t in tests:
    if t["kind"] == "gate":
        n = t["name"]
        init_want = int(bool(t["table"][0][1]))
        got = res.get((n, "init")); ok = got == init_want; fails += not ok
        print(("PASS" if ok else "FAIL"), n, "initial state (levers off): lamp", got, "expected", init_want)
        for combo, want in t["table"]:
            got = res.get((n, "".join(str(c) for c in combo)))
            ok = got == int(want); fails += not ok
            print(("PASS" if ok else "FAIL"), n, "inputs", combo, "-> lamp", got, "expected", int(want))
    elif t["kind"] == "clock":
        seen = {}
        for m in re.finditer(r"C\|(\d+)\|(\d+)\|(\d)", log):
            seen.setdefault(int(m.group(2)), set()).add(int(m.group(3)))
        ok = all(seen.get(k, set()) == {0, 1} for k in (0, 1)); fails += not ok
        print(("PASS" if ok else "FAIL"), "HOPPER CLOCK lamps toggle (seen states)", {k: sorted(v) for k, v in seen.items()})
    elif t["kind"] == "meter":
        n = t["name"]
        def lit(label): return len(re.findall(r"M\|%s\|%s\|\d+" % (re.escape(n), label), log))
        e1 = t["expect"]; e2 = (1 + int((t["slots"] - 1) / 27 * 14)) if t["slots"] > 1 else 0
        a, b = lit("init"), lit("minus1")
        ok = (a == e1 and b == e2); fails += not ok
        print(("PASS" if ok else "FAIL"), n, "lit lamps", a, "expected", e1, "| after removing 1 stack", b, "expected", e2)
    elif t["kind"] == "pistons":
        def cnt(label): return len(re.findall(r"P\|%s\|\d+\|a" % label, log))
        c0, c1, c2 = cnt("closed"), cnt("open"), cnt("closed2")
        ok = (c0 == 0 and c1 == 6 and c2 == 0); fails += not ok
        print(("PASS" if ok else "FAIL"), "PISTON CURTAIN walls out at x-2: closed", c0, "(want 0), open", c1, "(want 6), closed again", c2, "(want 0)")
print("FAILED:", fails)
sys.exit(1 if fails else 0)
