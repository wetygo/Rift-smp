"""Tiny NBT encoder/decoder (big-endian, uncompressed payload) - no third-party deps."""
import struct, io


class Byte(int): pass
class Short(int): pass
class Long(int): pass
class Float(float): pass
class Double(float): pass
class LongArray(list): pass
class IntArray(list): pass


def _s(b, s):
    e = s.encode("utf-8")
    b.write(struct.pack(">H", len(e))); b.write(e)


def _tag(v):
    if isinstance(v, bool): return 1
    if isinstance(v, Byte): return 1
    if isinstance(v, Short): return 2
    if isinstance(v, Long): return 4
    if isinstance(v, int): return 3
    if isinstance(v, Float): return 5
    if isinstance(v, (Double, float)): return 6
    if isinstance(v, str): return 8
    if isinstance(v, (bytes, bytearray)): return 12  # raw big-endian long array payload
    if isinstance(v, LongArray): return 12
    if isinstance(v, IntArray): return 11
    if isinstance(v, list): return 9
    if isinstance(v, dict): return 10
    raise TypeError(type(v))


def _pay(b, v):
    t = _tag(v)
    if t == 1: b.write(struct.pack(">b", int(v)))
    elif t == 2: b.write(struct.pack(">h", int(v)))
    elif t == 3: b.write(struct.pack(">i", int(v)))
    elif t == 4: b.write(struct.pack(">q", int(v)))
    elif t == 5: b.write(struct.pack(">f", float(v)))
    elif t == 6: b.write(struct.pack(">d", float(v)))
    elif t == 8: _s(b, v)
    elif t == 12:
        if isinstance(v, (bytes, bytearray)):
            b.write(struct.pack(">i", len(v) // 8)); b.write(v)
        else:
            b.write(struct.pack(">i", len(v)))
            for x in v: b.write(struct.pack(">q", x))
    elif t == 11:
        b.write(struct.pack(">i", len(v)))
        for x in v: b.write(struct.pack(">i", x))
    elif t == 9:
        if not v:
            b.write(struct.pack(">bi", 0, 0)); return
        et = _tag(v[0])
        b.write(struct.pack(">bi", et, len(v)))
        for x in v:
            assert _tag(x) == et, "heterogeneous list"
            _pay(b, x)
    elif t == 10:
        for k, x in v.items():
            b.write(struct.pack(">b", _tag(x))); _s(b, k); _pay(b, x)
        b.write(b"\x00")


def dumps(root, name=""):
    b = io.BytesIO()
    b.write(struct.pack(">b", 10)); _s(b, name); _pay(b, root)
    return b.getvalue()


def loads(data):
    f = io.BytesIO(data)

    def u(fmt, n): return struct.unpack(fmt, f.read(n))[0]

    def pay(t):
        if t == 1: return Byte(u(">b", 1))
        if t == 2: return Short(u(">h", 2))
        if t == 3: return u(">i", 4)
        if t == 4: return Long(u(">q", 8))
        if t == 5: return Float(u(">f", 4))
        if t == 6: return Double(u(">d", 8))
        if t == 7: n = u(">i", 4); return f.read(n)
        if t == 8: n = u(">H", 2); return f.read(n).decode()
        if t == 9:
            it = u(">b", 1); n = u(">i", 4); return [pay(it) for _ in range(n)]
        if t == 10:
            d = {}
            while True:
                tt = u(">b", 1)
                if tt == 0: return d
                n = u(">H", 2); k = f.read(n).decode(); d[k] = pay(tt)
        if t == 11: n = u(">i", 4); return IntArray(struct.unpack(">%di" % n, f.read(4 * n)))
        if t == 12: n = u(">i", 4); return ("longs", n, f.read(8 * n))
    t = u(">b", 1); n = u(">H", 2); f.read(n)
    return pay(t)
