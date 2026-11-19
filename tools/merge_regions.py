"""Merge several folders of Anvil region files into one set, chunk by chunk (raw records, nothing re-encoded).
usage: merge_regions.py <outdir> <dir1> <dir2> ...     (each dir holds r.X.Z.mca; no chunk may appear in two inputs)"""
import sys, os, struct, time, collections


def read_chunks(path):
    d = open(path, "rb").read()
    out = {}
    for i in range(1024):
        loc = struct.unpack(">I", d[i * 4:i * 4 + 4])[0]
        if loc:
            off, cnt = (loc >> 8) * 4096, loc & 255
            out[i] = d[off:off + cnt * 4096]
    return out


def merge(outdir, dirs):
    os.makedirs(outdir, exist_ok=True)
    names = sorted({f for d in dirs for f in os.listdir(d) if f.endswith(".mca")})
    n = 0
    for nm in names:
        chunks = {}
        for d in dirs:
            p = os.path.join(d, nm)
            if os.path.exists(p):
                for i, rec in read_chunks(p).items():
                    assert i not in chunks, f"chunk {i} of {nm} appears in two inputs"
                    chunks[i] = rec
        header = bytearray(8192); body = bytearray(); sector = 2
        for i in sorted(chunks):
            rec = chunks[i]; cnt = len(rec) // 4096
            header[i * 4:i * 4 + 4] = struct.pack(">I", (sector << 8) | cnt)
            header[4096 + i * 4:4096 + i * 4 + 4] = struct.pack(">I", int(time.time()))
            body += rec; sector += cnt
        open(os.path.join(outdir, nm), "wb").write(bytes(header) + bytes(body)); n += len(chunks)
    return len(names), n


if __name__ == "__main__":
    print(merge(sys.argv[1], sys.argv[2:]))
