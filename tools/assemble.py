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
    (r"Carrot.*Firework", "Carrot & Firework Crafters", "Wildezz", "Wildezz", True),
    (r"Stone_Factory", "The Stone Factory", "Wildezz", "Wildezz", True),
    (r"Full_Dam", "Full Dam", "Wildezz", "Wildezz", True),
    (r"Ghast_Hydration", "Ghast Hydration Facility", "Wildezz", "Wildezz", True),
    (r"CLM_Large", "CLM Large", "Wildezz", "Wildezz", True),
    (r"Gemini-TNT", "Gemini TNT Storage v1.4.1/v1.2.2", "hykn55", "Storage Tech", False),
    (r"Brewer_Chunkloading", "Brewer Chunkloading + Storage", "Nyx_9841", "Storage Tech", False),
    (r"Chronostasis", "Chronostasis Station", "Nyx_9841", "Storage Tech", False),
]
GAP = 10
X0, Z0, ROW_W = 800, 10, 1100


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
    # shelf packing east of the wall
    order = sorted(preps, key=lambda p: -p["size"][2])
    x = z = 0; rowd = 0; placements = []
    for p in order:
        w, h, dd = p["size"]
        if x + w > ROW_W and x > 0:
            z += rowd + GAP; x = 0; rowd = 0
        placements.append((p, X0 + x, Z0 + z)); x += w + GAP; rowd = max(rowd, dd)
    ext_x = max(px + p["size"][0] for p, px, pz in placements) + 20
    ext_z = max(pz + p["size"][2] for p, px, pz in placements) + 20
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
    for (p, px, pz) in placements:
        py = L.GY
        name = f"Annex - {p['label']} ({p['author']})"
        regions[name] = annex.pack_region(p, (px, py, pz))
        total += int(np.count_nonzero(p["arr"]))
        info.append(dict(name=p["label"], file=p["file"], author=p["author"], community=p["community"], purple=p["purple"],
                         x=px, y=py, z=pz, size=p["size"], dv=p["dv"], tiles=len(p["tiles"]), ents=len(p["ents"]), warn=p["warn"]))
    annex.write_litematic(master, regions, "RIFTBREK Vanguard Headquarters - MASTER (+ annex quarter)",
                          "RIFTBREK Design; annex builds by Wildezz, Storage Tech community (hykn55, Nyx_9841, SandCaribou1890, Pando_UwU, Kvil), Airlander 10 by Krodo",
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
