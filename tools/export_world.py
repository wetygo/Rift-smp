"""Export the MASTER .litematic (all regions) as Anvil region files for Minecraft Java 1.21.11 (data version 4671).
Drop dist/world_regions/{region,entities}/*.mca into a world save's folders -> no Litematica paste needed.
World placement: schematic local (x, y, z) -> world (x, y - 64, z);  i.e. paste origin = world (0, -64, 0)."""
import sys, os, gzip, zlib, struct, time, json
import numpy as np
sys.path.insert(0, os.path.dirname(__file__))
from riftbrek import nbt
from riftbrek.nbt import Byte, Long, IntArray
import validate

DV = 4671
OX = int(os.environ.get('RIFTBREK_OX', '0'))   # world X/Z of schematic local 0,0 (multiple of 512 so region files stay aligned)
OZ = int(os.environ.get('RIFTBREK_OZ', '0'))
assert OX % 512 == 0 and OZ % 512 == 0, 'origin must be a multiple of 512'
WORLD_Y0 = -64


def pkey(name, props):
    return name + "|" + ",".join(f"{k}={v}" for k, v in sorted(props.items()))


def build_world_array(master):
    d = nbt.loads(gzip.open(master).read())
    regs = list(d["Regions"].items())
    mx = max(r["Position"]["x"] + r["Size"]["x"] for _, r in regs)
    my = max(r["Position"]["y"] + r["Size"]["y"] for _, r in regs)
    mz = max(r["Position"]["z"] + r["Size"]["z"] for _, r in regs)
    X = (mx + 15) // 16 * 16; Z = (mz + 15) // 16 * 16
    print(f"world box {X} x {my} x {Z}  ({X // 16} x {Z // 16} chunks)", flush=True)
    world = np.zeros((384, Z, X), np.uint16)
    gpal, gidx = [("minecraft:air", {})], {pkey("minecraft:air", {}): 0}
    tiles, ents = [], []
    for name, r in regs:
        pal, a = validate.decode_region(r)
        remap = np.zeros(len(pal), np.uint16)
        for i, (n, p) in enumerate(pal):
            k = pkey(n, p)
            if k not in gidx:
                gidx[k] = len(gpal); gpal.append((n, dict(p)))
            remap[i] = gidx[k]
        px, py, pz = r["Position"]["x"], r["Position"]["y"], r["Position"]["z"]
        sy, sz, sx = a.shape
        world[py:py + sy, pz:pz + sz, px:px + sx] = remap[a]
        for t in r["TileEntities"]:
            t = dict(t); t["x"] += px + OX; t["y"] += py + WORLD_Y0; t["z"] += pz + OZ
            tiles.append(t)
        for e in r["Entities"]:
            e = dict(e); pos = [float(c) for c in e["Pos"]]
            e["Pos"] = [nbt.Double(pos[0] + px + OX), nbt.Double(pos[1] + py + WORLD_Y0), nbt.Double(pos[2] + pz + OZ)]
            if "TileX" in e:
                e["TileX"] = int(e["TileX"]) + px + OX; e["TileY"] = int(e["TileY"]) + py + WORLD_Y0; e["TileZ"] = int(e["TileZ"]) + pz + OZ
            ents.append(e)
        print(f"  placed {name}: {a.shape}", flush=True)
    return world, gpal, tiles, ents


def pack_section(ids16):
    """ids16: (16,16,16) uint16 global ids -> (palette_global_ids list, packed long bytes or None)"""
    flat = ids16.reshape(-1)
    u, inv = np.unique(flat, return_inverse=True)
    if len(u) == 1:
        return u.tolist(), None
    bits = max(4, (len(u) - 1).bit_length())
    per = 64 // bits
    n = 4096
    nl = (n + per - 1) // per
    padn = nl * per - n
    idx = np.concatenate([inv.astype(np.uint64), np.zeros(padn, np.uint64)]).reshape(nl, per)
    shifts = (np.arange(per, dtype=np.uint64) * np.uint64(bits))
    longs = np.bitwise_or.reduce(idx << shifts, axis=1)
    return u.tolist(), longs.astype(">u8").tobytes()


def chunk_nbt(cx, cz, world, gpal, tiles_by_chunk, acx=None, acz=None):
    acx = cx if acx is None else acx; acz = cz if acz is None else acz
    secs = []
    for sy in range(24):
        blk = world[sy * 16:(sy + 1) * 16, cz * 16:(cz + 1) * 16, cx * 16:(cx + 1) * 16]
        ids, data = pack_section(blk)
        pal = []
        for gi in ids:
            n, p = gpal[gi]
            e = {"Name": n}
            if p:
                e["Properties"] = dict(p)
            pal.append(e)
        bs = {"palette": pal}
        if data is not None:
            bs["data"] = data
        secs.append({"Y": Byte(sy - 4), "block_states": bs, "biomes": {"palette": ["minecraft:plains"]}})
    tes = tiles_by_chunk.get((acx, acz), [])
    # a repeating command block only runs after a scheduled tick exists; a pasted/exported chunk has none, so every always-on command block
    # (doors, sorters, blimp, kit pads ...) would stay dormant until something re-places it. Save the tick the game itself would have saved.
    ticks = []
    for t in tes:
        if t.get("id") == "minecraft:command_block" and int(t.get("auto", 0)):
            lx, lz, ly = t["x"] - acx * 16, t["z"] - acz * 16, t["y"] - WORLD_Y0
            if 0 <= ly < world.shape[0]:
                nm = gpal[int(world[ly, cz * 16 + lz, cx * 16 + lx])][0]
                if nm == "minecraft:repeating_command_block":
                    ticks.append({"i": nm, "p": 0, "t": 1, "x": t["x"], "y": t["y"], "z": t["z"]})
    return {"DataVersion": DV, "xPos": acx, "zPos": acz, "yPos": -4, "Status": "minecraft:full", "LastUpdate": Long(0),
            "InhabitedTime": Long(0), "isLightOn": Byte(0), "sections": secs, "block_entities": tes,
            "structures": {"References": {}, "starts": {}}, "fluid_ticks": [], "block_ticks": ticks,
            "PostProcessing": [[] for _ in range(24)]}


def write_region(path, chunks):
    header = bytearray(8192)
    body = bytearray()
    sector = 2
    for (lx, lz), raw in sorted(chunks.items(), key=lambda kv: kv[0][1] * 32 + kv[0][0]):
        payload = zlib.compress(raw, 6)
        rec = struct.pack(">IB", len(payload) + 1, 2) + payload
        rec += b"\0" * ((-len(rec)) % 4096)
        cnt = len(rec) // 4096
        i = (lz & 31) * 32 + (lx & 31)
        header[i * 4:i * 4 + 4] = struct.pack(">I", (sector << 8) | cnt)
        header[4096 + i * 4:4096 + i * 4 + 4] = struct.pack(">I", int(time.time()))
        body += rec
        sector += cnt
    tmp = path + ".tmp"
    with open(tmp, "wb") as f:
        f.write(header); f.write(body)
    os.replace(tmp, path)


def export(master, outdir):
    t0 = time.time()
    world, gpal, tiles, ents = build_world_array(master)
    Z, X = world.shape[1], world.shape[2]
    tbc = {}
    for t in tiles:
        tbc.setdefault((t["x"] >> 4, t["z"] >> 4), []).append(t)
    ebc = {}
    for e in ents:
        ebc.setdefault((int(e["Pos"][0]) >> 4, int(e["Pos"][2]) >> 4), []).append(e)
    os.makedirs(os.path.join(outdir, "region"), exist_ok=True)
    os.makedirs(os.path.join(outdir, "entities"), exist_ok=True)
    regions = {}
    nch = 0
    for cx in range(X // 16):
        for cz in range(Z // 16):
            if not world[:, cz * 16:(cz + 1) * 16, cx * 16:(cx + 1) * 16].any():
                continue
            acx, acz = cx + OX // 16, cz + OZ // 16
            raw = nbt.dumps(chunk_nbt(cx, cz, world, gpal, tbc, acx, acz))
            regions.setdefault((acx >> 5, acz >> 5), {})[(acx & 31, acz & 31)] = raw
            nch += 1
    for (rx, rz), ch in regions.items():
        write_region(os.path.join(outdir, "region", f"r.{rx}.{rz}.mca"), ch)
    eregs = {}
    for (cx, cz), es in ebc.items():
        raw = nbt.dumps({"DataVersion": DV, "Position": IntArray([cx, cz]), "Entities": es})
        eregs.setdefault((cx >> 5, cz >> 5), {})[(cx & 31, cz & 31)] = raw
    for (rx, rz), ch in eregs.items():
        write_region(os.path.join(outdir, "entities", f"r.{rx}.{rz}.mca"), ch)
    info = dict(chunks=nch, region_files=len(regions), entity_files=len(eregs), tiles=len(tiles), entities=len(ents),
                palette=len(gpal), box=[X, 384, Z], origin=[OX, OZ], secs=round(time.time() - t0))
    json.dump(info, open(os.path.join(outdir, "export_info.json"), "w"))
    print("exported", info)
    return info


if __name__ == "__main__":
    export(sys.argv[1], sys.argv[2])
