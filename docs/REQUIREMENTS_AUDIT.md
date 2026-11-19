# Requirements audit — everything you asked for, and what is / is not verified

Legend: **DONE+CHECKED** = built and checked by my static/model/simulated tests · **DONE, UNVERIFIED** = built, but only the real game can prove it works · **PARTIAL** · **NOT DONE**.
"Checked" never means "run in Minecraft". Nothing in this project has been run in Minecraft (no game could be started in my sandbox).

## A. Everything you have asked for

| # | request (your words, short) | status | notes |
|---|---|---|---|
| 1 | Fix the data pack and finish it | DONE+CHECKED (logic) / UNVERIFIED (game) | Old pack's real bugs fixed (unparseable enchant SNBT, doors with no redstone output, static books, no player commands …). 760+ functions lint clean; 68+ model-test cases pass. |
| 2 | Finish the schematic, use the concept render | DONE (adapted) | Layout follows the render. Differences: no terrain/river/cliffs; Auto Storage = 2 sorter levels + a 4-floor nexus, not "6 floors". |
| 3 | "Fully functional" base, one schematic, one pack | PARTIAL | One master `.litematic` (HQ + annex quarter, 29 regions) + one data pack. Functionality is unverified in game (see §B). |
| 4 | 3a: citadel "whatever it takes, massive" | DONE+CHECKED | Schematic height raised 224→384 (world Y −64..319). Great spire ≈220 above ground, wall towers ≈140. |
| 5 | Kits, ID books (Minecraft + Discord names), Veil anonymity, leader/royal/visitor, revocation, lockdown, chunk-ban square (safe) | DONE+CHECKED (logic) / UNVERIFIED (game) | Model-tested: stranger, "stolen book", revoked, suspended, visitors, Veil privacy, lockdown. Veil caveat in §C. |
| 6 | Six faction wings, plaza, wall, gatehouse, 12 underground levels, secret Veil tunnels, transit, wind-charge chicken chambers | DONE, UNVERIFIED | All built; reachable on foot (42 locations, 0 disconnected underground pockets). Chicken chambers are manual (lever). |
| 7 | Storage: item sorting, overflow, shulker loaders/unloaders, smelters, autocrafters, farms, kit distribution | PARTIAL - Wildez Main Storage now imported (2026-11-19) but NOT yet wired into the HQ sorter (see §A10) | Sorter = **data-pack driven** (command blocks), 2 halls, overflow bin + alarm lamp. Shulker load/unload = plain hopper stations. Smelters/compactors/crop plots built (crops are command-assisted). **Pure-redstone sorter NOT built; real iron/mob/villager farms NOT built** (B11 has command-driven generators instead — not survival-legit). |
| 8 | Blimp, using the Airlander 10 (built by Krodo) | DONE, UNVERIFIED | Moving blimp = ~1,900 display entities + 6 seats along a lane, 3 docks, boarding, lockdown-aware. Highest-risk system (entity NBT, riding, performance). Not redstone. |
| 9 | Wildezz builds recoloured purple, "mob switches" colour-coded | DONE+CHECKED (files) / UNVERIFIED (game) | RESOLVED: "mob switches" are the **Mob Switch Spire** builds (Overworld/Nether/End, 117x121x117 each) - imported in the 2026-11-19 update at ANNEX_MAP x1080/1207/1334 z484. All three recoloured purple; their own levers colour-coded like every other imported build. |
| 10 | "Take the storage system from the base and use that" | **NOT DONE** | The imported builds are separate pastes; they are **not wired into the HQ sorter**. Needs your decision (which output → which intake). |
| 11 | Add Storage-Tech builds (Gemini TNT, Brewer Chunkloading, Chronostasis, CLM Large) + Wave Bolt zip, test until done | DONE (ported) / UNVERIFIED | 1.19–1.20 files upgraded to 1.21.11 formats; audit shows 0 leftover old NBT. **Chronostasis and Brewer chunk-loading very likely don't work in 1.21.11** (pearl chunk loading removed in 1.21.2). |
| 12 | Credits: Krodo, Storage Tech, Wildezz | DONE | `docs/CREDITS.md` (+ authors from file metadata: hykn55, Nyx_9841, SandCaribou1890, Pando_UwU, Kvil). |
| 13 | ONE schematic | DONE | `RIFTBREK_Vanguard_Headquarters_MASTER.litematic` (data pack must stay separate). |
| 14 | "It didn't fully paste" → full simulated test + full paste method | DONE+CHECKED (simulation) / UNVERIFIED (game) | Cause: Litematica only pastes loaded chunks (4,894 chunks, ~122 M blocks). Delivered: ready-made world region files (block-for-block read-back PASS), 24-zone Litematica method with forceload + per-zone verification, `admin/verify` (9/9 probes pass vs the files). |
| 15 | Don't overwrite my house — avoid it; give coordinates later | **PENDING YOU** | Re-export at a chosen offset once you send X/Z of the house + other builds. |
| 16 | Fully **furnished** | DONE+CHECKED | Towers, citadel floors, terminal, wing rooms, basements, offices, Veil lounge, kit hall (beds, chests, tables+chairs, bookshelves, lecterns, workstations, banners). Art quality = procedural, not hand-detailed. |
| 17 | Rooms, tunnels, message systems | DONE+CHECKED (logic) / UNVERIFIED (game) | Wing basements, tunnels under roads, N-S tunnels, comms room. Messages: radio presets 30-37, book messages 40-42, announcements 43 + bulletin-board signs, history 44, last 45. |
| 18 | BAT systems ... | DONE, UNVERIFIED | See `docs/QUARTERS.md`. Simulated: mail routing (9/9), launch rules. Checked: wiring, lava sealed. |
| 19 | "Cool redstone devices … use sources like Storage Tech Discord / Reddit" | PARTIAL | I cannot reach Discord/Reddit or download files from them here. New original devices added now: perimeter **intrusion alarm** (sculk sensors), **automatic night lights** (inverted daylight sensors), **lockdown/lift buttons** on the control panel. For community designs: download the schematic, send it, I port + credit. |
| 20 | After every message: mention the plan | DONE | Each reply ends with the pending-coordinates plan. |

## B. What is NOT verified (the complete list)

**B1. Anything at all about real Minecraft behaviour** — I only have my own static checks, a model interpreter for the access logic, and a mail/launch/paste simulation.

**B2. 1.21.11 syntax/format I could not execute** (each is isolated so a failure disables only that feature):
- **Registry-checked now** (`tools/registry_check.py`, PrismarineJS minecraft-data 3.119.0 for 1.21.11; command grammar from the 1.21.6 Brigadier tree): all 5,233 block states valid (0 problems); 59,324 data-pack command lines parse (1 rejected); every item/entity/effect/particle/sound id valid (0 unknown). Sorter categories now use explicit item-id lists instead of tags. Stone Factory chest items from a newer game version (cinnabar/sulfur) were swapped for purpur/amethyst stand-ins.
- game rule name `command_block_output` — the only line the checker rejects (1.21.6 grammar vs 1.21.11 rename); isolated, if `/reload` complains run the rule by hand;
- `execute if items …`, `item replace … from block …`, `loot insert … mine`/`loot …`, `ride … mount`, `forceload` via macros, `data modify block … front_text.messages`, `title`/`playsound`/`stopsound`;
- written-book matching: the pack matches **four** possible encodings of a book's title/name — I don't know which one 1.21.11 uses, at least one should match;
- reading page 1 of a Book & Quill for messages (`SelectedItem.components."minecraft:writable_book_content".pages[0]`, string or `{raw:…}`);
- display-entity transformation NBT + `teleport_duration` for the blimp; armor-stand seats; `RootVehicle`/`Passengers` bookkeeping;
- sign text format in tile entities; `crafter` orientation state; macro function calls from command blocks (`function … with storage …`);
- the exported **region files** (chunk layout, lighting recompute, missing heightmaps): read back with an independent reader validated on a real 1.19.2 save, but never opened by the game.

**B3. Behaviour that needs the game** — door open/close timing and radius; sorter flow and the alarm lamp; hopper→furnace chains; crafter pulse timing (4 on / 16 off); crop-plot harvest; powered-rail ring and curves; blue-ice lane; wind-charge dispenser vs chickens; lava next to glass; elytra launch at 1,000 blocks above the build limit; mail dispenser transfer; sculk-sensor → impulse command block; daylight lamps; bulletin-board sign refresh; blimp boarding.

**B4. Performance** — ~1,900 blimp entities; ~134 always-on command blocks; loading 4,894 chunks / 122 M blocks; lighting recalculation on first load.

**B5. Imported builds** — none tested in 1.21.11. Version drift (1.19→1.21.11) can change redstone behaviour; Chronostasis/Brewer chunk-loading is expected to fail.

## C. Known limitations / design decisions you may want to change
- **Veil anonymity is partial**: invisibility + hidden nametag team + no name in books/logs/messages — but vanilla `/msg`, the tab list and join/leave messages still show real names. A server-side mod would be needed for full anonymity.
- **Tailgating**: anyone standing next to an authorised player passes a door (radius 3, or 9 for 12-wide gates).
- **OPs bypass everything**; command blocks need cheats/`enable-command-block`.
- **Singleplayer + Essential**: guests are not OP — intended — but I have not verified `/trigger` works for invited guests.
- Treasure vault chests give very large free wealth by design (you asked for it); it is easy to remove.
- Creator-inspired kits are my own loadouts, not canon.
- Annex builds only partially recoloured by intent (Storage-Tech/Wave Bolt keep original colours).

## D. Open decisions that only you can make (waiting on you)
1. House coordinates + other builds → where to put the base (§A15).
2. Which imported-build output should feed which HQ intake (§A10).
3. ~~What exactly "mob switches" are~~ RESOLVED (§A9: the Mob Switch Spire builds, imported).
4. Do you want the Storage-Tech/Wave-Bolt builds recoloured purple too?
5. Do you want me to port further community builds (send the files)?


## E. 2026-11-19 update (new litematics, real-redstone chicken launcher, concept-image redesign request)
You sent a new concept render and a zip of litematics, and asked to remake the whole base bigger, matching the render, with **real functional redstone** (not command-block logic) for a wind-charge + Instant Damage II chicken launcher, and 3 aerial blimp docks each housing 4 blimps. Status:

- **Imported** (2026-11-19, 54 annex builds total now): **Wildez Main Storage**, **Mob Switch Spire** x3 (Overworld/Nether/End - these ARE the "mob switches" from §A9, now resolved), Sipover Competition Tank, 2D 1728 Furnace Array, 72k Magma/Gold Farm v2, CLM Small/Medium (CLM Large was already in). All recoloured purple, levers colour-coded, credited to Wildezz.
- **Chicken launcher rebuilt as genuinely real vanilla redstone** (no command blocks): a wind-charge dispenser (lever-fired) launches the chicken up the glass shaft; climb the outside ladder and pull a second lever to fire a dispenser loaded with **Splash Potion of Harming II (Instant Damage II)**, which drops it for feathers/raw chicken into a 3x3 hopper floor -> chest. **I tried an automatic version first** (an "observer line" carrying the launch pulse up to the kill dispenser with no second lever) **and tested it on a real 1.21.11 server - it does not work**: stacked observers do not reliably see a dispenser's "triggered" flicker as a state change. I reverted to the two-lever version because it's the one I could actually verify (lever -> adjacent dispenser fires, confirmed by item count on a live server).
- **3 aerial blimp docks, 4 berths each**: this was already built (not new this update) - `riftbrek:build_wings.blimp()`, docks at the terminal/plaza/checkpoint lanes, `BLIMP_DOCK_Y = GY+180`. 2 of the 4 berths per dock are baked-in static parked Airlander-10 hulls (0 entities each); the other 2 are "sockets" the data pack's one moving Airlander (~1,900 display entities) cycles through, with `admin/blimp_park_<dock>` able to spawn extra static ships into them. All 12 berths are NOT simultaneously moving ships - see docs/BLIMP_DOCKS.md for why (entity count).
- **Fixed while testing**: a real `validate.py` bug (glass was wrongly treated as "not solid enough" to support signs/ladders/banners, when real vanilla glass is a full sturdy block) causing false positives; two genuine placement bugs in the aerial docks (a berth sign standing past the edge of its own floor disk, a dock-label sign getting silently overwritten by a later berth's floor disk) - both pre-existing, not from this change, now fixed. Full rebuild: 0 lint errors, 0 schematic errors, 0 disconnected pockets, 0 consistency errors; 1 cosmetic sign-support issue remains **inside the unmodified 72k Magma Farm v2 file itself** (not touched, since it's someone else's build as supplied).
- **NOT done this update** (too large for one pass, see §D below): wiring Wildez Main Storage into the HQ sorter; a ground-up "bigger" redesign of the whole base to match the new render's exact look (the render shows a hex/diamond-plaza layout with corner towers - the current base is the earlier render's square-wall layout; reshaping it is a major structural change, not a patch).

## F. New open decisions (2026-11-19)
6. Full redesign to the NEW render: do you want the existing base reshaped to match it exactly (large, multi-session project), or kept as-is with the new builds added onto it (current state)?
7. 3 aerial docks x 4 *simultaneously flying* blimps = ~23,000 display entities app wide, likely to lag most servers badly. Current design keeps 1 ship actually moving + up to 11 static/parkable. Confirm that's acceptable, or say if you want more moving at once (and accept the performance risk).
8. Wildez Main Storage -> HQ sorter wiring: which output(s) of that build should feed which HQ intake?

## G. 2026-11-19 (later): 12-ship orbiting fleet; storage wiring blocked by distance
- **Fleet (built, tested on a real server)**: `admin/fleet_on` spawns 12 extra Airlander-10 hulls (4 per aerial dock, ~1,900 entities each = ~23,000), each continuously orbiting its own dock on a 16-point circle (precomputed; no trig in commands). Per-dock control: `admin/fleet_on_a|b|c`, `admin/fleet_off*`. Driven by a repeating command block under dock B. Verified on a live 1.21.11 server: spawned entities moved along the circle when the tick function ran. **Scenery only** - not rideable (only the original dock-to-dock ship has seats). Start with one dock and watch TPS. Function ids are lowercase (`fleet_a_on`): an uppercase dock letter in a first draft would have been an invalid resource path.
- **Physical hopper line to Wildez Main Storage: NOT built, and not sensible as asked.** Sorter A sits at local x560 z472 y-4 (underground, inside the HQ footprint). Wildez Main Storage was placed at annex X1629 Y32 (surface, ~1,070 blocks east, outside the HQ). A literal hopper chain would be ~1,000+ hoppers. Realistic options: (a) move Wildez Main Storage next to the HQ storage nexus and wire a short real hopper run (needs its input/output tile positions inspected); (b) a powered-rail/hopper-minecart highway; (c) the software bridge. Needs your pick.
- **Full reshape to the new hex-plaza render: NOT done** (separate large redesign).

## H. Found by running the new build on a real 1.21.11 Fabric server (2026-11-19)
- **Wildez Main Storage entities were ~160 blocks out of place** (its region has a negative Z size; entity positions weren't shifted with the blocks, so the item-frame sorting filters and copper golems floated south of the build). Fixed in `annex.py`; entities now sit inside the build. Frame support check: 274/372 against a solid block with the correct mapping vs 117 and 47 for the alternatives.
- **`minecraft:chain` in the parked airships** (renamed `iron_chain` in 1.21.11) made 9 dock chunk sections log "Unknown registry key" errors. Fixed.
- **The `admin/verify` dock-A probe looked at ground level** while the controller is in the air at the dock; fixed.
- **Purple recolour created blocks that do not exist** (`purple_sand`, `purple_mushroom_block`): recolour now only applies to real dyed families.
- Result: `/rift verify` 9/9 on a live server loading the full world (5,688 chunks, 56,108 tile entities, 1,419 entities); data pack loads 793 functions with no errors; registry check 0 block-state problems. Still NOT tested with a real player in game.
- Mod is now v1.0.4 (delete older riftbrek jars first).

## I. Ithaca City (2026-11-19, later)
New 768 x 768 circular walled capital (`docs/ITHACA_CITY.md`): Royal Palace, Capitol, six faction HQs, market, library, barracks + arenas, industrial district, harbour + river, underground rail/vault/sorters/Veil tunnels. 35 command-block gates on the existing door functions, two sorter halls on a hopper intake shaft, minecart loop. Verified: 0 registry/support/gate errors, 37/37 key places reachable, region files read back identical, loads on a real Fabric server, `/rift verify city` 9/9. **Not built:** flying machines, automatic farms (farms are manual), villagers, any hand-designed interiors. **Not tested with a player.**
- Mod v1.0.5: `/rift verify city`, `/rift city <x> <z>`, `cityX/cityZ/autoCity` config, Ithaca sorter chunks force-loaded (tracked, same safe removal rules).
- The wind-charged chicken launcher (`build_launcher.py`, not written in this conversation) had every repeater backwards; fixed and verified on a live server (a zombie launched ~3.5 blocks; a glass roof had been blocking the burst, so the roof was removed). See `docs/LAUNCHER.md`.
- The older HQ "chicken chamber" (my earlier wind-charge-item + Harming II two-lever design) is NOT the proper launcher; the HQ still has that version.

## J. Redstone Haven (2026-11-19, later)
Ground floor of Ithaca's industrial district is now a hall of real redstone (`docs/REDSTONE_HAVEN.md`): 5 logic gates, hopper clock, 3 comparator fill meters, piston curtain. `tools/haven_livetest.py` flips every lever combination on a real 1.21.11 server and reads the lamps back: all 29 checks pass, after fixing four real design errors found by the test (dust on pistons pops off; lamps touching a strongly powered lamp light up; lever one block above its dust line; stale initial states). Interpreted "redstone city" as Ithaca's industrial redstone district: say so if you meant something else. Not built: flying machines, automatic crop/mob farms, XOR/adders/memory cells.

## K. The Pipeline (2026-11-19)
Barrier wall named "The Pipeline" (`docs/THE_PIPELINE.md`): ring 1 around the HQ + Ithaca (5392 x 1296, 28 region files, none shared with them), ring 2 around the user's main base (256 x 304, region files r.-4.0/r.-4.1 which also hold their house, so merge-only). Rail line on top (13,308 + 1,052 rails), 4 gatehouses each, towers, lettering. Verified: read-back identical, mod `/rift verify pipeline|mainwall` 7/7, minecarts run both rails, merge tool keeps house chunks. NOT verified: walking it, a full lap, how it meets real terrain, the y 77 ground-line assumption for the main-base ring. Interpretation: "my main base" = the house box given earlier.

## L. HQ redo (Redstone Haven in the HQ, 6-floor Auto Storage, launchers, security control, blimps)
- HQ now contains a Redstone Haven (nexus wing, local x70 z565, 29/29 live circuit tests: `dist/haven_tests_hq.json`), a security control room with a real lockdown lamp monitor, 4 wind-chicken launchers beside the blimp chambers, the 6-floor nexus, and the old base content unchanged.
- **Found and fixed while testing:** (1) every previously exported region file had *dormant command blocks* (a repeating command block needs a scheduled tick; the exporter wrote none), so doors, sorters, the blimp controller and kit pads did nothing until re-triggered. Exporter now writes `block_ticks`; all shipped region files were regenerated. (2) Launchers: glass roof blocked the wind burst (see LAUNCHER.md); fixed and re-tested live in the HQ and Ithaca.
- Blimps: live-tested earlier (spawn, move along the lane through all phases, passenger carried, ~5 ms/tick).

## M. Enlarged HQ (2304 x 1536) - Outer Ward
- 48 new multi-floor buildings in three strips around the original base (see docs/OUTER_WARD.md), each with command-block doors and real-redstone lamp lines; 3 full Redstone Works (Haven) halls. Region files exported block-for-block verified (8,064 chunks, 0 mismatches), merged with the original base and the Pipeline ring into ONE file set (tools/merge_regions.py, no chunk collisions).
- Live test (real 1.21.11 server): ward gate command block runs; lamp line lights when its lever is flipped.
- The Pipeline was enlarged (origin 7680, 5648 x 1808) to enclose the ward; mod 1.0.7 default pipeX/pipeZ = 7680.
- Not live-tested: the three ward Haven halls (same module as the verified ones), walkability of the ward (no reach.py run), the annex is absent from the top-view render (render script limitation, the files contain it).
- Not built: ward basements, farms, arena; ward buildings are plain boxes compared to the concept art.
