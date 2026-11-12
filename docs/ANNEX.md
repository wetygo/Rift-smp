# Annex pack — imported builds, now INSIDE the master schematic

**The MASTER `.litematic` now contains 29 regions:** the HQ, an "Annex Plateau" (grass over stone, east of the wall, x ≥ 768) and **27 imported builds** placed on it. One paste brings everything. Exact positions: `docs/ANNEX_MAP.md` (auto-generated). The same builds are also in `dist/annex/` as separate files.

| group | builds | author (from file metadata) | treatment |
|---|---|---|---|
| Wildezz | Basic Furnace Array, Carrot & Firework Crafters, The Stone Factory, Full Dam, Ghast Hydration Facility, CLM Large | Wildezz | recoloured purple, switches colour-coded |
| Storage Tech | Gemini TNT Storage v1.4.1 / v1.2.2 | hykn55 | 1.21.11 port only (original colours) |
| Storage Tech | Brewer Chunkloading + Storage, Chronostasis Station | Nyx_9841 | 1.21.11 port only |
| Wave Bolt (zip, v1.0.4) | 18 modules: straight / massive / corner / diagonals / 4-Hexit intersections, bolt station, subnet + diagonal transitions, flying-machine builders (floor placer, block pusher/puller, lane splitter, rail curvers) | SandCaribou1890, Pando_UwU, Kvil | 1.21.11 port only |
| Airlander 10 | the moving blimp | Krodo | see bottom |

**Old files were upgraded.** Several were saved in 1.19–1.20.4 (data versions 3120/3465/3700): item stacks (`Count`/`tag` → `count`/components), JSON sign text and custom names, item-frame data, missing tile-entity ids and `chain` → `iron_chain` were rewritten for 1.21.11 (`tools/legacy.py`). Dropped: banner patterns, written-book pages (31 items), unsupported item tags. `tools/validate.py` re-reads every region and checks for leftover old-format NBT, tile-entity/block mismatches, bad item counts and unsupported signs: 0 errors.

**Read this before relying on the older builds:** they were designed for 1.19–1.20. Minecraft 1.21.2 removed ender-pearl chunk loading, and other redstone/engine behaviour changed between 1.20 and 1.21.11. **Chronostasis Station and Brewer Chunkloading very likely will not keep chunks loaded in 1.21.11** (use `/forceload`, see INSTALL). I did not recolour the Storage-Tech or Wave Bolt builds because their colours may encode lanes; say the word and I will recolour them too.

# (earlier notes) Wildezz builds, recoloured, plus the Airlander 10

Source files were supplied by you. **Original author per file metadata: "Wildezz"** (all five). Their designs are NOT mine:
credit them, and make sure you have the right to redistribute or modify them before publishing anywhere.
`tools/annex.py` produced the files in `dist/annex/`; the originals are not touched.

| file (`dist/annex/…`) | original | size X×Y×Z | notes |
|---|---|---|---|
| `RIFTBREK_Basic_Furnace_Array_PURPLE.litematic` | Basic Furnace Array | 30×18×58 | furnace/blast-furnace array with hopper/crafter feed (signs: FUEL INPUT, ITEM INPUT) |
| `RIFTBREK_Carrot__Firework_Crafters_PURPLE.litematic` | Carrot & Firework Crafters | 63×35×41 | crafters + dispensers + comparator logic (signs: FIREWORK CRAFTERS, MAINTENANCE) |
| `RIFTBREK_The_Stone_Factory_PURPLE.litematic` | The Stone Factory | 109×87×103 | 1,480 tile entities, 18 entities (minecarts, item frames, a happy ghast); signs: FULL SHULKER BOX INPUT/OUTPUT |
| `RIFTBREK_Full_Dam_PURPLE.litematic` | Full Dam (White Cliff Technologies hydro-power facility) | 419×145×294 | switches: FLAG, FAN, DAM MASTER, EMERGENCY SHUTDOWN, elevator buttons |
| `RIFTBREK_Ghast_Hydration_Facility_PURPLE.litematic` | Ghast Hydration Facility (sorted-storage hall: 1,801 dispensers, 1,601 shelves, 288 chests) | 352×58×464 | signs: 16 COLORED, SLABS, WOOD STAIRS, GLASS, LIGHTS … |

## What "purple" did
* Warm colours (red, orange, yellow, pink, brown, magenta) → **purple**; cool colours (lime, green, cyan, light blue) → **blue**; white, black, grey kept. Applies to wool, concrete, concrete powder, terracotta, carpet, beds, shulker boxes, candles, banners, stained glass.
* Wood (mangrove, spruce, dark oak, pale oak, bamboo …): planks → purple terracotta, logs/stripped → purple concrete, stairs/slabs → **purpur**, fences/gates/trapdoors/doors/buttons/signs/shelves → crimson (same shapes and states, so redstone behaves the same).
* Copper → amethyst / purpur / tinted glass / iron bars / iron trapdoors; copper bulbs → redstone lamps; oxidised copper → blue concrete. Red sandstone, resin, red nether brick → polished blackstone / purpur. Shroomlight, froglight, glowstone → sea lantern. Leaves → cherry.
* **Not in 1.21.11:** the Stone Factory / Furnace Array / Carrot Crafters were saved in a newer game version (data 4903) and use `cinnabar` and `sulfur` blocks. Those became polished-blackstone-brick / purpur / purple concrete (decorative only). `potent_sulfur` tile entities were dropped (31 in the Stone Factory) — **check that factory in-game**: if those blocks did something, it won't work.
* Hoppers, dispensers, droppers, crafters, comparators, observers, pistons, slime/honey, rails, magma/soul sand, TNT, water/lava are untouched so the redstone is unchanged. Chests, barrels and shelves keep their wood look because they carry items.
* Structure and tile entities (items, signs) are preserved; I checked that every air/solid cell is identical to the original (except resin clumps → air).

## Switches ("mob switches") — colour coded
Every lever is grouped with the levers within 6 blocks of it; each group gets its **own accent colour** (red, orange, yellow, lime, cyan, light blue, magenta, pink, white, green), applied to the lever's support block and the decorative blocks in the 3×3 around it. Full Dam has 11 switch groups, the Stone Factory 2, the Furnace Array 2, the Carrot Crafters 1. Buttons and tripwire hooks are not recoloured. If by "mob switches" you meant something specific (for example the on/off switches of one particular farm), tell me which and I'll target exactly those.

## Storage
These builds come with their own sorters/storage (the Ghast Hydration Facility *is* a large sorted-storage hall). I have **not** rewired them into the HQ's B5/B6 sorter halls: the HQ is 768×768 and fully built, and these facilities are 30–464 blocks across, so they are separate pastes beside the base. To feed items into the HQ storage, bring items to the Storage Nexus intake chests (`docs/COMMAND_HANDBOOK`/`MODULE_INDEX`) by hand, with a hopper-minecart or ice-boat line you add, or tell me which facility output should connect to which intake and I'll add a link line.

## Placement (suggested; all outside the HQ wall)
Paste the HQ master first, then these with Litematica, same Y as the ground (annex local Y 0 = HQ ground level, i.e. world Y 32 when the HQ origin is at Y −64). Offsets are in blocks from the HQ origin (local x, z):

| annex | place at (x, z) | footprint |
|---|---|---|
| Stone Factory | x 800, z 20 | 109 × 103 |
| Furnace Array | x 800, z 160 | 30 × 58 |
| Carrot & Firework Crafters | x 800, z 240 | 63 × 41 |
| Full Dam | x 940, z 20 | 419 × 294 |
| Ghast Hydration Facility | x 940, z 380 | 352 × 464 |

(Positive x is east, positive z is south, as in the HQ. Pick any other spot if you prefer; none of the pastes overlap.) Each file is a separate Litematica placement; paste with replace behaviour = All on a flat/void area.

## Airlander 10 (the blimp)
The `.zip` you sent is a **1.19.2 world save**, not a schematic (the ship was built by **Krodo**). I extracted the ship from it (55 × 32 × 92 blocks, white concrete hull with smooth-quartz trim, cabin with beds/levers/buttons; the 4 command blocks in it were empty). It is used as the moving blimp: ~1,900 `block_display` boxes (black accents → purple) + 6 seats, driven by `riftbrek:blimp/*` along the west lane (x=250) between docks A (z 110), B (z 480), C (z 700). Cabin interior details (doors, beds, buttons) are left out of the moving version. Start it with `/function riftbrek:admin/blimp_on`. Untested; if ~1,900 entities lag your client, run `/function riftbrek:admin/blimp_off`.
