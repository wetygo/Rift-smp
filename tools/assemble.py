"""Add every imported build (Wildezz, Storage-Tech, Wave Bolt ...) as extra regions of the MASTER .litematic, east of the HQ wall,
on a grass plateau.  Usage: assemble.py <master.litematic> <src_dir_with_all_inputs> [--report out.json]"""
import sys, os, re, glob, json, gzip, time
import numpy as np
sys.path.insert(0, os.path.dirname(__file__))
from riftbrek import nbt, layout as L
from riftbrek.nbt import Long
import annex

# (filename regex, label, original author(s), source community, purple?)
RULES = [
    (r"Basic_Furnace_Array", "Basic Furnace Array", "Wildezz", "Wildezz", True),
    (r"1728.Furnace.Array|2D.*Furnace", "2D 1728 Furnace Array", "Wildezz", "Wildezz", True),
    (r"Carrot.*Firework", "Carrot & Firework Crafters", "Wildezz", "Wildezz", True),
    (r"Stone.?Factory", "The Stone Factory", "Wildezz", "Wildezz", True),
    (r"Ghast.?Hydration", "Ghast Hydration Facility", "Wildezz", "Wildezz", True),
    (r"Wildez.*Main.?Storage|Wildezz.*Main.?Storage", "Wildez Main Storage", "Wildezz", "Wildezz", True),
    (r"Mob.?Switch.?Spire.*Overworld", "Mob Switch Spire (Overworld)", "Wildezz", "Wildezz", True),
    (r"Mob.?Switch.?Spire.*Nether", "Mob Switch Spire (Nether)", "Wildezz", "Wildezz", True),
    (r"Mob.?Switch.?Spire.*End", "Mob Switch Spire (End)", "Wildezz", "Wildezz", True),
    (r"72k.*v2|.*yanjiang.*|magma.?machine", "72k Magma/Gold Farm v2", "Wildezz", "Wildezz", True),
    (r"Sipover.*Tank", "Sipover Competition Tank N-S", "Wildezz", "Wildezz", True),
    (r"Gemini-TNT", "Gemini TNT Storage v1.4.1/v1.2.2", "hykn55", "Storage Tech", False),
    (r"Brewer.*Chunkloading", "Brewer Chunkloading + Storage", "Nyx_9841", "Storage Tech", False),
    (r"Chronostasis", "Chronostasis Station", "Nyx_9841", "Storage Tech", False),
]
GAP = 10
X0, Z0, ROW_W = 800, 16, 1100


def find_sources(srcdir):
    items = []
    for f in sorted(glob.glob(os.path.join(srcdir, "**", "*.litematic"), recursive=True)):
        base = os.path.basename(f)
        if "__MACOSX" in f or base.startswith("._"):
            continue
        hit = None
        for rx, label, author, community, purple in RULES:
            if re.search(rx, base):
                hit = (label, author, community, purple); break
        if hit is None and "v1.0" in f.replace("\\", "/") and "Wave" not in base and ("Bolt" in f or "Hexit" in f or "Curver" in f or "Placer" in f or "Pusher" in f or "Puller" in f or "Splitter" in f or "Corner" in f or "Straight" in f or "Intersection" in f or "Diagonal" in f):
            hit = ("Wave Bolt - " + base.replace(".litematic", ""), "SandCaribou1890 / Pando_UwU / Kvil", "Wave Bolt (Storage Tech)", False)
        if hit:
            items.append((f,) + hit)
    return items


def main(master, srcdir, report=None):
    t0 = time.time()
    d = nbt.loads(gzip.open(master).read())
    hq_name, hq_region = next(iter(d["Regions"].items()))
    if isinstance(hq_region["BlockStates"], tuple):
        hq_region["BlockStates"] = hq_region["BlockStates"][2]
    if len(d["Regions"]) > 1:                       # re-run safe: keep only HQ
        d["Regions"] = {hq_name: hq_region}
    items = find_sources(srcdir)
    preps = []
    for (f, label, author, community, purple) in items:
        p = annex.prepare(f, theme=purple, recolor_switches=purple)
        p["label"], p["author"], p["community"], p["purple"], p["file"] = label, author, community, purple, os.path.basename(f)
        preps.append(p)
        print(f"  {label}: {p['size']} dv {p['dv']} tiles {p['tiles_in']}->{len(p['tiles'])} ents {len(p['ents'])} warn {p['warn']}", flush=True)
    # the straight Wave Bolt pieces are re-used to build the BOLT LINE through the whole building (see below)
    # shelf packing east of the wall
    order = sorted(preps, key=lambda p: -p["size"][2])
    x = z = 0; rowd = 0; placements = []; rows_done = 0
    for p in order:
        w, h, dd = p["size"]
        if x + w > ROW_W and x > 0:
            z += rowd + GAP; x = 0; rowd = 0; rows_done += 1
        placements.append((p, X0 + x, Z0 + z)); x += w + GAP; rowd = max(rowd, dd)
    ext_x = max(max(px + p["size"][0] for p, px, pz in placements) + 20, 1920)
    ext_z = max(max(pz + p["size"][2] for p, px, pz in placements) + 14, 768)
    regions = dict(d["Regions"])
    info = []
    total = int(d["Metadata"]["TotalBlocks"])
    # plateau under the annex quarter (grass over stone) so the builds do not float
    pw, pd = ext_x - 768, ext_z
    plate = np.full((96, pd, pw), 0, np.uint16)
    pal = [("minecraft:air", {}), ("minecraft:deepslate", {}), ("minecraft:stone", {}), ("minecraft:grass_block", {"snowy": "false"})]
    plate[:90] = 1; plate[90:95] = 2; plate[95] = 3
    plate_prep = dict(arr=plate, pal=pal, tiles=[], ents=[], size=(pw, 96, pd))
    regions["Annex Plateau"] = annex.pack_region(plate_prep, (768, 0, 0))
    total += int(np.count_nonzero(plate))
    # --- REDSTONE MEGA BUILDING: roof + walls over the whole plateau (before the builds, so they overwrite the light grid) --------------------------
    from riftbrek import build_mega as M
    shell_w = M.shell(pw, pd)
    regions["Mega Shell"] = annex.pack_region(dict(arr=shell_w.a, pal=shell_w.palette, size=(pw, shell_w.sy, pd), tiles=shell_w.tiles, ents=[]), (768, 0, 0))
    total += int(np.count_nonzero(shell_w.a)); del shell_w
    for (p, px, pz) in placements:
        py = L.GY
        name = f"Annex - {p['label']} ({p['author']})"
        regions[name] = annex.pack_region(p, (px, py, pz))
        total += int(np.count_nonzero(p["arr"]))
        info.append(dict(name=p["label"], file=p["file"], author=p["author"], community=p["community"], purple=p["purple"],
                         x=px, y=py, z=pz, size=p["size"], dv=p["dv"], tiles=len(p["tiles"]), ents=len(p["ents"]), warn=p["warn"]))
    # --- the BOLT LINE: a working minecart line on a lit deck at local y 244 (world y 180), z 28..48, from the west ward over the whole HQ and through
    #     the Redstone Mega Building (this part: x 0..1887; the part west of the HQ is added to the ward by build_ward.py). See build_mega.bolt_rails.
    VY, LZA = 244, 28
    from riftbrek import build_mega as M0
    deck = M0.World(1888, 4, 23)
    deck.fill(0, 0, 0, 1887, 0, 22, "minecraft:polished_blackstone_bricks")
    for xx in range(4, 1888, 8):
        deck.set(xx, 0, 0, "minecraft:sea_lantern"); deck.set(xx, 0, 22, "minecraft:sea_lantern")
    M0.bolt_rails(deck, 0, 1887, 0, 6, 17, station_west=False, loop_east=True)
    regions["Bolt Line Deck"] = annex.pack_region(dict(arr=deck.a, pal=deck.palette, size=(1888, 4, 23), tiles=deck.tiles, ents=[]), (0, VY - 1, LZA - 2))
    total += int(np.count_nonzero(deck.a))
    lanes = [dict(rail_z=[LZA + 4, LZA + 15], x0=0, x1=1887, y=VY)]
    print("  bolt line (HQ + mega part)", lanes, flush=True)
    # --- my own halls in free rectangles of the plateau ---------------------------------------------------------------------------------------------
    occ = np.zeros((pd, pw), dtype=bool)
    for (p, px, pz) in placements:
        w, h, dd = p["size"]
        occ[max(pz - 10, 0):pz + dd + 10, max(px - 768 - 10, 0):px - 768 + w + 10] = True
    occ[:16, :] = True; occ[-16:, :] = True; occ[:, -16:] = True
    mega = dict(halls={}, tests=[])
    for (nm, hw, hd, fn) in M.HALLS:
        pos = M.free_rect(occ, hw, hd)
        assert pos, "no free rectangle for " + nm
        hx, hz = pos
        occ[hz - 4:hz + hd + 4, hx - 4:hx + hw + 4] = True
        W = M.World(hw, L.GY + 14, hd)
        M.ground(W); M.MEGA_TESTS.clear()
        fn(W, 2, 2)
        regions["Mega Hall - " + nm] = annex.pack_region(dict(arr=W.a, pal=W.palette, size=(hw, L.GY + 14, hd), tiles=W.tiles, ents=[]), (768 + hx, 0, hz))
        total += int(np.count_nonzero(W.a))
        mega["halls"][nm] = dict(x=768 + hx, z=hz, w=hw, d=hd)
        for t in M.MEGA_TESTS:
            mega["tests"].append(dict(hall=nm, off=[768 + hx, 0, hz], **t))
        print("  hall", nm, "at HQ-local", 768 + hx, hz, flush=True)
    # --- FARMS EVERYWHERE ELSE: strips of observer+piston melon / pumpkin units fill every free rectangle of the plateau -----------------------
    nfarm = 0; k = 0
    for zr in range(18, pd - 24, 8):
        free = ~occ[zr:zr + 8].any(axis=0)
        x = 0
        while x < pw:
            if not free[x]:
                x += 1; continue
            x2 = x
            while x2 < pw and free[x2]:
                x2 += 1
            run = x2 - x
            if run >= 28 and nfarm < 4000:
                n = (run - 4) // 6; w = n * 6 + 4
                stem = "melon_stem" if (zr // 8) % 2 == 0 else "pumpkin_stem"
                W = M.World(w, L.GY + 14, 8)
                M.ground(W)
                for u in range(n):
                    M.farm_unit(W, 4 + 6 * u, 2, stem, u)
                regions[f"Mega Farms {k}"] = annex.pack_region(dict(arr=W.a, pal=W.palette, size=(w, L.GY + 14, 8), tiles=W.tiles, ents=[]), (768 + x + 2, 0, zr))
                total += int(np.count_nonzero(W.a))
                occ[zr:zr + 8, x:x + w + 4] = True
                nfarm += n; k += 1
            x = x2
    mega["farm_units"] = nfarm; mega["farm_strips"] = k
    print("  farm strips", k, "units", nfarm, flush=True)
    mega["lanes"] = lanes
    json.dump(mega, open(os.path.join(os.path.dirname(os.path.abspath(master)), "..", "docs", "mega_info.json"), "w"), indent=1, default=list)
    annex.write_litematic(master, regions, "RIFTBREK Vanguard Headquarters - MASTER (+ annex quarter)",
                          "RIFTBREK Design; annex builds by Wildezz, Storage Tech community (hykn55, Nyx_9841, SandCaribou1890, Pando_UwU, Kvil)",
                          "768x384x768 HQ + east annex quarter with imported farms/storage/chunk-loading/Wave-Bolt builds on a grass plateau. Untested in-game.",
                          total=total)
    if report:
        json.dump(info, open(report, "w"), indent=1, default=str)
    print(f"assembled {len(placements)} annex builds, {len(regions)} regions, quarter {pw}x{pd}, {time.time()-t0:.0f}s")
    return info


if __name__ == "__main__":
    rep = None
    if "--report" in sys.argv:
        rep = sys.argv[sys.argv.index("--report") + 1]
    main(sys.argv[1], sys.argv[2], rep)
