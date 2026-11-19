"""Rotate a prepared annex build (annex.prepare result) 90 degrees clockwise seen from above (north -> east -> south -> west)."""
import numpy as np

CW = {"north": "east", "east": "south", "south": "west", "west": "north"}
RAIL = {"north_south": "east_west", "east_west": "north_south", "ascending_north": "ascending_east", "ascending_east": "ascending_south",
        "ascending_south": "ascending_west", "ascending_west": "ascending_north", "south_east": "south_west", "south_west": "north_west",
        "north_west": "north_east", "north_east": "south_east"}


def rot_props(props):
    out = {}
    for k, v in props.items():
        if k == "facing" and v in CW:
            out[k] = CW[v]
        elif k == "axis" and v in ("x", "z"):
            out[k] = "z" if v == "x" else "x"
        elif k == "rotation":
            out[k] = str((int(v) + 4) % 16)
        elif k == "shape" and v in RAIL:
            out[k] = RAIL[v]
        elif k == "orientation":
            a, _, b = v.partition("_")
            out[k] = (CW.get(a, a) + "_" + b) if b else v
        else:
            out[k] = v
    for src, dst in (("north", "east"), ("east", "south"), ("south", "west"), ("west", "north")):
        if src in props and props[src] in ("none", "side", "up", "true", "false"):
            out[dst] = props[src]
    return out


def rotate_prep(p):
    arr = p["arr"]
    sy, sz, sx = arr.shape
    new = np.ascontiguousarray(arr.transpose(0, 2, 1)[:, :, ::-1])          # new[y, z' = x, x' = sz-1-z]
    pal = [(n, rot_props(pr)) for (n, pr) in p["pal"]]
    tiles = []
    for t in p["tiles"]:
        t = dict(t); x, z = t["x"], t["z"]
        t["x"], t["z"] = sz - 1 - z, x
        tiles.append(t)
    q = dict(p); q.update(arr=new, pal=pal, tiles=tiles, size=(sz, sy, sx))
    return q
