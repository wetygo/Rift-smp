"""Independent read-back of exported region files vs the master .litematic (block-for-block + tile entities + entities).
Uses mca.py's reader (validated on a real 1.19.2 save), not the exporter's own code path for decoding."""
import sys, os, time
import numpy as np
sys.path.insert(0, os.path.dirname(__file__))
import mca, export_world as ex


def check_headers(outdir):
    """region-file header: every chunk is stored at the slot the game will look it up in, sector bounds valid"""
    import struct, zlib
    bad = 0; n = 0
    for sub in ("region", "entities"):
        for fn in sorted(os.listdir(os.path.join(outdir, sub))):
            if not fn.endswith(".mca"):
                continue
            d = open(os.path.join(outdir, sub, fn), "rb").read()
            assert len(d) % 4096 == 0 and len(d) >= 8192, "region file not sector aligned"
            rx, rz = (int(v) for v in fn.split(".")[1:3])
            for i in range(1024):
                off = struct.unpack(">I", b"\0" + d[i * 4:i * 4 + 3])[0]
                if not off:
                    continue
                n += 1
                ln, comp = struct.unpack(">IB", d[off * 4096:off * 4096 + 5])
                c = mca.nbt.loads(zlib.decompress(d[off * 4096 + 5:off * 4096 + 4 + ln]))
                if sub == "region":
                    cx, cz = c["xPos"], c["zPos"]
                else:
                    cx, cz = c["Position"]
                if (cx >> 5, cz >> 5) != (rx, rz) or ((cx & 31) + (cz & 31) * 32) != i or comp != 2:
                    bad += 1
    print(f"region headers: {n} chunk slots checked, {bad} wrong")
    return bad == 0


def main(master, outdir):
    t0 = time.time()
    world, gpal, tiles, ents = ex.build_world_array(master)
    gidx = {ex.pkey(n, p): i for i, (n, p) in enumerate(gpal)}
    Z, X = world.shape[1], world.shape[2]
    bad = 0; chunks = 0; secs = 0; te_total = 0; te_bad = 0
    want_te = {(t["x"], t["y"], t["z"]): t["id"] for t in tiles}
    seen_te = set()
    for fn in sorted(os.listdir(os.path.join(outdir, "region"))):
        for c in mca.chunks(os.path.join(outdir, "region", fn)):
            cx, cz = c["xPos"], c["zPos"]
            chunks += 1
            assert c["DataVersion"] == ex.DV and c["Status"] == "minecraft:full" and c["yPos"] == -4
            got = np.zeros((384, 16, 16), np.uint16)
            ys = sorted(c["sections"], key=lambda s: s["Y"])
            assert [s["Y"] for s in ys] == list(range(-4, 20)), "section list wrong"
            for s in ys:
                pal, arr = mca.unpack_section(s)
                lut = np.array([gidx[ex.pkey(n, p)] for n, p in pal], np.uint16)
                got[(s["Y"] + 4) * 16:(s["Y"] + 5) * 16] = lut[arr]
                secs += 1
            exp = world[:, cz * 16:(cz + 1) * 16, cx * 16:(cx + 1) * 16]
            d = int((got != exp).sum())
            if d:
                bad += d
                print("MISMATCH chunk", cx, cz, d)
            for t in c["block_entities"]:
                te_total += 1
                k = (t["x"], t["y"], t["z"])
                seen_te.add(k)
                if want_te.get(k) != t["id"]:
                    te_bad += 1
                # tile entity must sit inside its chunk and on a matching block
                if (t["x"] >> 4, t["z"] >> 4) != (cx, cz):
                    te_bad += 1
    # chunks that exist in the master but are missing from the region files
    expect_chunks = sum(1 for cx in range(X // 16) for cz in range(Z // 16) if world[:, cz * 16:(cz + 1) * 16, cx * 16:(cx + 1) * 16].any())
    missing_te = len(set(want_te) - seen_te)
    ent_total = 0
    if os.path.isdir(os.path.join(outdir, "entities")):
        for fn in sorted(os.listdir(os.path.join(outdir, "entities"))):
            for c in mca.chunks(os.path.join(outdir, "entities", fn)):
                ent_total += len(c["Entities"])
    hdr = check_headers(outdir)
    ok = (hdr and bad == 0 and te_bad == 0 and missing_te == 0 and chunks == expect_chunks and ent_total == len(ents))
    print(f"chunks {chunks}/{expect_chunks}  sections {secs}  block mismatches {bad}  tile entities {te_total}/{len(want_te)} (bad {te_bad}, missing {missing_te})  entities {ent_total}/{len(ents)}  [{time.time()-t0:.0f}s]")
    print("RESULT:", "PASS - exported world is block-for-block identical to the master schematic" if ok else "FAIL")
    return ok


if __name__ == "__main__":
    sys.exit(0 if main(sys.argv[1], sys.argv[2]) else 1)
