# Redstone audit of the HQ (live, real 1.21.11 server)

Run with `tools/audit_live.py`, `tools/haven_livetest.py` and `tools/scan_ticks.py` against the final merged region files (`RIFTBREK_WORLD_FILES_X7808_Z7808.zip`).

| device | instances | result |
|---|---|---|
| Command blocks (doors, kit pads, sorters, boards, zone tags, lockdown monitor ...) | 243 | **243 / 243 have their first tick scheduled** (no dormant blocks) |
| Lever + dust + lamp circuits (every ward building, up to 3 floors each) | 137 | **137 / 137 light when the lever is flipped** |
| Redstone Haven (logic gates NOT/OR/AND/NAND/NOR, hopper clock, 3 comparator meters, sticky-piston curtain) | 4 halls (HQ Wildcards wing, ward N, S, W) | **all pass** (every input combination, clock toggles, meters, curtain slides) |
| Redstone Center builds (plate door, delay timer, tripwire trap, auto smelter, night lamp) | 1 | **all pass** |
| Wind-charged chicken launchers | 4 | **4 / 4**: chicken spawns, rider thrown (~3.5 blocks) |
| Sorter hall A (B5) | 1 (oak log, cobblestone, coal routed to the right category chests) | **pass** |
| Security lockdown lamp monitor | 1 | **pass** |
| Mega building: melon + pumpkin observer-piston units, furnace rows (iron, stone) | sample units | **pass** |
| Mod `/rift verify` | 8 probes | **8 / 8 PASS** |

**Bugs found and fixed by this audit**
1. The ward basements overwrote the **ground-floor lamp circuits** (the lamps sit in the ground layer) and the 48 zone command blocks in the ward: both are now placed after the basements are carved. No basements are built under the Haven / Redstone Center halls (their circuits use that layer).
2. The Haven test only force-loaded a small box; the ward halls are wider (fixed).
3. Two gatehouse signs of the mega building were outside its region bounds (moved inside).

**NOT covered / honest limits**
- The community builds in the mega building (Ghast Hydration, Wildez Main Storage, Mob Switch Spires, 72k Magma/Gold Farms, Carrot & Firework Crafters, 2D Furnace Array, the Wave Bolt pieces ...) are exactly as supplied; I cannot test their function. One of them (72k Magma/Gold Farm) has an unsupported sign.
- Sorter hall B, the B7 industry crop plots / smelters, the B8 rail + ice transit and the B11 synthesis hall are command-block / vanilla builds that were checked earlier but not re-run in this audit.
- Nothing was tried with a real player.

**Removed on request:** the Wildezz Full Dam, the three CLM chunk-loader builds, and the Airlander 10 / blimp (docks, ship, `blimp/*` and `admin/blimp_*` functions; the terminal building remains as the Transit Terminal).

**Decoration:** every partitioned room in the wings and the ward now has a type (bedroom, kitchen, library, armory, forge, lab, workshop, shop, classroom, guardroom, ward, stable, storage, office, lounge, hall, dining) with matching working furniture (beds, furnaces / smokers / blast furnaces, brewing stands, anvils, grindstones, looms, stonecutters, bookshelves, lecterns, enchanting tables ...), carpet and lanterns; the ward avenues have benches and flower planters.
