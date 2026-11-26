import sys, os, json
import numpy as np
sys.path.insert(0, os.path.dirname(__file__))
from PIL import Image, ImageDraw, ImageFont
import validate, preview
from make_maps import topimg, label, grid, F
pand, rcity, pinfo, rinfo, out = sys.argv[1:6]
GY = 96
def render(lit, name, labels, title, extra=None, H=300):
    d, r, pal, a = validate.load_litematic(lit)
    img, hh = topimg(a, pal, H=H)
    sc = 2
    im = Image.fromarray(img).resize((768 * sc, 768 * sc), Image.NEAREST).convert("RGBA")
    ov = Image.new("RGBA", im.size, (0, 0, 0, 0)); dd = ImageDraw.Draw(ov)
    return im, ov, dd, sc
im, ov, dd, sc = render(pand, "pandora", None, None)
pi = json.load(open(pinfo))
grid(dd, 768, 768, 64, 10240, 8192, sc)
for t, x, z in (("HOMETREE\n10624 32 8576", 384, 384), ("TREE OF SOULS + Eywa pool\n10810 32 8442", 570, 250), ("NA'VI VILLAGE (26 huts)", 384, 560), ("HALLELUJAH MOUNTAINS\n(floating, y 126..226)", 200, 160), ("RIVER", 120, 610)):
    label(dd, x * sc, z * sc, t, 15, fill=(160, 255, 255), bg=(10, 30, 50))
for (x, y, z, nm) in pi["pads"]:
    dd.ellipse([x * sc - 8, z * sc - 8, x * sc + 8, z * sc + 8], fill=(80, 255, 255, 230), outline=(255, 255, 255))
    label(dd, x * sc, z * sc - 22, "%s pad\n%d %d %d" % (nm, 10240 + x, y - 64, 8192 + z), 12, fill=(255, 255, 160), bg=(10, 30, 50))
label(dd, 384 * sc, 26, "PANDORA - 768 x 768 - origin X 10240 Z 8192 - stand on a glowing BOND PAD to become Na'vi", 22, fill=(160, 255, 255), bg=(10, 30, 50))
Image.alpha_composite(im, ov).convert("RGB").save(os.path.join(out, "MAP_PANDORA.png"))
im, ov, dd, sc = render(rcity, "rcity", None, None)
ri = json.load(open(rinfo))
grid(dd, 768, 768, 64, 11264, 8192, sc)
for t, x, z in (("REDSTONE PLAZA\nCORE TOWER 125 high + hopper clock", 384, 384), ("REDSTONE HAVEN", 70, 70), ("REDSTONE CENTER", 270, 70), ("FURNACE ARRAY yard", 454, 70), ("FARM YARD", 582, 70), ("STORAGE VAULT yard", 710, 70),
                ("EXPRESS LINE (minecart, station at X 11284)", 384, 646)):
    label(dd, x * sc, z * sc, t, 15, fill=(255, 220, 160), bg=(40, 10, 10))
label(dd, 384 * sc, 26, "THE REDSTONE CITY - 768 x 768 - origin X 11264 Z 8192 - every block a working redstone build", 22, fill=(255, 200, 160), bg=(40, 10, 10))
Image.alpha_composite(im, ov).convert("RGB").save(os.path.join(out, "MAP_REDSTONE_CITY.png"))
print("ok")
