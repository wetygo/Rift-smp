"""One-off: turn the supplied Airlander 10 world into compact display-entity boxes (relative to the cabin floor)."""
import sys, os, json, collections
import numpy as np
sys.path.insert(0, os.path.dirname(__file__))
import airlander, annex

SRC = sys.argv[1]
pal, arr, tes = airlander.extract(SRC)
B = airlander.BOX
newpal = []
for n, p in pal:
    nn, pp = annex.map_block(n, p)
    if nn == "minecraft:black_concrete":
        nn = "minecraft:purple_concrete"           # RIFTBREK accent instead of black
    newpal.append((nn, pp))
SKIP = ("door", "trapdoor", "button", "lever", "tripwire", "sign", "banner", "command_block", "shulker", "furnace", "crafting", "bed", "pressure_plate")
mat = [None if n == "minecraft:air" or any(k in n for k in SKIP) else (n, tuple(sorted(p.items()))) for n, p in newpal]
Y, Z, X = arr.shape
keym = np.empty(arr.shape, dtype=object)
ids = np.full(arr.shape, -1, np.int32)
kidx = {}
for i, m in enumerate(mat):
    if m is None:
        continue
    kidx.setdefault(m, len(kidx)); ids[arr == i] = kidx[m]
keys = {v: k for k, v in kidx.items()}
# exposure: keep a block only if one of its 6 neighbours is air / empty (hide fully enclosed blocks)
solid = (ids >= 0)
pad = np.pad(solid, 1)
expo = ~(pad[:-2, 1:-1, 1:-1] & pad[2:, 1:-1, 1:-1] & pad[1:-1, :-2, 1:-1] & pad[1:-1, 2:, 1:-1] & pad[1:-1, 1:-1, :-2] & pad[1:-1, 1:-1, 2:])
ids = np.where(expo, ids, -1)
CUBE_SUFFIX = ("_slab", "_stairs", "_wall", "_pane", "_bars", "_lantern", "lightning_rod")
visited = np.zeros(arr.shape, bool)
boxes = []
RX, RY, RZ = 4, -10, -19            # cabin floor reference (original world coords)
for y in range(Y):
    for z in range(Z):
        for x in range(X):
            k = ids[y, z, x]
            if k < 0 or visited[y, z, x]:
                continue
            nm, pr = keys[k]
            ox, oy, oz = x + B["x0"] - RX, y + B["y0"] - RY, z + B["z0"] - RZ
            if any(nm.endswith(s) for s in CUBE_SUFFIX):
                visited[y, z, x] = True
                boxes.append([nm, dict(pr), ox, oy, oz, 1, 1, 1]); continue
            x2 = x
            while x2 + 1 < X and ids[y, z, x2 + 1] == k and not visited[y, z, x2 + 1]: x2 += 1
            z2 = z
            while z2 + 1 < Z and all(ids[y, z2 + 1, xx] == k and not visited[y, z2 + 1, xx] for xx in range(x, x2 + 1)): z2 += 1
            y2 = y
            while y2 + 1 < Y and all(ids[y2 + 1, zz, xx] == k and not visited[y2 + 1, zz, xx] for zz in range(z, z2 + 1) for xx in range(x, x2 + 1)): y2 += 1
            visited[y:y2 + 1, z:z2 + 1, x:x2 + 1] = True
            boxes.append([nm, dict(pr), ox, oy, oz, x2 - x + 1, y2 - y + 1, z2 - z + 1])
json.dump(boxes, open(os.path.join(os.path.dirname(__file__), "riftbrek", "airlander_boxes.json"), "w"), separators=(",", ":"))
xs = [b[2] for b in boxes]; ys = [b[3] for b in boxes]; zs = [b[4] for b in boxes]
print("boxes", len(boxes), "x", min(xs), max(xs), "y", min(ys), max(ys), "z", min(zs), max(zs))
print(collections.Counter(b[0].split(":")[1] for b in boxes).most_common(8))
