# What is NOT built / not verified (honest list)

## Not built
| item | status | what is needed |
|---|---|---|
| **Blimp** | BUILT but EXPERIMENTAL/UNTESTED: a display-entity airship moved by `riftbrek:blimp/*` along a west lane with 3 docks and 6 seats. It now uses the Airlander 10 you supplied (55×32×92, cabin interior left out). | An in-game test; the exact Airander download if you want that model. |
| Shulker box loader / unloader | BUILT (B7): hopper above/below a shulker box, plain vanilla mechanics; untested. | — |
| Iron farm, mob grinders | NOT built as real farms. B11 has 8 **command-driven** generators (iron, gunpowder, bones, string, flesh, pearls, blaze, witch) that insert entity loot into chests; not survival-legit. Villager halls not built. 4 command-assisted crop plots exist. | A verified design source for real farms. |
| Pure-redstone item sorter | NOT built. Sorting is **datapack-driven** (command blocks move stacks with `item replace`). | A tested vanilla design if command-block-free storage is required. |
| Autocrafters beyond 6 block compactors | NOT built. | — |
| Authenticated doors without command blocks | impossible — doors need `enable-command-block=true`. | — |
| Real chunk banning | deliberately NOT built. The "Chunk Ban Square" is a safe simulation (slow + darkness + ejection). | — |

## Differences from the concept render (limits of Minecraft)
* The schematic is 384 tall (world Y -64..319, the build limit). Surface at world Y 32: citadel great spire ~220 above ground (concept 170), wall towers ~140 (concept 144).
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
