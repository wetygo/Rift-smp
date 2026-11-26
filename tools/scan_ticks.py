"""Scan region files: every (repeating) command block must have a scheduled tick in its chunk (otherwise it stays dormant until re-placed)."""
import sys, os, zlib, struct
sys.path.insert(0, os.path.dirname(__file__))
from riftbrek import nbt
d = sys.argv[1]
tot = ok = 0; bad = []
for f in sorted(os.listdir(d)):
    if not f.endswith(".mca"):
        continue
    data = open(os.path.join(d, f), "rb").read()
    for i in range(1024):
        loc = struct.unpack(">I", data[i * 4:i * 4 + 4])[0]
        if not loc:
            continue
        off, cnt = (loc >> 8) * 4096, loc & 255
        ln = struct.unpack(">I", data[off:off + 4])[0]
        raw = zlib.decompress(data[off + 5:off + 4 + ln])
        ch = nbt.loads(raw)
        ticks = {(t["x"], t["y"], t["z"]) for t in ch.get("block_ticks", [])}
        for be in ch.get("block_entities", []):
            if be.get("id") == "minecraft:command_block" and int(be.get("auto", 0)):
                tot += 1
                if (be["x"], be["y"], be["z"]) in ticks:
                    ok += 1
                else:
                    bad.append((f, be["x"], be["y"], be["z"]))
print("auto command blocks:", tot, " with a scheduled tick:", ok, " dormant:", len(bad), bad[:6])
