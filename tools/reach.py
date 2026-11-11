"""Walkability / connectivity check: can a player reach key interiors from outside the gate (doors counted as open)?"""
import sys, os
import numpy as np
from scipy import ndimage
sys.path.insert(0, os.path.dirname(__file__))
import validate
from riftbrek import layout as L

lit = sys.argv[1]
d, r, pal, a = validate.load_litematic(lit)
names = [p[0].split(":")[1] for p in pal]
NONSOLID = ("air", "ladder", "iron_door", "sign", "wall_banner", "banner", "lever", "button", "carpet", "rail", "lightning_rod",
            "redstone_lamp_x", "wheat", "carrots", "potatoes", "beetroots", "water")
passable_ids = [i for i, n in enumerate(names) if n in NONSOLID or n.endswith("_sign") or n.endswith("banner") or n.endswith("_rail") or n.endswith("carpet")]
P = np.isin(a, passable_ids)
# standing cell: cell passable and head passable
S = P.copy()
S[:-1] &= P[1:]
S[-1] = False
# must have support below or be ladder/water
solid_below = np.zeros_like(P)
solid_below[1:] = ~P[:-1]
ladder_ids = [i for i, n in enumerate(names) if n == "ladder"]
isl = np.isin(a, ladder_ids)
# (support not required: stair steps / jumps are not modelled; this finds sealed-off rooms, not parkour)
# allow vertical movement along ladders (cells of ladder)
lab, n = ndimage.label(S | isl, structure=ndimage.generate_binary_structure(3, 1))
GY = L.GY
def comp(x, y, z):
    return lab[y, z, x]
start = comp(383, GY, 764)
print("outside gate comp", start, "labels", n)
pts = {
    "gate passage inside": (383, GY, 740),
    "citadel entrance hall": (360, GY, 340),
    "citadel ramp bottom": (383, GY, 362),
    "citadel throne room": (383, GY + 48, 250),
    "plaza": (383, GY, 450),
    "archivist lobby": (127, GY, 262),
    "archivist floor3": (127, GY + 22, 200),
    "unstables lobby": (623, GY, 245),
    "veil lobby": (103, GY, 308),
    "abstracters lobby": (631, GY, 308),
    "wildcards lobby": (111, GY, 478),
    "nexus lobby": (635, GY, 458),
    "nexus intake A": (562, GY, 475),
    "blimp terminal hall": (383, GY, 110),
    "west ring B1 (ladder)": (36, L.level_floor(1) + 1, 384),
    "B3 archive": (120, L.level_floor(3) + 1, 200),
    "B5 sorter A": (561, L.level_floor(5) + 1, 474),
    "B6 sorter B": (561, L.level_floor(6) + 1, 522),
    "B6 kit hall": (480, L.level_floor(6) + 1, 500),
    "B7 smelters": (60, L.level_floor(7) + 1, 565),
    "B7 wheat plot": (60, L.level_floor(7) + 1, 484),
    "B8 rail ring": (100, L.level_floor(8) + 1, 36),
    "B8 ice lane": (100, L.level_floor(8) + 1, 42),
    "B9 veil HQ": (100, L.level_floor(9) + 1, 340),
    "B9 veil tunnel N": (101, L.level_floor(9) + 1, 285),
    "B10 royal hall": (380, L.level_floor(10) + 1, 300),
    "B10 vault 1 interior": (321, L.level_floor(10) + 1, 205),
    "B12 reserve": (300, L.level_floor(12) + 1, 300),
    "throne room floor": (383, GY + 49, 280),
}
for k, (x, y, z) in pts.items():
    # snap upward to a standing cell within 3 blocks
    c = 0
    yy = y
    for dy in range(0, 4):
        if S[y + dy, z, x] or isl[y + dy, z, x]:
            c = lab[y + dy, z, x]; yy = y + dy; break
    print(("OK  " if c == start and c else "FAIL"), k, (x, yy, z), "comp", c)

# debug window around the citadel entrance
import numpy as np
def show(x0,x1,y,z0,z1):
    for z in range(z1, z0-1, -1):
        print(z, "".join(("."+"#")[0] if P[y,z,x] else "#" for x in range(x0,x1)))
print("citadel entrance slice y=GY+1, x 370..397, z 360..372  ('.'=passable)")
show(370,398,GY+1,360,372)
print("stand mask (S) y=GY, same")
for z in range(372,359,-1):
    print(z, "".join("S" if S[GY,z,x] else ("p" if P[GY,z,x] else "#") for x in range(370,398)))

print("--- vestibule slices (x 378..389), '.'=passable '#'=solid, rows z 322..308")
for y in (GY + 46, GY + 47, GY + 48, GY + 49, GY + 50):
    print("y", y)
    for z in range(322, 307, -1):
        print(z, "".join("." if P[y, z, x] else "#" for x in range(378, 390)))
