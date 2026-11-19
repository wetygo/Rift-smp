# Redstone Mega Building (replaces the open annex plateau)

The annex plateau (world **X 8960..10111, Z 8192..8959**) is now ONE roofed megastructure: 12-thick walls 160 blocks high with a purple band and glowing strips, a deck roof with tinted-glass skylights and a crenellated parapet, pilasters along the inside, four 12-wide **member-tier** gatehouses (two in the north wall, two in the south wall), and an invisible light grid so nothing spawns inside. Its west side is the HQ's own east wall. Every imported build (Wildezz / Storage Tech / Wave Bolt - Full Dam, Ghast Hydration, Wildez Main Storage, Mob Switch Spires, 72k Magma/Gold Farms, Carrot & Firework Crafters, 2D Furnace Array, CLMs, Wave Bolt line pieces ...) is inside it, unchanged (`docs/ANNEX_MAP.md`).

## Three halls of my own (plain vanilla redstone, each live-tested)
| hall | what | where (world) |
|---|---|---|
| **FURNACE ARRAY** | 4 rows x 20 hopper-fed smelters (iron, copper, gold, stone). Ore chest on top -> hopper -> furnace <- coal hopper; every furnace drops into a collector hopper line that runs east into an output chest per row | X 10014..10076, Z 8218..8245 (output chests at X 10076) |
| **FARM HALL** | 24 **observer + piston** farms: 12 melon + 12 pumpkin. A stem on hydrated farmland grows a fruit into its one free cell; the observer sees it, powers a piston, the piston breaks the fruit, a hopper below collects it into a chest | melon row stem `9828 32 8406`, pumpkin row `9828 32 8420`, then every 6 blocks east |
| **STORAGE VAULT** | 288 chest racks (4 racks x 24 columns x 3 high) and three comparator **fill meters** (bar graph of how full a chest is) | racks X 9918..10016, Z 8408..8430 |

**Tested on a real 1.21.11 server:** melon placed in the fruit cell -> piston fired -> 3 melon slices in the chest; pumpkin -> 1 pumpkin in the chest; each furnace row filled its output chest (117 iron ingots / copper ingots / stone in ~50 s from 20 smelters). The fill meters use the module that passed the Haven tests; not re-run here. Stems growing by themselves (random ticks) was not waited for - the test places the fruit by command.

## NOT done / be honest
- **"Piston bolt through the base"**: not extended. The Wave Bolt pieces (straight bolts, intersections, transitions, stations by SandCaribou1890 / Pando_UwU / Kvil) are inside the building exactly as supplied, but I did **not** run a bolt line through the HQ or the ward: they only run along one axis, need matching end stations, and I cannot test a Wave Bolt here. Ask if you want a specific line.
- The community builds' function is untested (the Furnace Array, Main Storage, magma farms ...); only my three halls were run.
- No automatic sugar-cane / crop-with-villager / mob farms. The furnace array is fed by hand (chests), not by a shared line.
- The furnace/storage/farm halls are not connected to each other or to the HQ sorters.
