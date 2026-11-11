"""Assemble the master schematic + datapack."""
import os, sys, time
import numpy as np
from . import layout as L
from . import build_common as C
from .world import World
from . import build_surface as S, build_wings as WG, build_under as U, build_furnish as FU


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
    n = WG.landscaping(W, rng); log("trees %d" % n)
    log("furnished quadrants %d" % FU.furnish(W)); log("light blocks %d" % FU.lights(W))
    U.machines(W, lv); log("machinery")
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
