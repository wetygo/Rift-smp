"""Block canvas + Litematica (.litematic) writer."""
import gzip, time, re
import numpy as np
from . import nbt
from .nbt import Byte, Long


def parse_state(s):
    if "[" in s:
        name, props = s[:-1].split("[", 1)
        d = dict(p.split("=", 1) for p in props.split(","))
    else:
        name, d = s, {}
    if ":" not in name:
        name = "minecraft:" + name
    return name, d


class World:
    def __init__(self, sx, sy, sz, y_origin=-64):
        self.sx, self.sy, self.sz = sx, sy, sz
        self.y_origin = y_origin
        self.a = np.zeros((sy, sz, sx), dtype=np.uint16)     # [y][z][x]
        self.palette = [("minecraft:air", {})]
        self.pidx = {"minecraft:air": 0}
        self.tiles = []
        self.tile_pos = {}

    # ---------- palette
    def B(self, s):
        if isinstance(s, int):
            return s
        key = s if ":" in s.split("[")[0] else "minecraft:" + s
        i = self.pidx.get(key)
        if i is None:
            self.palette.append(parse_state(s))
            i = len(self.palette) - 1
            self.pidx[key] = i
        return i

    # ---------- primitives (inclusive bounds, clipped)
    def fill(self, x0, y0, z0, x1, y1, z1, b):
        if x0 > x1: x0, x1 = x1, x0
        if y0 > y1: y0, y1 = y1, y0
        if z0 > z1: z0, z1 = z1, z0
        x0, y0, z0 = max(x0, 0), max(y0, 0), max(z0, 0)
        x1, y1, z1 = min(x1, self.sx - 1), min(y1, self.sy - 1), min(z1, self.sz - 1)
        if x0 > x1 or y0 > y1 or z0 > z1:
            return
        self.a[y0:y1 + 1, z0:z1 + 1, x0:x1 + 1] = self.B(b)

    def replace(self, x0, y0, z0, x1, y1, z1, old, new):
        x0, y0, z0 = max(x0, 0), max(y0, 0), max(z0, 0)
        x1, y1, z1 = min(x1, self.sx - 1), min(y1, self.sy - 1), min(z1, self.sz - 1)
        sub = self.a[y0:y1 + 1, z0:z1 + 1, x0:x1 + 1]
        sub[sub == self.B(old)] = self.B(new)

    def set(self, x, y, z, b):
        if 0 <= x < self.sx and 0 <= y < self.sy and 0 <= z < self.sz:
            self.a[y, z, x] = self.B(b)

    def get(self, x, y, z):
        return self.palette[self.a[y, z, x]][0]

    def box(self, x0, y0, z0, x1, y1, z1, b, thick=1):
        """hollow box (all six faces)."""
        self.fill(x0, y0, z0, x1, y1, z1, b)
        self.fill(x0 + thick, y0 + thick, z0 + thick, x1 - thick, y1 - thick, z1 - thick, 0)

    def tile(self, x, y, z, data):
        d = dict(data); d["x"] = x; d["y"] = y; d["z"] = z
        key = (x, y, z)
        if key in self.tile_pos:
            self.tiles[self.tile_pos[key]] = d
        else:
            self.tile_pos[key] = len(self.tiles); self.tiles.append(d)

    # ---------- output
    def pack(self):
        n = self.a.size
        bits = max(2, (len(self.palette) - 1).bit_length())
        assert n % 64 == 0
        flat = self.a.reshape(-1, 64).astype(np.uint64)
        out = np.zeros((flat.shape[0], bits), dtype=np.uint64)
        for j in range(64):
            pos = j * bits
            li, sh = divmod(pos, 64)
            out[:, li] |= flat[:, j] << np.uint64(sh)
            if sh + bits > 64:
                out[:, li + 1] |= flat[:, j] >> np.uint64(64 - sh)
        return bits, out.reshape(-1).astype(">u8").tobytes()

    def save(self, path, name, author, description, level=6):
        bits, packed = self.pack()
        pal = []
        for nm, props in self.palette:
            e = {"Name": nm}
            if props:
                e["Properties"] = dict(props)
            pal.append(e)
        total = int(np.count_nonzero(self.a))
        now = Long(int(time.time() * 1000))
        region = {
            "Position": {"x": 0, "y": 0, "z": 0},
            "Size": {"x": self.sx, "y": self.sy, "z": self.sz},
            "BlockStatePalette": pal,
            "BlockStates": packed,
            "TileEntities": self.tiles,
            "Entities": [],
            "PendingBlockTicks": [],
            "PendingFluidTicks": [],
        }
        root = {
            "MinecraftDataVersion": 4671,
            "Version": 6,
            "SubVersion": 1,
            "Metadata": {
                "Name": name, "Author": author, "Description": description,
                "RegionCount": 1, "TotalBlocks": total, "TotalVolume": int(self.a.size),
                "EnclosingSize": {"x": self.sx, "y": self.sy, "z": self.sz},
                "TimeCreated": now, "TimeModified": now,
            },
            "Regions": {"RIFTBREK Vanguard Headquarters": region},
        }
        raw = nbt.dumps(root)
        with gzip.GzipFile(path, "wb", compresslevel=level, mtime=0) as f:
            f.write(raw)
        return bits, total
