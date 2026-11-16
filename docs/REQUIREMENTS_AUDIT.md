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
| 7 | Storage: item sorting, overflow, shulker loaders/unloaders, smelters, autocrafters, farms, kit distribution | PARTIAL | Sorter = **data-pack driven** (command blocks), 2 halls, overflow bin + alarm lamp. Shulker load/unload = plain hopper stations. Smelters/compactors/crop plots built (crops are command-assisted). **Pure-redstone sorter NOT built; real iron/mob/villager farms NOT built** (B11 has command-driven generators instead — not survival-legit). |
| 8 | Blimp, using the Airlander 10 (built by Krodo) | DONE, UNVERIFIED | Moving blimp = ~1,900 display entities + 6 seats along a lane, 3 docks, boarding, lockdown-aware. Highest-risk system (entity NBT, riding, performance). Not redstone. |
| 9 | Wildezz builds (5) recoloured purple, mob/"switches" colour-coded | DONE+CHECKED (files) / UNVERIFIED (game) | **Interpretation risk:** I read "mob switches" as *levers*; each lever group got its own accent colour. If you meant specific farm switches, tell me which. |
| 10 | "Take the storage system from the base and use that" | **NOT DONE** | The imported builds are separate pastes; they are **not wired into the HQ sorter**. Needs your decision (which output → which intake). |
| 11 | Add Storage-Tech builds (Gemini TNT, Brewer Chunkloading, Chronostasis, CLM Large) + Wave Bolt zip, test until done | DONE (ported) / UNVERIFIED | 1.19–1.20 files upgraded to 1.21.11 formats; audit shows 0 leftover old NBT. **Chronostasis and Brewer chunk-loading very likely don't work in 1.21.11** (pearl chunk loading removed in 1.21.2). |
| 12 | Credits: Krodo, Storage Tech, Wildezz | DONE | `docs/CREDITS.md` (+ authors from file metadata: hykn55, Nyx_9841, SandCaribou1890, Pando_UwU, Kvil). |
| 13 | ONE schematic | DONE | `RIFTBREK_Vanguard_Headquarters_MASTER.litematic` (data pack must stay separate). |
| 14 | "It didn't fully paste" → full simulated test + full paste method | DONE+CHECKED (simulation) / UNVERIFIED (game) | Cause: Litematica only pastes loaded chunks (4,894 chunks, ~122 M blocks). Delivered: ready-made world region files (block-for-block read-back PASS), 24-zone Litematica method with forceload + per-zone verification, `admin/verify` (9/9 probes pass vs the files). |
| 15 | Don't overwrite my house — avoid it; give coordinates later | **PENDING YOU** | Re-export at a chosen offset once you send X/Z of the house + other builds. |
| 16 | Fully **furnished** | DONE+CHECKED | Towers, citadel floors, terminal, wing rooms, basements, offices, Veil lounge, kit hall (beds, chests, tables+chairs, bookshelves, lecterns, workstations, banners). Art quality = procedural, not hand-detailed. |
| 17 | Rooms, tunnels, message systems | DONE+CHECKED (logic) / UNVERIFIED (game) | Wing basements, tunnels under roads, N-S tunnels, comms room. Messages: radio presets 30-37, book messages 40-42, announcements 43 + bulletin-board signs, history 44, last 45. |
| 18 | BAT systems: ① elytra launcher (1000 up) ② control-room alarm to all/one room ③ emergency button per room ④ dispenser book mail by room number ⑤ lava-curtain window privacy ⑥ blown-up treasure vault | DONE, UNVERIFIED | See `docs/QUARTERS.md`. Simulated: mail routing (9/9), launch rules. Checked: wiring, lava sealed. |
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
3. What exactly "mob switches" are (§A9).
4. Do you want the Storage-Tech/Wave-Bolt builds recoloured purple too?
5. Do you want me to port further community builds (send the files)?
