# The Redstone City

A separate 768 x 768 city: **origin X 11264, Z 8192** (world X 11264..12031, Z 8192..8959), region files `r.22.16 r.22.17 r.23.16 r.23.17`. A 6 x 6 street grid (14-wide lit avenues) where every block is a working redstone build:

| block | what |
|---|---|
| middle 2 x 2 | **Redstone Plaza**: red concentric rings, the **Core Tower** (125 high, copper + red concrete, ladder, redstone-block crown and spire) and a real **hopper clock** (6 lamps) |
| NW | **Redstone Haven** (logic gates NOT/OR/AND/NAND/NOR, hopper clock, 3 comparator fill meters, sticky-piston curtain) |
| N, 2 blocks wide | **Redstone Center** (floor 1 Haven; floor 2: plate door, delay timer, tripwire trap, auto smelter; roof: night lamp) |
| NE | **Furnace Array** yard (4 x 20 hopper-fed smelters, iron / copper / gold / stone) |
| NE | **Farm yard** (observer + piston melon and pumpkin units) |
| NE | **Storage Vault** yard (288 chests + 3 comparator fill meters) |
| the other 26 blocks | **lofts**: 3-6 floor furnished buildings with command-block doors and lever + lamp-line circuits on up to three floors |
| south avenue | **Express line**: the same minecart line as the HQ bolt line (powered rails on redstone blocks, a dispenser of chest minecarts and a button at the west end X 11284, loop at the east end X 12003) |

All circuits are the modules that were live-tested in the HQ; in the new city I re-tested on a real 1.21.11 server: **a melon unit in the farm yard (5 melon slices into its chest), the iron furnace row (108 iron ingots in ~35 s) and the express line (a chest minecart ran east at 8 blocks/s)**. The Haven, Redstone Center and lofts' lamp circuits were not re-run here (same code).

Key coordinates: Core Tower `11648 32 8576`; plaza hopper clock `11564 32 8632`; farm yard first melon unit stem `11806 32 8242` (fruit cell `11807 32 8242`, chest `11807 30 8242`); express station dispenser `11284 33 8835` (button `11286 33 8835`).
Not built: walls, underground levels, villagers; the city is not connected to the HQ's bolt line or tunnels.
