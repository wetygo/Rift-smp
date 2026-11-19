# Modrinth listing - RIFTBREK Vanguard (ready to paste)

## Before you publish - read this
1. **Upload only `riftbrek-vanguard-1.0.4.jar`.** Do NOT upload the base's region files, the standalone world or `RIFTBREK_MOD_PACKAGE.zip`: they contain other people's builds (Wildezz, the Storage Tech Discord builders, SandCaribou1890 / Pando_UwU / Kvil, Nyx_9841, hykn55) that you have no permission to redistribute. Ask each builder before sharing those anywhere public.
2. **Krodo's Airlander 10:** the jar's data pack contains the hull of Krodo's Airlander 10 as ~1,900 display-entity definitions (`blimp/spawn`, the orbiting fleet). Get Krodo's OK (or remove the blimp functions) before publishing, and credit them on the page.
3. **The mod does nothing visible without the base**, which isn't distributed with it. State that clearly (see description) so people don't think it's broken. Consider describing it as "for the RIFTBREK server/world".
4. **Real-name references:** the "creator-inspired kits" use real players' names (FlameFrags, Wemmbu, TheobaldTheBird, ParrotX2, ManePear, SpokeIsHere). Check they are fine with that, or rename the kits.
5. It has never been played with a real player; mark the first release **Beta** (not Release).

## Project fields
| field | value |
|---|---|
| Name | RIFTBREK Vanguard |
| URL slug | riftbrek-vanguard |
| Summary (<=256 chars) | Server-side headquarters toolkit: factions, credential books, access doors, kits, radio and book messages, lockdown, item sorting, blimps and member-quarters systems. Built-in data pack, no resource pack needed. |
| Project type | Mod |
| Client / server | Server required, client optional (works in singleplayer) |
| Categories | Adventure, Management, Utility |
| License | All Rights Reserved (or pick one - this matches `fabric.mod.json`) |
| Loader | Fabric |
| Game version | 1.21.11 |
| Required dependency | Fabric API |
| Version number | 1.0.4 |
| Release channel | Beta |
| Java | 21 |
| Source / issues URL | your GitHub repo (add it; Modrinth asks for these) |

## Description (paste as Markdown)
**RIFTBREK Vanguard** is a server-side toolkit for the RIFTBREK Vanguard headquarters: six factions, credential and ID books, command-block access doors, faction kits, radio and book messaging, lockdown, item sorting and farms, moving airships and a member-quarters system (room alarms, emergency buttons, book mail, lava-curtain privacy, elytra launch pads).

The mod carries its own data pack (always enabled) and sets itself up: it stores the base origin, force-loads the machines it owns, and adds `/rift origin <x> <z>` and `/rift verify`.

**This mod needs the RIFTBREK base to be present in the world** (a separate build, not included here). Without it you get the commands and data pack but nothing to use them on.

### Requirements
- Minecraft 1.21.11, Fabric Loader 0.17.3 or newer, Fabric API, Java 21
- Cheats / operator rights for admin commands

### Commands
- `/rift origin <x> <z>` - tell the mod where the base was pasted (saved to `config/riftbrek.properties`)
- `/rift verify` - checks 9 landmark blocks (loads the chunks itself)
- Players: `/trigger rb_req set <N>` (1 ID book, 2 faction kit, 9 help, 30-37 radio calls, 40-45 messages)
- Operators: `/function riftbrek:admin/register {mc:"Name",discord:"handle",faction:"birds"}` and the rest of the `admin/` functions

### Known limits (beta)
Not yet tested with real players. Veil anonymity is partial (vanilla `/msg`, the tab list and join messages still show names). Doors use proximity (radius 3, or 9 for wide gates), so people standing next to an authorised player can pass. OPs bypass everything. The 12-ship blimp fleet is about 23,000 entities: enable one dock at a time.

### Credits
Airlander 10 by **Krodo**. Base builds by **Wildezz**, the **Storage Tech Discord** builders (hykn55, Nyx_9841), and **SandCaribou1890 / Pando_UwU / Kvil** (Wave Bolt). Mod and data pack by the RIFTBREK team.

## Changelog for 1.0.4
- Data pack and base re-checked against Minecraft 1.21.11 data (0 block-state problems).
- `/rift verify` runs in the mod and reports to the player; works from any dimension.
- Force-loads are tracked per world; the mod only removes chunks it added.
- Faction names are validated before registering; suspended Veil members lose invisibility.
- Fixed Wildez storage entity offset, `iron_chain` in airship hulls, mail predicates, dock verify probe.
- New: real-redstone wind-charge + Instant Damage II chicken launcher; 12-ship orbiting blimp fleet (`admin/fleet_on`).
