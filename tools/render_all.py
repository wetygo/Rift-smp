"""Composite renders of the whole enlarged HQ (core + annex + outer ward): top view and a high oblique view."""
import sys, os
import numpy as np
sys.path.insert(0, os.path.dirname(__file__))
import validate, preview, export_sparse as es
from PIL import Image
core, ward, out = sys.argv[1], sys.argv[2], sys.argv[3]
GY = 96
H = 140                                   # heights kept above ground
W_, Z_ = 2304, 1536
col = np.zeros((H, Z_, W_, 3), dtype=np.uint8)   # too big -> use per-cell top colour + height maps instead
top = np.zeros((Z_, W_, 3), dtype=np.uint8); top[:] = (30, 70, 40)
hgt = np.zeros((Z_, W_), dtype=np.int16)
del col
def put(a, pal, px, pz):
    lut = np.array([preview.colour(p[0]) for p in pal] + [(0, 0, 0)], dtype=np.uint8)
    sub = a[GY - 1:GY - 1 + H]
    nz = sub != 0
    hh = np.where(nz.any(axis=0), H - np.argmax(nz[::-1], axis=0), 0)
    zi, xi = np.indices(hh.shape)
    idx = np.clip(hh - 1, 0, H - 1)
    blk = sub[idx, zi, xi]
    c = lut[blk].astype(np.float32) * (0.55 + 0.45 * np.clip(hh / 60.0, 0, 1))[..., None]
    sz, sx = hh.shape
    m = hh > 0
    t = top[pz:pz + sz, px:px + sx]; t[m] = np.clip(c[m], 0, 255).astype(np.uint8)
    hg = hgt[pz:pz + sz, px:px + sx]; hg[m] = hh[m]
d, r, pal, a = validate.load_litematic(core)
put(a, pal, 384, 384); del a
for (name, pal, a, px, py, pz, tiles) in es.load(ward, 0):
    put(a, pal, px, pz); del a
Image.fromarray(top).save(os.path.join(out, "full_top_view.png"))
# oblique: paint far-to-near at half resolution
s = 2
t2 = top[::s, ::s]; h2 = hgt[::s, ::s]
Z, X = h2.shape
Uw, Vh = X + Z // 2 + 10, Z // 2 + H + 20
can = np.zeros((Vh, Uw, 3), dtype=np.uint8); can[:] = (20, 24, 40)
for z in range(Z):
    u = np.arange(X) + (Z - z) // 2
    hh = h2[z].astype(int) // s * 1
    base = Vh - 8 - (Z - z) // 2
    shade = 0.55 + 0.45 * z / Z
    cc = np.clip(t2[z].astype(np.float32) * shade, 0, 255).astype(np.uint8)
    for x in range(X):
        top_v = base - max(int(hh[x]), 0) // 1
        can[max(top_v, 0):base + 1, u[x]] = cc[x]
Image.fromarray(can).save(os.path.join(out, "full_oblique_view.png"))
print("done", top.shape, can.shape)
