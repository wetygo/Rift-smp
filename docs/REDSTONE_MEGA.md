# Redstone Mega Building (replaces the open annex plateau)

The annex plateau (world **X 8960..10111, Z 8192..8959**) is now ONE roofed megastructure: 12-thick walls 160 blocks high with a purple band and glowing strips, a deck roof with tinted-glass skylights and a crenellated parapet, pilasters along the inside, four 12-wide **member-tier** gatehouses (two in the north wall, two in the south wall), and an invisible light grid so nothing spawns inside. Its west side is the HQ's own east wall. Every imported build (Wildezz / Storage Tech / Wave Bolt - Full Dam, Ghast Hydration, Wildez Main Storage, Mob Switch Spires, 72k Magma/Gold Farms, Carrot & Firework Crafters, 2D Furnace Array, CLMs, Wave Bolt line pieces ...) is inside it, unchanged (`docs/ANNEX_MAP.md`).

## Three halls of my own (plain vanilla redstone, each live-tested)
| hall | what | where (world) |
|---|---|---|
| **FURNACE ARRAY** | 4 rows x 20 hopper-fed smelters (iron, copper, gold, stone). Ore chest on top -> hopper -> furnace <- coal hopper; every furnace drops into a collector hopper line that runs east into an output chest per row | X 10014..10076, Z 8218..8245 (output chests at X 10076) |
| **FARM HALL** | 24 **observer + piston** farms: 12 melon + 12 pumpkin. A stem on hydrated farmland grows a fruit into its one free cell; the observer sees it, powers a piston, the piston breaks the fruit, a hopper below collects it into a chest | melon row stem `9828 32 8406`, pumpkin row `9828 32 8420`, then every 6 blocks east |
| **STORAGE VAULT** | 288 chest racks (4 racks x 24 columns x 3 high) and three comparator **fill meters** (bar graph of how full a chest is) | racks X 9918..10016, Z 8408..8430 |

**Tested on a real 1.21.11 server:** melon placed in the fruit cell -> piston fired -> 3 melon slices in the chest; pumpkin -> 1 pumpkin in the chest; each furnace row filled its output chest (117 iron ingots / copper ingots / stone in ~50 s from 20 smelters). The fill meters use the module that passed the Haven tests; not re-run here. Stems growing by themselves (random ticks) was not waited for - the test places the fruit by command.

## Farms everywhere (added)
Every free rectangle of the plateau between the imported builds is filled with strips of the same observer + piston melon / pumpkin farm: **4,009 farm units in 60 strips** (rows alternate melon and pumpkin), plus the 24 in the Farm Hall. Each unit = farmland + stem + water + a lantern for the stem, a fruit cell with a hopper + chest below, an observer and a piston. One unit was re-tested after the rebuild (fruit placed -> 3 melon slices in its chest). Each strip is a separate region; a unit's chest is at `(stem x + 1, y 30, stem z)`.
Heads-up: 4,000 hoppers is a lot - a server with players inside the building will tick all of them; if the building lags, remove strips.

## The Wave Bolt viaduct (through the whole HQ)
Two parallel lanes of the supplied Wave Bolt straight pieces (Straight Bolt Massive and Straight Bolt, turned 90 degrees to run east-west) on a lit deck, **world y 180 (lane blocks y 180..182, deck y 179), lane A Z 8220..8228, lane B Z 8231..8239, from X 7840 to X 10080 - 2,240 blocks without a gap**:
west ward (X 7840..8191) -> **over the whole original HQ** (X 8192..8959, above every roof, wall, tower and spire - I searched the model for a height and a Z where nothing is in the way: the only clear band is Z 8220..8240 at y >= 180) -> into and through the Redstone Mega Building (X 8960..10080), passing over the Full Dam. Pillars are not built (it floats like a monorail). Checked on a live server: deck and lane blocks are present in the west ward, in the middle of the HQ and inside the mega building.
**Not verified**: I rotated the pieces (block states, rails, dust connections, tile positions) but I cannot test a Wave Bolt here, and I do not know where its stations / pushers / loaders are supposed to attach - the loose pieces (stations, lanes, block pushers, intersections) are still on the shelf rows inside the building, unconnected. The viaduct is the line itself, not the ends.

## NOT done / be honest
- The community builds' function is untested (the Furnace Array, Main Storage, magma farms ...); only my three halls and the farm units were run.
- No automatic sugar-cane / villager / mob farms. The furnace array is fed by hand (chests), not by a shared line. The halls are not connected to each other or to the HQ sorters.
