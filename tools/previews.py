"""Renders preview PNGs straight from the saved .litematic (so previews always match the shipped file)."""
import sys, os
import numpy as np
sys.path.insert(0, os.path.dirname(__file__))
import validate, preview
from riftbrek import layout as L

lit, out = sys.argv[1], sys.argv[2]
d, r, pal, a = validate.load_litematic(lit)
lut = np.array([preview.colour(p[0]) for p in pal] + [(0, 0, 0)], dtype=np.uint8)
names = [p[0].split(":")[1] for p in pal]
hi = lut.copy()
for i, n in enumerate(names):
    if n == "hopper": hi[i] = (255, 200, 0)
    if n == "chest": hi[i] = (200, 120, 40)
    if "command_block" in n: hi[i] = (255, 80, 80)
    if n == "redstone_lamp": hi[i] = (255, 255, 120)
    if "sign" in n: hi[i] = (255, 255, 255)
    if n == "iron_door": hi[i] = (190, 190, 210)
    if n in ("powered_rail", "rail"): hi[i] = (255, 160, 60)
    if n == "crafter": hi[i] = (120, 255, 120)
os.makedirs(out, exist_ok=True)
preview.top(a, lut, os.path.join(out, "top_view.png"), 1)
preview.section(a, lut, os.path.join(out, "section_x383_spine.png"), "x", 383, 2)
preview.section(a, lut, os.path.join(out, "section_z480_plaza.png"), "z", 480, 2)
preview.plan(a, hi, os.path.join(out, "plan_B5_sorter_A.png"), L.level_floor(5) + 4, 550, 605, 462, 492, 14)
preview.plan(a, hi, os.path.join(out, "plan_B7_industry.png"), L.level_floor(7) + 1, 40, 270, 476, 600, 4)
preview.plan(a, hi, os.path.join(out, "plan_B8_transport.png"), L.level_floor(8) + 1, 0, 768, 0, 768, 1)
preview.plan(a, hi, os.path.join(out, "plan_B9_veil.png"), L.level_floor(9) + 1, 0, 768, 0, 768, 1)
print("previews written to", out)


# oblique (south-east high) view painted far-to-near
from PIL import Image
sub = a[L.GY:, :, :]
H, Z, X = sub.shape
U, V = X + Z // 2 + 10, H + Z // 2 + 10
canvas = np.zeros((V, U, 3), dtype=np.uint8); canvas[:] = (20, 24, 40)
for z in range(Z):
    sl = sub[:, z, :]
    ys, xs = np.nonzero(sl != 0)
    u = xs + (Z - z) // 2
    v = V - 1 - (ys + (Z - z) // 2) - 5
    c = lut[sl[ys, xs]].astype(np.float32) * (0.5 + 0.5 * z / Z)
    canvas[v, u] = np.clip(c, 0, 255).astype(np.uint8)
Image.fromarray(canvas).save(os.path.join(out, "oblique_view.png"))
print("oblique written")
