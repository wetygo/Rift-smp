# What is NOT built / not verified (honest list)

## Not built
| item | status | what is needed |
|---|---|---|
| **Flying / moving blimp** | NOT built. The terminal holds a *static* moored airship (decorative hull, gondola, fins, mast, gantry). | The exact world download / schematic of the "Airander 10" design from the reference video, plus a verified 1.21.11-compatible slime/honey flying machine. The video link could not be inspected here. Do not treat the static hull as functional. |
| Shulker box loader / unloader | NOT built. | A verified design (and the sorter would need item-frame/comparator support). |
| Iron farm, villager/trading hall, mob grinders, mega-farms | NOT built. | Only 4 command-assisted crop plots exist (wheat, carrots, potatoes, beetroot). |
| Pure-redstone item sorter | NOT built. Sorting is **datapack-driven** (command blocks move stacks with `item replace`). | A tested vanilla design if command-block-free storage is required. |
| Autocrafters beyond 6 block compactors | NOT built. | — |
| Authenticated doors without command blocks | impossible — doors need `enable-command-block=true`. | — |
| Real chunk banning | deliberately NOT built. The "Chunk Ban Square" is a safe simulation (slow + darkness + ejection). | — |

## Differences from the concept render (limits of Minecraft)
* World height is 224 blocks. With 12 underground levels the surface is at world Y 32, leaving 128 blocks above ground:
  citadel/towers top out at ~127 blocks above ground (concept: 170 / 144).
* The concept shows terrain, river, cliffs and forest around the base. Terrain is not part of the schematic (flat grass plateau, 160 cherry/spruce trees).
* Auto Storage "6 floors": delivered as 2 sorter levels (B5, B6) + the 4-floor Storage Nexus building. Capacity per hall: 17/12 categories × 4 columns × 2 chests = 136 / 96 chests; plus misc/overflow columns.
* Wing interiors are procedurally generated room grids (corridors, arches, ladders, lights, bookshelves, arena seating), not hand-detailed art. Expect to decorate.

## Design decisions that you may want to change
* Door radius is 3 blocks (9 for 12-wide gates): an authorised player holding a door open lets anyone standing beside them through (tailgating). Shrink the radius in `door/*` if undesired.
* Royal players pass lockdown and every faction door. Veil doors admit Veil + Royal only (leaders of other factions are not admitted).
* Kit cooldown 10 minutes; Royal bypasses it. Kits are item lists — enchant levels are the ones in the old pack.
* Creator-inspired kits are my own design choices, **not** verified canon for those creators.
* The wind-charge chambers are **manual** (lever); no automation.

## Never tested in Minecraft (everything dynamic)
See `docs/TEST_REPORT.md` section C for the risk list and smoke test.
