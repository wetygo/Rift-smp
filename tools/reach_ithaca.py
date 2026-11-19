"""Walkability check for Ithaca City (doors counted open): can a player get from outside the south gate to every key place?"""
import sys, os
import numpy as np
from scipy import ndimage
sys.path.insert(0, os.path.dirname(__file__))
import validate
from riftbrek import layout as L
from riftbrek import build_ithaca as I

lit = sys.argv[1]
d, r, pal, a = validate.load_litematic(lit)
names = [p[0].split(":")[1] for p in pal]
NONSOLID = ("air", "ladder", "iron_door", "wall_banner", "banner", "lever", "lightning_rod", "water", "lantern", "soul_lantern", "chain", "iron_chain",
            "wheat", "carrots", "potatoes", "beetroots", "spruce_door", "iron_bars", "iron_trapdoor", "bed")
def passable(n):
    return (n in NONSOLID or n.endswith("_sign") or n.endswith("banner") or n.endswith("_rail") or n.endswith("carpet") or n.endswith("button")
            or n.endswith("_door") or n.endswith("trapdoor") or n.endswith("_bed") or n.endswith("pressure_plate") or n == "rail" or n == "redstone_wire"
            or n == "light" or n.endswith("_wall_sign"))
P = np.isin(a, [i for i, n in enumerate(names) if passable(n)])
S = P.copy(); S[:-1] &= P[1:]; S[-1] = False
ladder = np.isin(a, [i for i, n in enumerate(names) if n == "ladder"])
lab, n = ndimage.label(S | ladder, structure=ndimage.generate_binary_structure(3, 1))
GY = L.GY
def comp(x, y, z):
    for dy in (0, 1, -1, 2, -2, 3):
        if 0 <= y + dy < a.shape[0] and lab[y + dy, z, x]:
            return lab[y + dy, z, x]
    return 0
start = comp(384, GY, 725)
print("start (outside south gate) comp", start, "of", n)
C = I.CX
pts = {
    "south gate passage": (384, GY, 705), "north gate passage": (384, GY, 63), "east gate passage": (705, GY, 384), "west gate passage": (63, GY, 384),
    "monument plaza": (400, GY, 400), "royal district north": (384, GY, 240),
    "palace lobby": (384, GY, 330), "palace throne hall": (384, GY, 290), "palace top floor": (320, GY + 48, 259),
    "royal vault access foot": (394, 58, 262), "royal vault interior": (384, 58, 275),
    "capitol lobby": (384, GY, 436), "capitol security control": (430, GY, 436),
    "market ring": (384 + 190, GY, 384), "trading hall NE": (I.polar(187, 315)[0], GY, I.polar(187, 315)[1] + 2),
    "customs lobby": (423, GY, 604 - 8 if False else 596),
    "library": (I.polar(256, 345)[0], GY, I.polar(256, 345)[1]), "barracks": (251, GY, 588),
    "industrial hall": (125, GY, 342), "redstone haven logic lab": (120, GY, 353), "redstone haven clock": (98, GY, 344), "redstone haven meters": (130, GY, 345), "redstone haven piston curtain": (150, GY, 345), "arena one": (190, GY, 562),
    "maintenance ring": (I.polar(294, 10)[0], 84, I.polar(294, 10)[1]), "maintenance tunnel N": (384, 85, 200),
    "hatch kiosk NE": (I.polar(284, 315)[0], GY, I.polar(284, 315)[1]),
    "rail loop north station": (384 + 5, 71, 384 - 190 + 2), "rail loop south station": (384 + 5, 71, 384 + 190 - 2),
    "rail loop east station": (384 + 190 - 2, 71, 384 + 5), "rail loop west station": (384 - 190 + 2, 71, 384 + 5),
    "sorter A hall": (105, L.level_floor(5) + 1, 329), "sorter B hall": (105, L.level_floor(6) + 1, 353),
    "veil tunnel west exit": (I.polar(254, 210)[0] - 130, 79, I.polar(254, 210)[1]),
    "veil basement": (I.polar(254, 210)[0], 79, I.polar(254, 210)[1]),
}
for k in (("birds", 300), ("abstracters", 30), ("wildcards", 150), ("veil", 210), ("unstables", 240), ("archivist", 330)):
    x, z = I.polar(254, k[1])
    pts["HQ " + k[0] + " lobby"] = (x, GY, z + (8 if z < 384 else -8) * -1 if False else (z - 8 if z > 384 else z + 8))
bad = 0
for k, (x, y, z) in pts.items():
    c = comp(x, y, z)
    ok = (c == start and c != 0)
    bad += (not ok)
    print(("OK   " if ok else "FAIL ") + k, (x, y, z), "comp", c)
print("unreachable:", bad, "of", len(pts))
sys.exit(1 if bad else 0)
