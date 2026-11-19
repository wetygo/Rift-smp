# Redstone Center (HQ, north ward)

A 3-floor building of **complete, working vanilla redstone builds** (no command blocks). World X 8848..9048, Z 7958..8098 (ward N, building "REDSTONE CENTER"). Walk in through the south door (public tier), signs name every build.

| floor | builds |
|---|---|
| 1 (ground) | **REDSTONE HAVEN**: logic lab (NOT, OR, AND, NAND, NOR with levers + lamps), hopper clock (2 hoppers + comparator, blinking lamps), 3 comparator fill meters, sticky-piston curtain |
| 2 | **Plate door** (iron door opened by two pressure plates), **delay timer** (lever -> 4 repeaters -> lamp after ~1.6 s), **tripwire trap** (hooks + string, two dispensers with arrows), **auto smelter** (ore chest -> hopper -> furnace <- coal hopper, ingots out to a chest) |
| roof | **Night lamp** (inverted daylight detector + lamp, lights after dark) |

Coordinates (world): plate door `8862 44 7972` (plate `8862 44 7971`), delay timer lever `8882 44 7972` lamp `8889 44 7972`, tripwire string `8919 44 7972`, smelter output chest `8948 44 7972`, night lamp `8865 68 7974`.

**Tested on a real 1.21.11 server (each one):** plate door opens when a mob stands on the plate; the timer lamp stays off for ~1 s and then lights; the tripwire fires arrows when a mob crosses; the smelter turned the raw iron into iron ingots (7 in ~45 s); the night lamp lights at midnight and goes off at noon. The Haven circuits use the same module that passed 29/29 earlier; the ward copy was not re-run.

**Bug found:** the daylight sensor needs a block entity (`daylight_detector`); without it nothing ticks and the lamp never lit. Fixed.

**Not built** (be aware): item sorter (the HQ has command-based sorter halls instead), observer/flying machines, piston doors, RS latch / flip-flops, calculators, farms, TNT. Honest scope: 5 new builds + the 4 Haven modules, not an encyclopedia.
