# Redstone Mega Building (replaces the open annex plateau)

The annex plateau (world **X 8960..10111, Z 8192..8959**) is now ONE roofed megastructure: 12-thick walls 160 blocks high with a purple band and glowing strips, a deck roof with tinted-glass skylights and a crenellated parapet, pilasters along the inside, four 12-wide **member-tier** gatehouses (two in the north wall, two in the south wall), and an invisible light grid so nothing spawns inside. Its west side is the HQ's own east wall. Every imported build (Wildezz / Storage Tech / Wave Bolt - Ghast Hydration, Wildez Main Storage, Mob Switch Spires, 72k Magma/Gold Farms, Carrot & Firework Crafters, 2D Furnace Array, CLMs, Wave Bolt line pieces ...) is inside it, unchanged (`docs/ANNEX_MAP.md`).

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

## The bolt line (WORKING minecart line through the whole HQ)
**What I found about the community Wave Bolt:** it is a minecart network (SandCaribou1890 / Pando_UwU / Kvil), not a plain piston belt: the supplied pieces are rails + piston/comparator/repeater "waves", and its station has signs like "Cart Loader", "Send All Carts To Bolt", "Station 1-9", "Subnet Selection", "Data Transmission" and a lectern UI. I placed a Straight Bolt Massive in a test world and put carts on it (powered and unpowered): nothing moved. The pieces only work as a whole network (station + subnet transitions + the exact piece ports), and without its manual I could not make them run, so **I did not fake it**: the community Wave Bolt pieces are back on the shelf rows inside the building as exhibits, unchanged.

**What I built instead, and tested:** a real vanilla **minecart line** on the lit viaduct deck: **world y 180, from X 7840 (west ward) over the whole original HQ (above every roof) and through the Redstone Mega Building to X 10079**, 2,240 blocks. Lane A (Z 8224) runs east, curves round at the east end (X 10079) and comes back west on lane B (Z 8235). Every second rail is a powered rail on a redstone block (always powered).
* **Station at the west end (X 7840, Z 8224):** a dispenser of 8 chest minecarts above a powered rail with a solid block behind it (that block is what gives a stationary cart its first push). **Press the button** (X 7842, y 181, Z 8224) to send a cart; carts arrive back against a stop block beside the station.
* **Tested on a real 1.21.11 server with the whole line force-loaded:** the cart ran the full 2,240 blocks at about 8 blocks/s (about 280 s), round the curve and back along lane B. Carts bounce off the end blocks, so an unattended cart keeps shuttling.
* Carts only move in loaded chunks: nobody nearby = the cart stops. If you want it to run unattended, force-load the three chunk rows Z 8208..8255 from X 7830 to 10090 (`/forceload add ...`, 256 chunks per command).
* Chest minecarts carry items: load a chest cart by hand (or use the dispenser's carts) and unload at the far end yourself - there is no automatic unloader.

## NOT done / be honest
- The community builds' function is untested (the Furnace Array, Main Storage, magma farms, the Wave Bolt pieces ...); only my three halls and the farm units were run.
- No automatic sugar-cane / villager / mob farms. The furnace array is fed by hand (chests), not by a shared line. The halls are not connected to each other or to the HQ sorters.
