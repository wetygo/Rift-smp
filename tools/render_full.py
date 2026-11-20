"""Whole-complex renders: HQ + Redstone Mega Building (roof on) + Outer Ward + Bolt Viaduct. Top view and a high oblique view."""
import sys, os
import numpy as np
sys.path.insert(0, os.path.dirname(__file__))
import export_sparse as es, preview
from PIL import Image
core, ward, out = sys.argv[1:4]
TW, TH, H = 2304, 1536, 280
top = np.zeros((TH, TW, 3), dtype=np.uint8); top[:] = (30, 70, 40)
hgt = np.zeros((TH, TW), dtype=np.int16)
def put(a, pal, px, pz, y0):
    lut = np.array([preview.colour(p[0]) for p in pal] + [(0, 0, 0)], dtype=np.uint8)
    sub = a
    nz = sub != 0
    sy = sub.shape[0]
    hh = np.where(nz.any(axis=0), sy - np.argmax(nz[::-1], axis=0), 0) + y0
    zi, xi = np.indices(hh.shape)
    idx = np.clip(hh - y0 - 1, 0, sy - 1)
    blk = sub[idx, zi, xi]
    c = lut[blk].astype(np.float32) * (0.55 + 0.45 * np.clip((hh - 96) / 120.0, 0, 1))[..., None]
    sz, sx = hh.shape
    m = (sub != 0).any(axis=0)
    # only overwrite where this region reaches at least as high as what is there
    t = top[pz:pz + sz, px:px + sx]; hg = hgt[pz:pz + sz, px:px + sx]
    upd = m & (hh >= hg)
    t[upd] = np.clip(c[upd], 0, 255).astype(np.uint8); hg[upd] = hh[upd]
for (name, pal, a, px, py, pz, tiles) in es.load(core, 0):
    put(a, pal, px + 384, pz + 384, py); del a
for (name, pal, a, px, py, pz, tiles) in es.load(ward, 0):
    put(a, pal, px, pz, py); del a
Image.fromarray(top).save(os.path.join(out, "RENDER_whole_top.png"))
# oblique from the south-east, painted far to near, half resolution
s = 2
t2 = top[::s, ::s]; h2 = (hgt[::s, ::s].astype(int) - 94).clip(0, None)
Z, X = h2.shape
Uw, Vh = X + Z // 2 + 20, Z // 2 + 300
can = np.zeros((Vh, Uw, 3), dtype=np.uint8)
for y in range(Vh):
    can[y] = (int(30 + 40 * y / Vh), int(36 + 50 * y / Vh), int(70 + 60 * y / Vh))
for z in range(Z):
    u = np.arange(X) + (Z - z) // 2
    base = Vh - 10 - (Z - z) // 2
    shade = 0.6 + 0.4 * z / Z
    cc = np.clip(t2[z].astype(np.float32) * shade, 0, 255).astype(np.uint8)
    hh = h2[z]
    for x in range(X):
        tv = base - int(hh[x])
        can[max(tv, 0):base + 1, u[x]] = cc[x]
Image.fromarray(can).save(os.path.join(out, "RENDER_whole_oblique.png"))
print("done", top.shape, can.shape)
