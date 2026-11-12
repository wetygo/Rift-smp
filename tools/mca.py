"""Minimal Anvil (.mca) reader: yields chunk NBT dicts."""
import struct, zlib, gzip, os, sys
sys.path.insert(0, os.path.dirname(__file__))
from riftbrek import nbt

def chunks(path):
    d = open(path, "rb").read()
    for i in range(1024):
        off = struct.unpack(">I", b"\0" + d[i * 4:i * 4 + 3])[0]
        if off == 0:
            continue
        pos = off * 4096
        ln, comp = struct.unpack(">IB", d[pos:pos + 5])
        raw = d[pos + 5:pos + 4 + ln]
        raw = zlib.decompress(raw) if comp == 2 else gzip.decompress(raw) if comp == 1 else raw
        yield nbt.loads(raw)


def unpack_section(sec):
    """returns (palette[list of (name,props)], idx array 16x16x16 [y][z][x]) or None if single-valued"""
    import numpy as np
    bs = sec.get("block_states")
    if bs is None:
        return None
    pal = [(p["Name"], p.get("Properties", {})) for p in bs["palette"]]
    if "data" not in bs or len(pal) == 1:
        return pal, np.zeros((16, 16, 16), dtype=np.int32)
    bits = max(4, (len(pal) - 1).bit_length())
    raw = np.frombuffer(bs["data"][2], ">i8").astype(np.int64).view(np.uint64)
    per = 64 // bits
    out = np.zeros(4096, dtype=np.int32)
    idx = np.arange(4096)
    li, k = idx // per, idx % per
    out = ((raw[li] >> (k * bits).astype(np.uint64)) & np.uint64((1 << bits) - 1)).astype(np.int32)
    return pal, out.reshape(16, 16, 16)
