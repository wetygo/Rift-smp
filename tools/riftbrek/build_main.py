"""Assemble the master schematic + datapack."""
import os, sys, time
import numpy as np
from . import layout as L
from . import build_common as C
from .world import World
from . import build_quarters as Q, build_surface as S, build_wings as WG, build_under as U, build_furnish as FU, build_furnish2 as F2


def build_world():
    t0 = time.time()
    W = World(L.SX, L.SY, L.SZ)
    rng = np.random.default_rng(2026)
    log = lambda m: print("  [%6.1fs] %s" % (time.time() - t0, m), flush=True)
    S.terrain(W); log("terrain")
    lv = U.underground(W); log("underground levels")
    S.roads(W); S.chunk_ban_square(W); log("roads / checkpoint")
    S.perimeter_wall(W); S.wall_towers(W); S.gatehouse(W); log("wall, towers, gatehouse")
    S.plaza(W); log("plaza")
    S.citadel(W); log("citadel")
    WG.archive(W); WG.unstables(W); WG.abstracters(W); WG.veil(W); WG.wildcards(W); WG.nexus(W); log("wings")
    WG.blimp(W); WG.chicken_chambers(W); log("blimp terminal + chambers")
    Q.build_quarters(W); Q.launch_pads(W); log("member quarters + launch pads")
    n = WG.landscaping(W, rng); log("trees %d" % n)
    log("furnished quadrants %d" % FU.furnish(W)); log("light blocks %d" % FU.lights(W))
    U.machines(W, lv); log("machinery")
    log("ruined vault: %d chests" % Q.ruined_vault(W, rng))
    from .build_wings import WINGS
    log("furnished perimeter items (shells) %d, underground %d" % (F2.furnish_shells(W, [(v[0], v[1], v[2], v[3]) for v in WINGS.values()]), F2.furnish_underground(W)))
    # tunnel / room ceilings sit at ground level: repaint the visible ones back to grass (not under buildings)
    gi = {W.B("minecraft:deepslate_tiles"), W.B("minecraft:deepslate_bricks")}
    grass = W.B("minecraft:grass_block[snowy=false]")
    g = W.a[L.GROUND_TOP, 16:L.SX - 16, 16:L.SX - 16]
    free = W.a[L.GY:L.GY + 14, 16:L.SX - 16, 16:L.SX - 16].max(axis=0) == 0
    m = np.isin(g, list(gi)) & free
    g[m] = grass
    log("repainted %d ceiling cells to grass" % int(m.sum()))
    return W


def main(out_dir):
    W = build_world()
    os.makedirs(out_dir, exist_ok=True)
    path = os.path.join(out_dir, "RIFTBREK_Vanguard_Headquarters_MASTER.litematic")
    bits, total = W.save(path, "RIFTBREK Vanguard Headquarters - MASTER",
                         "RIFTBREK Design",
                         "768x768x224 megabase: wall, citadel, 6 faction wings, plaza, B1-B12, command-block doors, sorter halls, "
                         "smelters, crafters, crop plots, rail+ice transit, wind-charge chambers. Moving blimp NOT implemented (static display).")
    print("palette", len(W.palette), "bits", bits, "solid blocks", total, "tiles", len(W.tiles), "gates", len(C.GATES))
    return W, path


if __name__ == "__main__":
    main(sys.argv[1] if len(sys.argv) > 1 else "dist")
