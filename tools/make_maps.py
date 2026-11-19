"""Detailed labelled maps of Ithaca City and the enlarged RIFTBREK HQ (top views painted from the real build + coordinate grid + labels)."""
import sys, os, json
import numpy as np
sys.path.insert(0, os.path.dirname(__file__))
from PIL import Image, ImageDraw, ImageFont
import preview
out = sys.argv[1]
os.makedirs(out, exist_ok=True)
F = lambda s: ImageFont.truetype("/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf", s)
GY = 96


def topimg(a, pal, H=140):
    lut = np.array([preview.colour(p[0]) for p in pal] + [(0, 0, 0)], dtype=np.uint8)
    sub = a[GY - 1:GY - 1 + H] if a.shape[0] >= 300 else a
    H = sub.shape[0]
    nz = sub != 0
    hh = np.where(nz.any(axis=0), H - np.argmax(nz[::-1], axis=0), 0)
    zi, xi = np.indices(hh.shape)
    blk = sub[np.clip(hh - 1, 0, H - 1), zi, xi]
    c = lut[blk].astype(np.float32) * (0.6 + 0.4 * np.clip(hh / 50.0, 0, 1))[..., None]
    return np.clip(c, 0, 255).astype(np.uint8), hh


def label(d, x, y, text, size=16, fill=(255, 255, 255), bg=(20, 10, 40)):
    f = F(size)
    lines = text.split("\n")
    w = max(d.textlength(t, font=f) for t in lines) + 8; h = (size + 3) * len(lines) + 4
    d.rectangle([x - w / 2, y - h / 2, x + w / 2, y + h / 2], fill=bg + (215,), outline=(170, 110, 255))
    for i, t in enumerate(lines):
        d.text((x - w / 2 + 4, y - h / 2 + 2 + i * (size + 3)), t, font=f, fill=fill)


def grid(d, W, H, step, ox, oz, sc):
    f = F(13)
    for x in range(0, W, step):
        d.line([x * sc, 0, x * sc, H * sc], fill=(255, 255, 255, 40), width=1)
        d.text((x * sc + 3, 2), str(ox + x), font=f, fill=(255, 255, 160))
    for z in range(0, H, step):
        d.line([0, z * sc, W * sc, z * sc], fill=(255, 255, 255, 40), width=1)
        d.text((2, z * sc + 3), str(oz + z), font=f, fill=(255, 255, 160))


# ------------------------------------------------------------------ Ithaca
def ithaca():
    from riftbrek import build_ithaca as I
    from riftbrek.build_wings import WINGS
    W = I.build_world()
    img, _ = topimg(W.a, W.palette)
    sc = 2
    im = Image.fromarray(img).resize((768 * sc, 768 * sc), Image.NEAREST).convert("RGBA")
    ov = Image.new("RGBA", im.size, (0, 0, 0, 0)); d = ImageDraw.Draw(ov)
    grid(d, 768, 768, 64, 12288, 8192, sc)
    cx = cz = 384
    for r, nm in ((24, "monument"), (150, "inner wall (royal district)"), (212, "market ring"), (300, "district ring"), (328, "outer curtain wall")):
        d.ellipse([(cx - r) * sc, (cz - r) * sc, (cx + r) * sc, (cz + r) * sc], outline=(255, 220, 90, 150), width=2)
    pts = [("CENTRAL MONUMENT\n12672 32 8576", 384, 384), ("ROYAL PALACE\nthrone hall 12672 32 8482", 384, 300), ("CAPITOL\n12672 32 8628", 384, 440),
           ("SECURITY CONTROL\n12718 32 8628", 440, 466), ("SOUTH GATE (spawn)\n12672 32 8917", 384, 735), ("GRAND LIBRARY\n12919 32 8510", 631, 318),
           ("BARRACKS + ARENAS\n12539 32 8780", 251, 588), ("INDUSTRIAL / REDSTONE HAVEN\n12413 32 8534", 125, 342), ("CENTRAL MARKET (east)\n12862 32 8576", 574, 384),
           ("SORTER HALLS (B5/B6)\nunderground x88..150 z318..370", 119, 232), ("WIND LAUNCHER\n12928 32 8622", 640, 430), ("ROYAL VAULT (B)\n12682 -6 8454", 394, 262),
           ("HARBOUR + RIVER", 470, 640)]
    for k, v in WINGS.items():
        if k.startswith("ith_"):
            x0, z0, x1, z1 = v[0], v[1], v[2], v[3]
            d.rectangle([x0 * sc, z0 * sc, x1 * sc, z1 * sc], outline=(120, 255, 255, 230), width=2)
    for nm, key in (("Birds HQ", "birds"), ("Unstables HQ", "unstables"), ("Abstracters HQ", "abstracters"), ("Veil HQ", "veil"), ("Archivist HQ", "archivist"), ("Wildcards HQ", "wildcards")):
        v = WINGS.get("ith_" + key)
        if v:
            pts.append((f"{nm}\n{12288 + (v[0] + v[2]) // 2} 32 {8192 + (v[1] + v[3]) // 2}", (v[0] + v[2]) // 2, (v[1] + v[3]) // 2))
    v = WINGS.get("ith_hub")
    if v: pts.append((f"TRANSIT HUB\n{12288 + (v[0] + v[2]) // 2} 32 {8192 + (v[1] + v[3]) // 2}", (v[0] + v[2]) // 2, (v[1] + v[3]) // 2))
    for t, x, z in pts:
        label(d, x * sc, z * sc, t, 15)
    for gx, gz, t in ((384, 56, "NORTH GATE"), (384, 712, "SOUTH GATE"), (56, 384, "WEST GATE"), (712, 384, "EAST GATE")):
        label(d, gx * sc, gz * sc, t, 14, fill=(255, 230, 120))
    label(d, 384 * sc, 20, "ITHACA CITY - 768 x 768 - origin X 12288 Z 8192 - circular, layered, walled", 24)
    Image.alpha_composite(im, ov).convert("RGB").save(os.path.join(out, "MAP_ITHACA_CITY.png"))
    return {k: v for k, v in WINGS.items() if k.startswith("ith_")}


# ------------------------------------------------------------------ HQ
def hq(core, ward, ward_info):
    import validate, export_sparse as es
    from riftbrek.build_wings import WINGS
    sc = 1
    TW, TH = 2304, 1536
    top = np.zeros((TH, TW, 3), dtype=np.uint8); top[:] = (30, 70, 40)
    for (name, pal, a, px, py, pz, tiles) in es.load(core, 0):
        img, hh = topimg(a, pal); m = hh > 0
        ox, oz = px + 384, pz + 384
        h, w = hh.shape
        t = top[oz:oz + h, ox:ox + w]; t[m] = img[m]; del a
    for (name, pal, a, px, py, pz, tiles) in es.load(ward, 0):
        img, hh = topimg(a, pal); m = hh > 0
        h, w = hh.shape
        t = top[pz:pz + h, px:px + w]; t[m] = img[m]; del a
    im = Image.fromarray(top).convert("RGBA")
    ov = Image.new("RGBA", im.size, (0, 0, 0, 0)); d = ImageDraw.Draw(ov)
    grid(d, TW, TH, 128, 7808, 7808, 1)
    O = 384
    names = {"archivist": "THE ARCHIVIST\nGrand Archive (5 floors)", "unstables": "THE UNSTABLES\nExperimental (4 fl)", "veil": "VEIL\nCovert wing (3 fl)", "abstracters": "ABSTRACTERS\nCombat wing (4 fl)",
             "wildcards": "WILDCARDS\nEngineering (3 fl)", "nexus": "STORAGE NEXUS\nAuto Storage (6 floors)\n+ Redstone Haven"}
    for k, v in WINGS.items():
        if k in names:
            d.rectangle([(v[0] + O), (v[1] + O), (v[2] + O), (v[3] + O)], outline=(120, 255, 255, 230), width=3)
            label(d, (v[0] + v[2]) // 2 + O, (v[1] + v[3]) // 2 + O, names[k] + f"\n{8192 + v[0]}..{8192 + v[2]} / {8192 + v[1]}..{8192 + v[3]}", 14)
    pts = [("ROYAL CITADEL (Biggest Birds)\nthrone room 8575 144 8442", 383, 265), ("CENTRAL PLAZA\nassembly / trade / events", 383, 480), ("SECURITY & CHECKPOINT\nmain gate 8575 32 8956", 383, 740),
           ("SECURITY CONTROL ROOM\nlockdown lamps 8641 33 8864", 440, 670), ("BLIMP TERMINAL (dock A)\nlane x 8442, docks aerial y 276", 250, 110), ("BLIMP DOCK B (plaza)", 250, 480), ("BLIMP DOCK C (checkpoint)", 250, 700),
           ("WIND LAUNCHERS x4\n8772 32 8292 (+26 each)", 632, 100), ("SORTER A (B5)\ncontroller 8752 -4 8664", 560, 470), ("CHICKEN CHAMBERS", 440, 150)]
    for t, x, z in pts:
        label(d, x + O, z + O, t, 14, fill=(255, 235, 150))
    d.rectangle([O, O, O + 767, O + 767], outline=(255, 120, 255, 255), width=4)
    label(d, O + 384, O - 14, "ORIGINAL HQ 768 x 768  (origin X 8192 Z 8192)", 18, fill=(255, 150, 255))
    label(d, O + 1500, O + 384, "ANNEX PLATEAU (Wildezz / Storage Tech builds)\nX 8960..10111  -  see docs/ANNEX_MAP.md", 22, fill=(255, 235, 150))
    # annex builds
    for line in open(os.path.join(os.path.dirname(__file__), "..", "docs", "ANNEX_MAP.md")):
        if line.startswith("| ") and "local x,y,z" not in line and not line.startswith("| ---") and not line.startswith("| build"):
            c = [s.strip() for s in line.strip().strip("|").split("|")]
            if len(c) >= 6 and c[3].count(",") == 2:
                x, y, z = [int(s) for s in c[3].split(",")]
                sx, sy, sz = [int(s) for s in c[4].replace(" ", "").split("x")]
                d.rectangle([x + O, z + O, x + sx + O, z + sz + O], outline=(255, 200, 80, 200), width=1)
                if sx >= 70 and sz >= 70:
                    label(d, x + O + sx // 2, z + O + sz // 2, c[0][:30], 12)
    # ward buildings
    for (strip, lab, kind, x0, z0, x1, z1, fl) in ward_info["buildings"]:
        pz = {"N": 0, "S": 1152, "W": 384}[strip]
        d.rectangle([x0, pz + z0, x1, pz + z1], outline=(120, 255, 255, 200), width=2)
        if (x1 - x0) >= 120:
            label(d, (x0 + x1) // 2, pz + (z0 + z1) // 2, f"{lab[:26]}\n{fl} floors", 12)
    label(d, 1152, 22, "RIFTBREK VANGUARD HQ - ENLARGED 2304 x 1536 - X 7808..10111, Z 7808..9343 - NORTH WARD", 26, fill=(255, 150, 255))
    label(d, 1152, 1514, "SOUTH WARD", 22, fill=(255, 150, 255)); label(d, 190, 790, "WEST\nWARD", 22, fill=(255, 150, 255))
    Image.alpha_composite(im, ov).convert("RGB").save(os.path.join(out, "MAP_RIFTBREK_HQ.png"))


if __name__ == "__main__":
    which = sys.argv[2]
    if which in ("ith", "both"):
        ithaca()
    if which in ("hq", "both"):
        hq(sys.argv[3], sys.argv[4], json.load(open(sys.argv[5])))
