"""List underground air pockets (per level) that are NOT connected to the outside world (doors counted open)."""
import sys, os
import numpy as np
from scipy import ndimage
sys.path.insert(0, os.path.dirname(__file__))
import validate
from riftbrek import layout as L

d, r, pal, a = validate.load_litematic(sys.argv[1])
names = [p[0].split(":")[1] for p in pal]
NONSOLID = ("air", "ladder", "iron_door", "wall_banner", "banner", "lever", "button", "carpet", "rail", "lightning_rod", "water", "wheat", "carrots", "potatoes", "beetroots")
ids = [i for i, n in enumerate(names) if n in NONSOLID or n.endswith("_sign") or n.endswith("carpet") or n.endswith("_rail") or n.endswith("pressure_plate") or n.endswith("_bed") or n in ("chest", "barrel", "lectern", "crafting_table", "smithing_table", "anvil", "grindstone", "bookshelf", "crimson_fence", "potted_cherry_sapling") ]
# furniture is solid for walking but must not seal rooms: treat only structural passability (air/ladder/door/etc)
ids = [i for i, n in enumerate(names) if n in NONSOLID or n.endswith("_sign") or n.endswith("carpet") or n.endswith("_rail") or n.endswith("pressure_plate")]
P = np.isin(a, ids)
S = P.copy(); S[:-1] &= P[1:]; S[-1] = False
lab, n = ndimage.label(S, structure=ndimage.generate_binary_structure(3, 1))
start = lab[L.GY, 764, 383]
print("outside component", start)
bad = []
for k in range(1, 13):
    y = L.level_floor(k) + 1
    sl = lab[y]
    ids_, cnt = np.unique(sl[sl > 0], return_counts=True)
    for i, c in zip(ids_, cnt):
        if i != start and c > 40:
            zz, xx = np.nonzero(sl == i)
            bad.append((k, int(c), (int(xx.min()), int(xx.max())), (int(zz.min()), int(zz.max()))))
for b in bad:
    print(f"DISCONNECTED  B{b[0]}  cells={b[1]}  x={b[2]}  z={b[3]}")
print("disconnected pockets:", len(bad))
