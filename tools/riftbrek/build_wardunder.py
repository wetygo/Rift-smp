"""Ward underground: basements under every ward building + a tunnel network at level B1 (the same level as the HQ's B1 tunnels).
Trunks run under the avenues, links under the connector roads, ladder hatches (iron trapdoor on the road) every few hundred blocks.
The two N-S tunnels of the HQ's B1 (core x 300 / 470) are extended north and south through the HQ wall into the ward; where they enter
the ward they pass a member-tier command-block gate (the HQ's own B1 is member-only, so the ward tunnels must not bypass it)."""
import numpy as np
from .build_common import *
from . import layout as L
from .build_under import Level
from . import build_furnish2 as F2

Y0 = L.level_floor(1)           # floor of B1 (local y 88)
TUN_TESTS = []


def hatch(W, x, z, y0):
    """ladder from the tunnel (cell x,z against the north wall) to the surface, iron trapdoor on top"""
    W.fill(x, y0 + 1, z, x, GROUND_TOP, z, AIR)
    for y in range(y0 + 1, GROUND_TOP):
        W.set(x, y, z, "minecraft:ladder[facing=south,waterlogged=false]")
    W.set(x, GROUND_TOP, z, "minecraft:iron_trapdoor[facing=north,half=bottom,open=false,powered=false,waterlogged=false]")


def sgn(W, x, z, lines):
    sign(W, x, Y0 + 1, z, lines, rot=0, color="light_blue")


def strip_underground(W, strip, specs, links_x, core_tx):
    all_specs = specs
    specs = [sp for sp in specs if sp[1] not in ("haven", "center")]      # no basements under the Haven / Redstone Center halls (their circuits use the ground layer)
    lv = Level(W, 1)
    sx, sz = W.sx, W.sz
    hatches = []; gates = []
    h4 = dict(floor=PB, h=4)
    if strip in "NS":
        tA, tB = (305, 8) if strip == "N" else (79, 376)
        lv.room(0, tA - 2, sx - 1, tA + 2, **h4); lv.room(0, tB - 2, sx - 1, tB + 2, **h4)
        for lx in links_x:
            lv.room(lx - 2, min(tA, tB), lx + 2, max(tA, tB), **h4)
        lv.room(192, (305 if strip == "N" else 0), 196, (383 if strip == "N" else 79), **h4)      # link to the west ward trunk
        for tx in core_tx:                                                                         # to the HQ
            zs, ze = (tA, 383) if strip == "N" else (0, tA)
            lv.room(tx - 3, zs, tx + 2, ze, **h4)
        for (x0, z0, x1, z1) in [(sp[2], sp[3], sp[4], sp[5]) for sp in specs]:
            cx = (x0 + x1) // 2
            front_south = z1 > (tA if strip == "N" else 0) and (strip == "N" and z1 < tA or strip == "S" and False)
            if strip == "N":
                if z0 >= 100:   # front row (faces south) -> trunk A
                    lv.room(cx - 2, z1 - 3, cx + 2, tA, **h4)
                else:           # rear row -> trunk B
                    lv.room(cx - 2, tB, cx + 2, z0 + 3, **h4)
            else:
                if z0 < 200:    # front row (faces north) -> trunk A
                    lv.room(cx - 2, tA, cx + 2, z0 + 3, **h4)
                else:           # rear row -> trunk B
                    lv.room(cx - 2, z1 - 3, cx + 2, tB, **h4)
    else:
        lv.room(193, 0, 197, sz - 1, **h4)
        for (x0, z0, x1, z1) in [(sp[2], sp[3], sp[4], sp[5]) for sp in specs]:
            cz = (z0 + z1) // 2
            if x0 < 190:
                lv.room(x1 - 3, cz - 2, 192, cz + 2, **h4)
            else:
                lv.room(198, cz - 2, x0 + 3, cz + 2, **h4)
    for sp in specs:
        (label, kind, x0, z0, x1, z1, floors, fh, face, tier) = sp
        lv.room(x0 + 3, z0 + 3, x1 - 3, z1 - 3, floor=PB, h=6)
    lv.finish()
    for sp in specs:
        (label, kind, x0, z0, x1, z1, floors, fh, face, tier) = sp
        partitions(W, x0 + 3, z0 + 3, x1 - 3, z1 - 3, Y0 + 1, h=5, pitch=12, wall=DB, gap=4, gh=4)
        ladder_shaft(W, x0 + 3, z0 + 3, Y0 + 1, GY - 1, "east")
        ladder_shaft(W, x1 - 3, z1 - 3, Y0 + 1, GY - 1, "west")
        lad = [(x0 + 3, z0 + 3), (x1 - 3, z1 - 3)]
        F2.furnish_rect(W, x0 + 4, z0 + 4, x1 - 4, z1 - 4, Y0 + 1, "barracks" if kind in ("barracks", "dorm") else "office", lad, step=5)
        sgn(W, (x0 + x1) // 2 + 3, (z1 - 5 if face == "south" else z0 + 5), ["BASEMENT", label[:14], "ladders up in", "two corners"])
    # hatches + signs
    if strip in "NS":
        tA, tB = (305, 8) if strip == "N" else (79, 376)
        for lx in links_x:
            for tz in (tA, tB):
                hatch(W, lx - 2, tz - 2, Y0); hatches.append((lx - 2, tz - 2))
            sgn(W, lx, (tA + tB) // 2, ["TUNNEL LINK", "trunk A <-> B", "hatch at each end", ""])
        hatch(W, 194, (tA if tA > 100 else 79) - 2, Y0); hatches.append((194, (tA - 2)))
        for tx in core_tx:
            gz = 372 if strip == "N" else 12
            gx = tx - 3
            gate(W, "member", gx, Y0 + 1, gz, 6, facing="north", frame=PB, clear_z=(), clear_h=4)
            gates.append((gx, Y0 + 1, gz))
            sgn(W, gx + 2, gz - 2 if strip == "N" else gz + 3, ["TO THE HQ B1", "member tier gate", "", ""])
    else:
        for z in range(60, sz - 20, 150):
            hatch(W, 193, z, Y0); hatches.append((193, z))
        for z in range(40, sz, 200):
            sgn(W, 195, z, ["WEST WARD TUNNEL", "N-S trunk", "hatches on the road", ""])
    return dict(hatches=hatches, gates=gates)


def connectivity(W, strip):
    """flood fill of the B1 walking plane (two air cells above a solid floor) in this strip: returns (components, cells in the largest)"""
    from scipy import ndimage
    a = W.a
    air = W.B("minecraft:air")
    lad = np.zeros(1)
    pas = (a[Y0 + 1] == air) & (a[Y0 + 2] == air) & (a[Y0] != air)
    # doors / gates count as passable (iron doors are walls for this check -> treat the door cells as open)
    for nm in ("minecraft:iron_door[facing=north,half=lower,hinge=left,open=false,powered=false]",):
        pass
    lab, n = ndimage.label(pas)
    sizes = ndimage.sum(pas, lab, range(1, n + 1))
    return n, int(sizes.max()) if n else 0, lab
