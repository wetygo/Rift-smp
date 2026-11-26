# Pandora (Na'vi homeland)

A separate 768 x 768 world area: **origin X 10240, Z 8192** (world X 10240..11007, Z 8192..8959), region files `r.20.16 r.20.17 r.21.16 r.21.17`. It has real terrain (rolling hills with a height map, a winding river, a pond), not a flat plate.

**What is in it** (all generated, nothing hand-placed):
- the **Hometree**: a hollow trunk 54 wide and 150 high with 9 living floors (lanterns, ladder shaft, four arched entrances), buttress roots, glowing froglight veins and an umbrella canopy 184 wide with hanging glow-berry vines
- the **Tree of Souls** (X 10810, Z 8442) with long luminous strands and the glowing Eywa pool
- a **Na'vi village**: 24 round huts (bed, workbench, barrel, lantern, thatched cone roof) on a ring around the Hometree
- **1,700 giant bioluminescent trees** (teal canopies, glow-berry vines), glowing candle flowers, glass mushrooms, ferns and orchids
- **17 floating Hallelujah mountains** (tuff / moss islands with trees, flowers, hanging vines and glass waterfalls) at y 126..226
- **6 Ikran roosts**: rock spires 72 high with wooden perches, a ladder and a bond pad on top; 4 rope bridges leave the Hometree; packed-mud paths

## Becoming a Na'vi
Stand on any **bond pad** (glowing light-blue disc). The data pack (`riftbrek:pandora/*`) tags you `rb_navi`, puts you on the aqua team (name colour), gives night vision, jump boost II and speed I (no particles), a **Na'vi bow** + 64 arrows, **Ikran wings** (elytra) + 64 firework rockets and a blue leather sash and leggings. Jump off an Ikran roost and glide. `/function riftbrek:pandora/leave` undoes it.

| bond pad | coordinates |
|---|---|
| IKRAN ROOST 1 | `10901 108 8693` |
| IKRAN ROOST 2 | `10661 103 8874` |
| IKRAN ROOST 3 | `10385 105 8757` |
| IKRAN ROOST 4 | `10348 104 8460` |
| IKRAN ROOST 5 | `10588 100 8279` |
| IKRAN ROOST 6 | `10864 104 8396` |
| HOMETREE | `10655 33 8576` |
| VILLAGE | `10752 37 8573` |

## Tested / not tested
- **Tested on a real 1.21.11 server:** the data pack loads with the Pandora functions; the Hometree pad's command block runs; `become_navi` runs (tag, team) on a test mob.
- **NOT tested with a real player:** the kit items (their component syntax loads cleanly but I could not give items to a mob), the effects, flying from a roost.
- Not built: a Na'vi skin (needs a resource pack - not possible without a website/mod); banshee/Toruk mobs; the floating mountains' waterfalls are glass columns (water would not flow when pasted).
- Pandora is inside the Pipeline wall (X 7680..13327), between the HQ and Redstone City, and Ithaca beyond.
