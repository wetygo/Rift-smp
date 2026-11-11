"""Model-based test of the datapack's ACCESS LOGIC.

A tiny interpreter for the exact mcfunction subset the pack uses (tag, scoreboard, execute if/unless entity|score, function
calls, setblock/fill as door-slot writes, give/tellraw/effect recorded).  It runs the REAL generated .mcfunction files against
scripted player states and checks the outcomes.  This tests the logic of the files; it does NOT prove Minecraft parses them."""
import re, sys, os
sys.path.insert(0, os.path.dirname(__file__))
import validate

PACK = sys.argv[1] if len(sys.argv) > 1 else "../datapack/RIFTBREK_Vanguard_Datapack"
IDS, TEXTS = validate.functions(PACK)


class P:
    def __init__(self, name, tags=(), **scores):
        self.name, self.tags, self.s = name, set(tags), dict(scores)
        self.log = []          # recorded side effects


class World:
    def __init__(self):
        self.glob = {"#GLOBAL rb_lock": 0, "#NEXT rb_id": 1000}
        self.slot = "iron_bars"
        self.tick = 100000


def rng_ok(val, rng):
    rng = rng.strip()
    if ".." in rng:
        lo, hi = rng.split("..")
        return (lo == "" or val >= int(lo)) and (hi == "" or val <= int(hi))
    return val == int(rng)


def sel_match(p, args):
    """args: string inside [...] of a selector (distance / name ignored here: caller filters)."""
    # split on commas not inside braces
    parts, depth, cur = [], 0, ""
    for ch in args:
        if ch == "{": depth += 1
        if ch == "}": depth -= 1
        if ch == "," and depth == 0:
            parts.append(cur); cur = ""
        else:
            cur += ch
    if cur: parts.append(cur)
    for a in parts:
        k, v = a.split("=", 1)
        if k == "tag":
            if v.startswith("!"):
                if v[1:] in p.tags: return False
            elif v not in p.tags: return False
        elif k == "scores":
            for sc in v.strip("{}").split(","):
                o, r = sc.split("=", 1)
                if o not in p.s or not rng_ok(p.s[o], r): return False
        elif k in ("distance", "dx", "dy", "dz"):
            pass
        elif k == "name":
            if p.name != v: return False
    return True


class Ctx:
    def __init__(self, world, players, me=None, near=None):
        self.w, self.players, self.me = world, players, me
        self.near = near if near is not None else players   # players within door radius


def parse_selector(tok):
    m = re.match(r"(@[as]|[A-Za-z0-9_]+)(?:\[(.*)\])?$", tok)
    return m.group(1), (m.group(2) or "")


def eval_sel(ctx, tok, door=False):
    kind, args = parse_selector(tok)
    if kind == "@s":
        return [ctx.me] if ctx.me and sel_match(ctx.me, args) else []
    if kind == "@a":
        pool = ctx.near if door else ctx.players
        return [p for p in pool if sel_match(p, args)]
    return [p for p in ctx.players if p.name == kind]


def run_fn(ctx, fid, macro=None, depth=0):
    if fid not in TEXTS or depth > 50:
        return
    for line in TEXTS[fid].rstrip("\n").split("\n"):
        if not line.strip() or line.startswith("#"):
            continue
        if line.startswith("$"):
            if macro is None:
                continue
            line = line[1:]
            for k, v in macro.items():
                line = line.replace("$(%s)" % k, str(v))
        run_cmd(ctx, line, depth)


def split_exec(line):
    """tokenise respecting [] {} \"\""""
    toks, cur, d, q = [], "", 0, False
    for ch in line:
        if ch == '"': q = not q
        if not q:
            if ch in "[{": d += 1
            if ch in "]}": d -= 1
            if ch == " " and d == 0:
                toks.append(cur); cur = ""; continue
        cur += ch
    toks.append(cur)
    return toks


def run_cmd(ctx, line, depth=0):
    t = split_exec(line)
    c = t[0]
    if c == "execute":
        i, contexts = 1, [ctx]
        while i < len(t):
            w = t[i]
            if w in ("positioned", "store"):
                if w == "positioned":
                    i += 2 if t[i + 1] != "over" else 3
                    while i < len(t) and re.match(r"^[~^-]", t[i]): i += 1
                    continue
                return   # store ... : not modelled
            if w in ("if", "unless"):
                neg = (w == "unless")
                kind = t[i + 1]
                if kind == "entity":
                    ok = any(len(eval_sel(cx, t[i + 2], door=True)) > 0 for cx in contexts) if contexts else False
                    # entity condition is evaluated per context
                    ok = len(eval_sel(contexts[0], t[i + 2], door=True)) > 0
                    if ok == neg: return
                    i += 3
                elif kind == "score":
                    name, obj = t[i + 2], t[i + 3]
                    key = (name if name.startswith("#") else "@s") + " " + obj
                    def val():
                        if name.startswith("#"): return ctx.w.glob.get(key)
                        return contexts[0].me.s.get(obj) if contexts[0].me else None
                    if t[i + 4] == "matches":
                        v = val()
                        ok = v is not None and rng_ok(v, t[i + 5])
                        if ok == neg: return
                        i += 6
                    else:
                        return
                elif kind in ("items", "data", "block"):
                    return
                else:
                    return
            elif w == "as":
                ps = eval_sel(contexts[0], t[i + 1]) if t[i + 1].startswith("@") else [p for p in ctx.players if p.name == t[i + 1]]
                # run for each target
                rest = " ".join(t[i + 2:])
                assert rest.startswith("run ")
                for p in ps:
                    run_cmd(Ctx(ctx.w, ctx.players, p, ctx.near), rest[4:], depth)
                return
            elif w == "run":
                run_cmd(ctx, " ".join(t[i + 1:]), depth)
                return
            else:
                return
        return
    if c == "tag":
        who = eval_sel(ctx, t[1])
        for p in who:
            (p.tags.add if t[2] == "add" else p.tags.discard)(t[3])
    elif c == "scoreboard" and t[1] == "players":
        op, tgt, obj = t[2], t[3], t[4]
        if tgt.startswith("#"):
            key = tgt + " " + obj
            if op == "set": ctx.w.glob[key] = int(t[5])
            elif op == "add": ctx.w.glob[key] = ctx.w.glob.get(key, 0) + int(t[5])
            return
        for p in eval_sel(ctx, tgt):
            if op == "set": p.s[obj] = int(t[5])
            elif op == "add": p.s[obj] = p.s.get(obj, 0) + int(t[5])
            elif op == "remove": p.s[obj] = p.s.get(obj, 0) - int(t[5])
            elif op == "operation":
                src = t[6]; sobj = t[7]
                if src.startswith("#"):
                    v = ctx.w.glob.get(src + " " + sobj)
                    if v is None: continue
                    if t[5] == "=": p.s[obj] = v
                    elif t[5] == "-=": p.s[obj] = p.s.get(obj, 0) - v
    elif c == "function":
        run_fn(ctx, t[1], None, depth + 1)
    elif c in ("setblock", "fill"):
        b = t[-1].split(":")[1]
        ctx.w.slot = b
    elif c in ("give", "tellraw", "effect", "team", "clear", "data", "tp", "gamerule", "time"):
        if ctx.me:
            ctx.me.log.append(" ".join(t[:3]) if c != "give" else "give " + t[2])


# --------------------------------------------------------------------------- scenarios
fails = 0


def check(label, cond):
    global fails
    print(("PASS " if cond else "FAIL ") + label)
    if not cond: fails += 1


def door(tier, player, lock=0, w=1, others=()):
    world = World(); world.glob["#GLOBAL rb_lock"] = lock; world.slot = "iron_bars"
    name = "door/%s%s" % (tier, "" if w == 1 else "_w%d" % w)
    ctx = Ctx(world, [player] + list(others), None, near=[player] + list(others))
    run_fn(ctx, "riftbrek:" + name)
    return world.slot == "redstone_block"


def member(f, extra=(), clr=2):
    return P("M_" + f, {"rb_member", "rb_" + f, *extra}, rb_clear=clr, rb_cred=1)


stranger = P("Stranger")                                                              # has a stolen book only (no server state)
stolen = P("BookThief", set(), rb_issued=0)                                           # same: books are never read
revoked = P("Revoked", {"rb_revoked"}, rb_clear=0, rb_cred=0)
visitor = P("Visitor", {"rb_guest"}, rb_clear=1, rb_cred=1, rb_visitor=12000)
visitor_x = P("VisitorExpired", set(), rb_clear=0, rb_cred=0)
royal = P("King", {"rb_member", "rb_royal"}, rb_clear=5, rb_cred=1)
leader_b = P("LeaderBirds", {"rb_member", "rb_birds", "rb_leader", "rb_leader_birds"}, rb_clear=4, rb_cred=1)
veil = member("veil")
birds = member("birds")
susp = P("Suspended", {"rb_member", "rb_birds"}, rb_clear=2, rb_cred=0)

print("== door matrix (open? expected)")
for tier, who, exp in [
    ("public", stranger, False), ("public", stolen, False), ("public", revoked, False), ("public", visitor, True),
    ("public", visitor_x, False), ("public", birds, True), ("public", royal, True), ("public", susp, False),
    ("member", visitor, False), ("member", birds, True), ("member", royal, True),
    ("leader", birds, False), ("leader", leader_b, True), ("leader", royal, True),
    ("royal", leader_b, False), ("royal", birds, False), ("royal", royal, True), ("royal", veil, False),
    ("birds", birds, True), ("birds", member("unstables"), False), ("birds", veil, False), ("birds", royal, True), ("birds", visitor, False),
    ("veil", veil, True), ("veil", birds, False), ("veil", leader_b, False), ("veil", royal, True), ("veil", stranger, False),
    ("archivist", member("archivist"), True), ("archivist", member("wildcards"), False),
]:
    got = door(tier, who, 0)
    check(f"door/{tier:<11} {who.name:<15} open={got} expected={exp}", got == exp)
print("== lockdown (rb_lock=1): everything shuts except royal-tier doors")
for tier, who, exp in [("public", visitor, False), ("public", birds, False), ("member", birds, False), ("birds", birds, False),
                       ("leader", leader_b, False), ("veil", veil, False), ("royal", royal, True), ("public", royal, True), ("birds", royal, True)]:
    got = door(tier, who, 1)
    check(f"LOCKDOWN door/{tier:<8} {who.name:<12} open={got} expected={exp}", got == exp)
print("== 12-wide gate, one authorised + one stranger standing together (tailgating is possible by design: documented)")
check("gate w12 opens for visitor", door("public", visitor, 0, w=12))
check("gate w12 stays shut for stranger", not door("public", stranger, 0, w=12))
print("== lifecycle: revoke / restore / visitor expiry / leader / royal")
w = World()
b = P("Birdy", {"rb_member", "rb_birds", "rb_leader", "rb_leader_birds"}, rb_clear=4, rb_cred=1, rb_role=1)
ctx = Ctx(w, [b], b)
check("before revoke: leader door open", door("leader", b))
run_fn(ctx, "riftbrek:admin/revoke_apply", {})
check("after revoke: tags cleared + rb_revoked", "rb_revoked" in b.tags and "rb_member" not in b.tags and "rb_birds" not in b.tags and b.s["rb_cred"] == 0)
check("after revoke: public door shut", not door("public", b))
check("after revoke: faction door shut", not door("birds", b))
check("after revoke: leader door shut", not door("leader", b))
check("after revoke: kit denied (no give)", (run_fn(ctx, "riftbrek:kit/birds") or True) and not any(l.startswith("give") for l in b.log))
v = P("Vis", {"rb_guest"}, rb_clear=1, rb_cred=1, rb_visitor=1)
ctxv = Ctx(w, [v], v)
check("visitor with 1 tick left still passes", door("public", v))
v.s["rb_visitor"] = 0
run_fn(ctxv, "riftbrek:tick")
check("tick expires visitor (guest tag removed, cred 0)", "rb_guest" not in v.tags and v.s["rb_cred"] == 0)
check("expired visitor is denied", not door("public", v))
sp = P("Susp", {"rb_member", "rb_birds"}, rb_clear=2, rb_cred=1)
run_fn(Ctx(w, [sp], sp), "riftbrek:admin/suspend_apply", {"status": "suspended"})
check("suspend: credential 0, member door shut", sp.s["rb_cred"] == 0 and not door("birds", sp))
run_fn(Ctx(w, [sp], sp), "riftbrek:admin/restore_apply", {})
check("restore: credential back, door opens again", sp.s["rb_cred"] == 1 and door("birds", sp))
rv = P("StillRevoked", {"rb_revoked"}, rb_clear=0, rb_cred=0)
run_fn(Ctx(w, [rv], rv), "riftbrek:admin/restore_apply", {})
check("restore does NOT resurrect a revoked player", rv.s["rb_cred"] == 0 and not door("public", rv))
m = P("Promo", {"rb_member", "rb_wildcards"}, rb_clear=2, rb_cred=1)
check("member cannot pass leader door", not door("leader", m))
run_fn(Ctx(w, [m], m), "riftbrek:admin/leader_apply", {})
check("leader grant -> clearance 4, leader door opens", m.s["rb_clear"] == 4 and door("leader", m))
run_fn(Ctx(w, [m], m), "riftbrek:admin/unleader_apply", {})
check("leader removal -> back to member, leader door shut", m.s["rb_clear"] == 2 and not door("leader", m))
run_fn(Ctx(w, [m], m), "riftbrek:admin/royal_apply", {})
check("royal grant opens royal door and survives lockdown", door("royal", m, lock=1))
kb = P("KitBirds", {"rb_member", "rb_birds"}, rb_clear=2, rb_cred=1)
run_fn(Ctx(w, [kb], kb), "riftbrek:kit/birds")
check("active Birds member receives the Birds kit (give lines run, rb_kit=1)", any(l.startswith("give") for l in kb.log) and kb.s.get("rb_kit") == 1)
ku = P("KitWrongFaction", {"rb_member", "rb_unstables"}, rb_clear=2, rb_cred=1)
run_fn(Ctx(w, [ku], ku), "riftbrek:kit/birds")
check("Unstables member cannot pull the Birds kit", not any(l.startswith("give") for l in ku.log))
kv = P("KitVisitor", {"rb_guest"}, rb_clear=1, rb_cred=1, rb_visitor=500)
run_fn(Ctx(w, [kv], kv), "riftbrek:kit/creator_flame")
check("visitor cannot pull a creator kit", not any(l.startswith("give") for l in kv.log))
print("== Veil privacy")
vp = member("veil")
check("Veil member gets invisibility each tick", (run_fn(Ctx(w, [vp], vp), "riftbrek:tick") or True) and any("effect give" in l for l in vp.log))
pub = TEXTS["riftbrek:registry/public"]
check("public roster function never prints a name selector for Veil", "rb_veil" not in pub and "veil" not in pub.replace("Veil: CLASSIFIED", ""))
vf = TEXTS["riftbrek:registry/fetch_show"]
check("public roster fetch filters Veil by record key", 'unless data storage riftbrek:tmp rec{key:"veil"}' in vf)
check("Veil ledger is leader-gated (clear >= 4)", "rb_clear=4.." in TEXTS["riftbrek:registry/leader_private"])
bk = TEXTS["riftbrek:book/give_veil"]
check("Veil book contains no $(mc) / $(discord)", "$(mc)" not in bk and "$(discord)" not in bk)
bm = TEXTS["riftbrek:book/give_member"]
check("member book lists Minecraft + Discord username + credential", "$(mc)" in bm and "$(discord)" in bm and "RB-$(fcode)-$(id)" in bm)
lg = "".join(t for k, t in TEXTS.items() if k.startswith("riftbrek:log/"))
check("ledger entries never store a username", "$(mc)" not in lg and "mc" not in re.findall(r"l\.(\w+)", lg))
print("== stolen book: no function reads book/item data for authorisation")
auth_texts = "".join(TEXTS[k] for k in TEXTS if k.startswith(("riftbrek:door/", "riftbrek:gate", "riftbrek:kit/")))
check("no door/kit logic inspects held items or book NBT", "written_book" not in auth_texts.replace("give @s minecraft:written_book", "") and "SelectedItem" not in auth_texts and "Inventory" not in auth_texts)
print("\nFAILED:", fails)
sys.exit(1 if fails else 0)
