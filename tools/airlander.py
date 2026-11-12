"""Extract the Airlander 10 from the supplied 1.19.2 world save into a voxel array (y,z,x) + palette + tile entities."""
import sys, os, collections
import numpy as np
sys.path.insert(0, os.path.dirname(__file__))
import mca

BASE = sys.argv[1] if len(sys.argv) > 1 else ""
BOX = dict(x0=-28, x1=32, y0=-14, y1=20, z0=-88, z1=6)


def extract(base):
    sx, sy, sz = BOX["x1"] - BOX["x0"] + 1, BOX["y1"] - BOX["y0"] + 1, BOX["z1"] - BOX["z0"] + 1
    pal, pidx = [("minecraft:air", {})], {"minecraft:air|": 0}
    arr = np.zeros((sy, sz, sx), np.int32)
    tes = []
    rd = os.path.join(base, "region")
    for f in sorted(os.listdir(rd)):
        for c in mca.chunks(os.path.join(rd, f)):
            cx, cz = c["xPos"], c["zPos"]
            if cx * 16 > BOX["x1"] or cx * 16 + 15 < BOX["x0"] or cz * 16 > BOX["z1"] or cz * 16 + 15 < BOX["z0"]:
                continue
            for sec in c["sections"]:
                r = mca.unpack_section(sec)
                if r is None:
                    continue
                p, a = r
                sY = sec["Y"] * 16
                if sY > BOX["y1"] or sY + 15 < BOX["y0"]:
                    continue
                ys, zs, xs = np.nonzero(a >= 0)
                X = cx * 16 + xs; Y = sY + ys; Z = cz * 16 + zs
                m = (X >= BOX["x0"]) & (X <= BOX["x1"]) & (Y >= BOX["y0"]) & (Y <= BOX["y1"]) & (Z >= BOX["z0"]) & (Z <= BOX["z1"])
                for i, (n, pr) in enumerate(p):
                    if n in ("minecraft:air", "minecraft:cave_air", "minecraft:void_air"):
                        continue
                    sel = m & (a[ys, zs, xs] == i)
                    if not sel.any():
                        continue
                    k = n + "|" + ",".join(f"{a_}={b_}" for a_, b_ in sorted(pr.items()))
                    if k not in pidx:
                        pidx[k] = len(pal); pal.append((n, dict(pr)))
                    arr[Y[sel] - BOX["y0"], Z[sel] - BOX["z0"], X[sel] - BOX["x0"]] = pidx[k]
            for be in c.get("block_entities", []):
                if BOX["x0"] <= be["x"] <= BOX["x1"] and BOX["y0"] <= be["y"] <= BOX["y1"] and BOX["z0"] <= be["z"] <= BOX["z1"]:
                    tes.append(be)
    return pal, arr, tes


if __name__ == "__main__":
    pal, arr, tes = extract(BASE)
    nz = np.nonzero(arr)
    print("shape", arr.shape, "solid", len(nz[0]), "palette", len(pal))
    print("bbox y", nz[0].min(), nz[0].max(), "z", nz[1].min(), nz[1].max(), "x", nz[2].min(), nz[2].max())
    cnt = collections.Counter()
    for i, k in zip(*np.unique(arr, return_counts=True)):
        cnt[pal[i][0].split(":")[1]] += int(k)
    print(cnt.most_common(60))
    print("tile entities", collections.Counter(t["id"] for t in tes))
    for t in tes[:6]:
        print(t)
