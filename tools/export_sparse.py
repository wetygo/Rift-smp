"""Export a multi-strip .litematic (regions far apart / sparse) as Anvil region files without a dense world array.
usage: export_sparse.py <litematic> <outdir> <OX> <OZ> [YDELTA]
 local (x,y,z) of every region -> world (OX+x, y-64+YDELTA, OZ+z);  OX, OZ must be multiples of 16;  YDELTA lifts the whole build (any integer).
 verify:  export_sparse.py --verify <litematic> <outdir> <OX> <OZ> [YDELTA]"""
import sys, os, gzip, json
import numpy as np
sys.path.insert(0, os.path.dirname(__file__))
from riftbrek import nbt
import validate, export_world as ex, mca


def load(master, ydelta):
    d = nbt.loads(gzip.open(master).read())
    out = []
    for name, r in d["Regions"].items():
        pal, a = validate.decode_region(r)
        px, py, pz = r["Position"]["x"], r["Position"]["y"], r["Position"]["z"]
        if ydelta:
            sy = a.shape[0]
            shifted = np.zeros_like(a)
            if ydelta > 0:
                shifted[ydelta:] = a[:sy - ydelta]
            else:
                shifted[:sy + ydelta] = a[-ydelta:]
            a = shifted
        out.append((name, pal, a, px, py, pz, r["TileEntities"]))
    return out


def export(master, outdir, ox, oz, ydelta=0):
    assert ox % 16 == 0 and oz % 16 == 0
    regs = {}; nch = 0; ntile = 0
    for (name, pal, a, px, py, pz, tiles) in load(master, ydelta):
        assert px % 16 == 0 and pz % 16 == 0 and a.shape[0] == 384, name
        tbc = {}
        for t in tiles:
            t = dict(t); t["x"] += px + ox; t["y"] += py + ex.WORLD_Y0 + ydelta; t["z"] += pz + oz
            tbc.setdefault((t["x"] >> 4, t["z"] >> 4), []).append(t); ntile += 1
        sz, sx = a.shape[1], a.shape[2]
        for cz in range(sz // 16):
            for cx in range(sx // 16):
                if not a[:, cz * 16:(cz + 1) * 16, cx * 16:(cx + 1) * 16].any():
                    continue
                acx, acz = (ox + px) // 16 + cx, (oz + pz) // 16 + cz
                raw = nbt.dumps(ex.chunk_nbt(cx, cz, a, pal, tbc, acx, acz))
                regs.setdefault((acx >> 5, acz >> 5), {})[(acx & 31, acz & 31)] = raw
                nch += 1
        print("  exported strip", name, flush=True)
    os.makedirs(os.path.join(outdir, "region"), exist_ok=True)
    for (rx, rz), ch in regs.items():
        ex.write_region(os.path.join(outdir, "region", f"r.{rx}.{rz}.mca"), ch)
    info = dict(chunks=nch, region_files=len(regs), tiles=ntile, origin=[ox, oz], ydelta=ydelta, files=sorted(f"r.{a}.{b}.mca" for a, b in regs))
    json.dump(info, open(os.path.join(outdir, "export_info.json"), "w"))
    print("exported", {k: v for k, v in info.items() if k != "files"})
    return info


def verify(master, outdir, ox, oz, ydelta=0):
    want = {}                                    # absolute chunk -> (pal, region array, cx, cz)
    tiles_want = {}
    for (name, pal, a, px, py, pz, tiles) in load(master, ydelta):
        for t in tiles:
            tiles_want[(t["x"] + px + ox, t["y"] + py + ex.WORLD_Y0 + ydelta, t["z"] + pz + oz)] = t["id"]
        sz, sx = a.shape[1], a.shape[2]
        for cz in range(sz // 16):
            for cx in range(sx // 16):
                if a[:, cz * 16:(cz + 1) * 16, cx * 16:(cx + 1) * 16].any():
                    want[((ox + px) // 16 + cx, (oz + pz) // 16 + cz)] = (pal, a, cx, cz)
    bad = chunks = te_total = te_bad = 0
    seen = set(); seen_te = set()
    for fn in sorted(os.listdir(os.path.join(outdir, "region"))):
        for c in mca.chunks(os.path.join(outdir, "region", fn)):
            key = (c["xPos"], c["zPos"]); chunks += 1; seen.add(key)
            if key not in want:
                print("UNEXPECTED chunk", key); bad += 1; continue
            pal, a, cx, cz = want[key]
            assert c["DataVersion"] == ex.DV and c["Status"] == "minecraft:full"
            exp = a[:, cz * 16:(cz + 1) * 16, cx * 16:(cx + 1) * 16]
            got = np.zeros((384, 16, 16), np.uint16)
            gl = {ex.pkey(n, p): i for i, (n, p) in enumerate(pal)}
            for s in c["sections"]:
                spal, arr = mca.unpack_section(s)
                lut = np.array([gl[ex.pkey(n, p)] for n, p in spal], np.uint16)
                got[(s["Y"] + 4) * 16:(s["Y"] + 5) * 16] = lut[arr]
            d = int((got != exp).sum())
            if d:
                bad += d; print("MISMATCH", key, d)
            for t in c["block_entities"]:
                te_total += 1; k = (t["x"], t["y"], t["z"]); seen_te.add(k)
                if tiles_want.get(k) != t["id"]:
                    te_bad += 1
    missing = len(set(want) - seen); missing_te = len(set(tiles_want) - seen_te)
    ok = bad == 0 and missing == 0 and te_bad == 0 and missing_te == 0
    print(f"chunks {chunks}/{len(want)} missing {missing}  block mismatches {bad}  tile entities {te_total}/{len(tiles_want)} (bad {te_bad}, missing {missing_te})")
    print("RESULT:", "PASS - region files are block-for-block identical to the schematic" if ok else "FAIL")
    return ok


if __name__ == "__main__":
    if sys.argv[1] == "--verify":
        a = sys.argv[2:]; sys.exit(0 if verify(a[0], a[1], int(a[2]), int(a[3]), int(a[4]) if len(a) > 4 else 0) else 1)
    a = sys.argv[1:]
    export(a[0], a[1], int(a[2]), int(a[3]), int(a[4]) if len(a) > 4 else 0)
