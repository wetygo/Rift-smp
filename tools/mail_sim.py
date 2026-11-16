"""Simulates the generated book-mail functions on a model of the room dispensers (9 slots each)."""
import sys, os, re
sys.path.insert(0, os.path.dirname(__file__))
import validate
from riftbrek import layout as L

PACK = sys.argv[1]
IDS, TEXTS = validate.functions(PACK)
rooms = [r for r in L.q_rooms() if r["kind"] == "room"]
pos2room = {(r["mail_cb"][0], r["mail_cb"][1] + 1, r["mail_cb"][2]): r["n"] for r in rooms}     # dispenser position -> room
box = {r["n"]: [None] * 9 for r in rooms}          # dispenser contents: item dict or None
fails = 0


def check(label, cond):
    global fails
    print(("PASS " if cond else "FAIL ") + label)
    fails += 0 if cond else 1


def matches(item, pred):
    """item: dict(id, title, name).  pred: item predicate text as generated"""
    if item is None:
        return False
    if pred == "*":
        return True
    m = re.match(r'minecraft:written_book\[minecraft:written_book_content~\{title:"(\d+)"\}\]$', pred)
    if m: return item["id"] == "written_book" and item.get("title") == m.group(1) and item.get("title_form") == "plain"
    m = re.match(r'minecraft:written_book\[minecraft:written_book_content~\{title:\{raw:"(\d+)"\}\}\]$', pred)
    if m: return item["id"] == "written_book" and item.get("title") == m.group(1) and item.get("title_form") == "raw"
    m = re.match(r'minecraft:written_book\[minecraft:custom_name="(\d+)"\]$', pred)
    if m: return item["id"] == "written_book" and item.get("name") == m.group(1) and item.get("name_form") == "plain"
    m = re.match(r'minecraft:written_book\[minecraft:custom_name=\{text:"(\d+)"\}\]$', pred)
    if m: return item["id"] == "written_book" and item.get("name") == m.group(1) and item.get("name_form") == "text"
    if pred == "minecraft:written_book": return item["id"] == "written_book"
    raise ValueError("unmodelled predicate " + pred)


def run_room(n):
    cb = rooms[n - 1]["mail_cb"]
    disp = (cb[0], cb[1] + 1, cb[2])
    fn = f"riftbrek:mail/room_{n}"

    def abs_of(dx, dy, dz): return (cb[0] + dx, cb[1] + dy, cb[2] + dz)

    def exec_line(line, ctx):
        # "execute if items block ~ ~1 ~ container.S PRED [unless items block ~a ~b ~c container.S *] run function X"
        m = re.match(r"execute if items block ~ ~1 ~ container\.(\d) (\S+) (?:unless items block ~(-?\d+) ~(-?\d+) ~(-?\d+) container\.\d \* )?run function (\S+)(?: \{(.*)\})?$", line)
        if not m:
            return
        s, pred, ux, uy, uz, f, arg = m.groups()
        if not matches(box[n][int(s)], pred):
            return
        if ux is not None:
            tgt = pos2room.get(abs_of(int(ux), int(uy), int(uz)))
            assert tgt is not None, f"line targets a position that is not a room dispenser: {line[:90]}"
            if box[tgt][int(s)] is not None:
                return
        if f == "riftbrek:mail/move":
            a = dict(kv.split(":") for kv in arg.split(","))
            tgt = pos2room.get((cb[0] + int(a["dx"]), cb[1] + int(a["dy"]), cb[2] + int(a["dz"])))
            assert tgt is not None, "move target is not a dispenser"
            sl = int(a["s"])
            box[tgt][sl] = box[n][sl]; box[n][sl] = None
        else:
            run(f, ctx)

    def run(f, ctx=None):
        for line in TEXTS[f].split("\n"):
            if line and not line.startswith("#"):
                exec_line(line, ctx)
    run(fn)


def tick_all():
    for _ in range(3):
        for r in rooms:
            run_room(r["n"])


book = lambda title, form="plain": dict(id="written_book", title=title, title_form=form)
named = lambda name, form="plain": dict(id="written_book", name=name, name_form=form)
box[3][0] = book("7"); tick_all()
check("book titled 7 in room 3 arrives in room 7's dispenser (same slot), leaves room 3", box[7][0] is not None and box[3][0] is None)
box[10][2] = book("22", "raw"); tick_all()
check("title stored as {raw:'22'} also routes to room 22", box[22][2] is not None and box[10][2] is None)
box[1][4] = named("15"); tick_all()
check("book NAMED 15 (custom_name string) routes to room 15", box[15][4] is not None and box[1][4] is None)
box[2][5] = named("9", "text"); tick_all()
check("book named {text:'9'} routes to room 9", box[9][5] is not None and box[2][5] is None)
box[4][1] = book("99"); tick_all()
check("unknown room number stays put (no loss)", box[4][1] is not None)
box[5][0] = book("5"); tick_all()
check("a book addressed to its own room is not moved", box[5][0] is not None)
box[6][3] = book("8"); box[8][3] = dict(id="written_book", title="x", title_form="plain"); tick_all()
check("occupied destination slot blocks delivery (book kept, nothing overwritten)", box[6][3] is not None and box[8][3]["title"] == "x")
box[11][6] = dict(id="diamond"); tick_all()
check("non-book items are never forwarded", box[11][6] is not None)
for k in range(9):
    box[12][k] = book("14")
tick_all()
check("9 books at once all arrive, one per slot", all(box[14][k] is not None for k in range(9)) and all(box[12][k] is None for k in range(9)))
print("mail simulation failures:", fails)
sys.exit(1 if fails else 0)
