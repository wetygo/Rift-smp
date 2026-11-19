import sys, os, json
import numpy as np
sys.path.insert(0, os.path.dirname(__file__))
import export_sparse as es
from PIL import Image, ImageDraw, ImageFont
core, ward, out = sys.argv[1:4]
Y0 = 88
img = np.zeros((1536, 2304, 3), dtype=np.uint8); img[:] = (18, 20, 30)
def paint(a, pal, px, pz, col):
    names = [p[0] for p in pal]
    air = names.index("minecraft:air")
    m = (a[Y0 + 1] == air) & (a[Y0 + 2] == air) & (a[Y0] != air)
    h, w = m.shape
    t = img[pz:pz + h, px:px + w]; t[m] = col
for (name, pal, a, px, py, pz, tiles) in es.load(core, 0):
    if px == 0 and pz == 0 and a.shape[0] >= 300:
        paint(a, pal, 384, 384, (120, 200, 255)); del a
    else: del a
for (name, pal, a, px, py, pz, tiles) in es.load(ward, 0):
    paint(a, pal, px, pz, (255, 200, 90)); del a
im = Image.fromarray(img); d = ImageDraw.Draw(im)
F = lambda s: ImageFont.truetype("/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf", s)
d.rectangle([384, 384, 1151, 1151], outline=(255, 120, 255), width=3)
info = json.load(open(os.path.join(os.path.dirname(__file__), "..", "docs", "ward_info.json")))
for k, v in info["under"].items():
    for (x, z) in v["hatches"]:
        pz = {"N": 0, "S": 1152, "W": 384}[k]
        d.ellipse([x - 5, pz + z - 5, x + 5, pz + z + 5], fill=(80, 255, 120))
    for (x, y, z) in v["gates"]:
        pz = {"N": 0, "S": 1152, "W": 384}[k]
        d.rectangle([x - 4, pz + z - 6, x + 9, pz + z + 6], fill=(255, 80, 80))
d.text((20, 10), "RIFTBREK HQ + OUTER WARD - UNDERGROUND LEVEL B1 (floor y 24, world)   blue = HQ B1 tunnels/rooms   orange = ward tunnels + basements   green = surface hatches   red = member gates", font=F(20), fill=(255, 255, 255))
im.save(os.path.join(out, "MAP_UNDERGROUND_B1.png"))
