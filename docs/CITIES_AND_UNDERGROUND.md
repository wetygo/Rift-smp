# Cities and their underground systems

| city | origin (world X, Z) | region files | theme |
|---|---|---|---|
| RIFTBREK HQ (+ ward, mega building) | 7808 / 7808 | merged set, 36 files | base (already has B1-B12 and the ward B1 network) |
| Pandora | 10240 / 8192 | r.20.16 r.20.17 r.21.16 r.21.17 | Na'vi homeland (docs/PANDORA.md) |
| The Redstone City | 11264 / 8192 | r.22.16 r.22.17 r.23.16 r.23.17 | street grid of working redstone (docs/REDSTONE_CITY.md) |
| Ithaca City | 12288 / 8192 | r.24.16 r.24.17 r.25.16 r.25.17 | capital city; **already has** its own maintenance ring, radial tunnels, minecart loop, royal vault, sorter halls and Veil tunnels |
| **Frostholm** (new) | 8192 / 9728 | r.16.19 r.16.20 r.17.19 r.17.20 | snow and ice: ice castle with 5 spires, frozen lake, igloo domes, snow-roofed timber houses, spruce forest |
| **Sandspire** (new) | 9216 / 9728 | r.18.19 r.18.20 r.19.19 r.19.20 | desert: great pyramid (+ 3 smaller, with chambers), 8 obelisks, Sultan's Palace with a gold dome, oasis with palms, bazaar ring, sandstone houses |
| **Emberforge** (new) | 10240 / 9728 | r.20.19 r.20.20 r.21.19 r.21.20 | volcanic forge: Forge Citadel inside a lava moat (4 bridges), chimney towers with lava, anvil statue, basalt pillars, lava lakes, fungus trees |

The three new cities are 768 x 768 each, with a crenellated curtain wall (26 high, 4 corner towers + wall towers), two command-block **public-tier gatehouses** (north and south) and open west / east arches, a street grid with lamp posts, about 150 furnished houses and the keep / landmarks above. They sit in a second row **south of the Pipeline wall (outside it)**.

## Underground (new, Pandora + Redstone City + the 3 new cities)
One generator (`build_cityunder.py`), same layout in every city, at level B3 (floor world y 8):
- a **central station hall** (45 x 45) under the city centre (under the Hometree / Core Tower / keep), pillars and lights
- **8 tunnels** (4 axial radials to the ring, 4 more as an inner square) and a **square ring tunnel** (half-size 230), all 6 wide, lit
- a **minecart ring line** in the ring tunnel: powered rails on redstone blocks, station at the south of the ring with a dispenser of 8 chest minecarts and a button; carts run the full ring (about 1,800 blocks) and bounce at the ends
- a **treasury vault** (north-east of the hub): 28 x 28 room, 14 chests of loot, behind a **member-tier command-block gate**
- **ladder hatches** (iron trapdoor at the surface): at the hub (surface at hub + 12, + 12) and on the north side of the ring at both quarter points (+ 4 corner hatches in the Redstone City and the 3 new cities)
- checked by flood fill: every tunnel, the hall and the ring are one connected network; the treasury is the only part behind the gate (2 components)

Coordinates (world), for a city with origin (OX, OZ): hub ladder `OX+396, surface, OZ+396`; ring-line station dispenser `OX+388, 10, OZ+612`, button `OX+390, 10, OZ+612`; treasury centre `OX+444, 9, OZ+314`; gate `OX+441, 9, OZ+285`.

**Tested on a real 1.21.11 server:** the Redstone City ring line (a chest minecart ran the ring at 8 blocks/s from the station) and the Sandspire ring line; the Frostholm north gatehouse command block runs (`door/public_w12`); the Hometree bond pad runs; the Emberforge lava moat is in place. **Not tested:** walking every tunnel (only the flood fill), the gates with a real player, the other cities' hatches.
**Not built:** an inter-city tunnel or metro between cities (the HQ bolt line and the HQ ward network stay separate), underground rails in Ithaca beyond what it already had, any water/lava hazards in the tunnels.
