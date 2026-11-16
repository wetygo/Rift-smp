"""Paste helper kit: zone plan (<=16x16 chunks each) + per-zone forceload / teleport / probe-check functions for the data pack.
Run AFTER the data pack is generated:  paste_kit.py <master.litematic> <datapack_dir>"""
import sys, os, json, re
import numpy as np
sys.path.insert(0, os.path.dirname(__file__))
import export_world as ex
from riftbrek import layout as L

ZONE = 16                    # chunks per zone edge (256 blocks, 256 chunks = the /forceload limit per command)
SKIP = re.compile(r"(water|lava|farmland|wheat|carrots|potatoes|beetroots|sapling|leaves|fire|light|snow|bubble|cave_vines|vine|grass$|short_grass|tall_grass)")
GROUND_Y = L.GROUND_TOP      # local y of the ground layer
FILL_Y = 20


def nonempty_chunks(world):
    X, Z = world.shape[2] // 16, world.shape[1] // 16
    occ = world.reshape(384, Z, 16, X, 16).any(axis=(0, 2, 4))      # (Z, X)
    return occ


def probes_for_chunk(world, gpal, cx, cz):
    """3 distinctive probes (local x, local y, local z, block name) for one chunk"""
    x0, z0 = cx * 16, cz * 16
    out = []
    def name(x, y, z):
        return gpal[int(world[y, z, x])][0]
    cand = []
    # ground + deep fill at the chunk centre, then the highest structure block above the ground
    for (lx, lz) in ((8, 8), (4, 4), (11, 11), (4, 11), (11, 4)):
        n = name(x0 + lx, GROUND_Y, z0 + lz)
        if n != "minecraft:air" and not SKIP.search(n):
            cand.append((x0 + lx, GROUND_Y, z0 + lz, n)); break
    for (lx, lz) in ((8, 8), (4, 4), (11, 11)):
        n = name(x0 + lx, FILL_Y, z0 + lz)
        if n != "minecraft:air" and not SKIP.search(n):
            cand.append((x0 + lx, FILL_Y, z0 + lz, n)); break
    col = world[GROUND_Y + 1:, z0:z0 + 16, x0:x0 + 16]
    nz = np.argwhere(col != 0)
    if len(nz):
        order = nz[np.argsort(-nz[:, 0])]
        for (yy, zz, xx) in order[:60]:
            n = gpal[int(col[yy, zz, xx])][0]
            if not SKIP.search(n) and "air" not in n:
                cand.append((x0 + int(xx), GROUND_Y + 1 + int(yy), z0 + int(zz), n)); break
    return cand


def plan(world):
    occ = nonempty_chunks(world)
    Zc, Xc = occ.shape
    zones, n = [], 0
    for zj in range(0, Zc, ZONE):
        for zi in range(0, Xc, ZONE):
            sub = occ[zj:zj + ZONE, zi:zi + ZONE]
            if sub.any():
                n += 1
                zones.append(dict(n=n, cx0=zi, cz0=zj, cx1=min(zi + ZONE, Xc) - 1, cz1=min(zj + ZONE, Zc) - 1,
                                  chunks=[(zi + i, zj + j) for j in range(sub.shape[0]) for i in range(sub.shape[1]) if sub[j, i]]))
    return zones


def write_functions(world, gpal, zones, dp):
    base = os.path.join(dp, "data", "riftbrek", "function", "paste")
    os.makedirs(base, exist_ok=True)
    meta = []
    for z in zones:
        x0, z0, x1, z1 = z["cx0"] * 16, z["cz0"] * 16, z["cx1"] * 16 + 15, z["cz1"] * 16 + 15
        cx, cz = (x0 + x1) // 2, (z0 + z1) // 2
        n = z["n"]
        lines_on = [f"# zone {n}: chunks x {z['cx0']}..{z['cx1']}, z {z['cz0']}..{z['cz1']}  (blocks {x0}..{x1}, {z0}..{z1})",
                    "# macro: x,z = schematic origin (admin/origin)", f"$execute positioned $(x) 0 $(z) run forceload add ~{x0} ~{z0} ~{x1} ~{z1}"]
        open(os.path.join(base, f"zone_{n}_on.mcfunction"), "w").write("\n".join(lines_on) + "\n")
        open(os.path.join(base, f"zone_{n}_off.mcfunction"), "w").write("\n".join(lines_on[:2] + [f"$execute positioned $(x) 0 $(z) run forceload remove ~{x0} ~{z0} ~{x1} ~{z1}"]) + "\n")
        open(os.path.join(base, f"zone_{n}_tp.mcfunction"), "w").write(
            f"# macro: x,z = origin. Teleports YOU (as the executor) above the middle of zone {n} so its chunks are loaded around you.\n"
            f"$execute positioned $(x) 0 $(z) run tp @s ~{cx} 150 ~{cz}\n")
        chk = [f"# zone {n} paste check: 3 probes per chunk, compares the block at fixed positions with the schematic",
               "# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.",
               "scoreboard players set #OK rb_p 0", "scoreboard players set #TOT rb_p 0",
               "data modify storage riftbrek:paste miss set value []"]
        nprobe = 0
        for (ccx, ccz) in z["chunks"]:
            pr = probes_for_chunk(world, gpal, ccx, ccz)
            if not pr:
                continue
            chk.append("scoreboard players set #c rb_p 0")
            for (px, py, pz, name) in pr:
                chk.append(f"$execute positioned $(x) {py + L.WORLD_Y0} $(z) if block ~{px} ~ ~{pz} {name} run scoreboard players add #c rb_p 1")
                nprobe += 1
            chk.append("scoreboard players add #TOT rb_p 1")
            chk.append(f"execute if score #c rb_p matches {len(pr)} run scoreboard players add #OK rb_p 1")
            chk.append(f'execute unless score #c rb_p matches {len(pr)} run data modify storage riftbrek:paste miss append value {{c:"{ccx},{ccz}"}}')
        chk.append(f'tellraw @s [{{"text":"[PASTE zone {n}] chunks OK: ","color":"light_purple"}},{{"score":{{"name":"#OK","objective":"rb_p"}},"color":"white"}},{{"text":" / "}},{{"score":{{"name":"#TOT","objective":"rb_p"}},"color":"white"}}]')
        chk.append('execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]')
        chk.append(f'execute if score #OK rb_p = #TOT rb_p run tellraw @s {{"text":"  zone {n} COMPLETE","color":"green"}}')
        chk.append(f"execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z{n} rb_p 1")
        open(os.path.join(base, f"zone_{n}_check.mcfunction"), "w").write("\n".join(chk) + "\n")
        meta.append(dict(n=n, blocks=[x0, z0, x1, z1], center=[cx, cz], chunks=len(z["chunks"]), probes=nprobe))
    zl = ["# macro: x,z = origin.  Prints the zone table (zone number, chunk count). Use zone_N_tp / _on / _check / _off."]
    st = ['tellraw @s {"text":"=== RIFTBREK paste status (1 = zone verified COMPLETE) ===","color":"light_purple"}']
    for m in meta:
        st.append(f'tellraw @s [{{"text":"zone {m["n"]:>2} ({m["chunks"]} chunks): ","color":"gray"}},{{"score":{{"name":"#Z{m["n"]}","objective":"rb_p"}},"color":"white"}}]')
    open(os.path.join(base, "status.mcfunction"), "w").write("\n".join(st) + "\n")
    ini = ["scoreboard objectives add rb_p dummy"] + [f"scoreboard players set #Z{m['n']} rb_p 0" for m in meta]
    open(os.path.join(base, "init.mcfunction"), "w").write("# run once: /function riftbrek:paste/init\n" + "\n".join(ini) + "\n")
    json.dump(meta, open(os.path.join(os.path.dirname(dp), "paste_zones.json"), "w"), indent=1)
    return meta


if __name__ == "__main__":
    master, dp = sys.argv[1], sys.argv[2]
    world, gpal, tiles, ents = ex.build_world_array(master)
    zones = plan(world)
    meta = write_functions(world, gpal, zones, dp)
    print(f"{len(meta)} zones, {sum(m['chunks'] for m in meta)} chunks, {sum(m['probes'] for m in meta)} probes")
