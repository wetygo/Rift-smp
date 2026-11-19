# The Outer Ward - the HQ at 2304 x 1536

The HQ is now **2304 x 1536 blocks** (was 768 x 768). Footprint **X 7808..10111, Z 7808..9343**, every height.

```
 x 7808 ................................................ 10111
 +-------------------------------------------------------+  z 7808
 |  NORTH WARD  (18 buildings)                           |
 +-----------+-----------------------------+-------------+  z 8192
 | WEST WARD | ORIGINAL HQ (768 x 768)     |   ANNEX     |
 | (12 bldgs)| citadel, 6 wings, plaza,    | (Wildezz /  |
 |           | B1-B12, blimp docks         |  Storage    |
 |           |                             |  Tech)      |
 +-----------+-----------------------------+-------------+  z 8960
 |  SOUTH WARD  (18 buildings)                           |
 +-------------------------------------------------------+  z 9343
```
The original base and the annex are unchanged (origin X 8192 Z 8192, every old coordinate still valid). **48 new multi-floor buildings** (3-6 floors each, 12-block rooms, furnished, lit, glowing trim, roof spires on the big ones), avenues with lamp posts, plaza fountains, ~480 trees.

## What every building has
- **Command-block access door** (same `riftbrek:door/<tier>` functions: public / member / leader), 6 wide, with a sign.
- **Real-redstone lamp lines**: a lever and a dust line of 12 cells with a redstone lamp under each cell, on up to three floors of every building (flip the lever, the lamps light). 137 of them, each one has a self-test.
- Rooms on a 12-block grid with arch doorways, furnished by purpose (barracks beds and chests, offices with tables and lecterns, armories and workshops with anvils / smithing / furnaces, infirmaries with beds, mess halls with tables and barrels).
- Ladder shafts through all floors, window rings, lattice lighting.

## Redstone integration
- 3 **Redstone Works** halls in the ward (north, south, west): the full REDSTONE HAVEN (logic lab with NOT / OR / AND / NAND / NOR, hopper clock, three comparator fill meters, sticky-piston curtain), no command blocks. The original HQ already has its Haven (nexus wing), the security control room with the lockdown lamp monitor, and the four wind-chicken launchers.
- Lamp lines in every ward building (above). Test on a real 1.21.11 server: lever flipped, first and last lamp lit; gate command block running (LastExecution > 0).

## Buildings
| building | kind | floors | X | Z |
|---|---|---|---|---|
| Grand Barracks | barracks | 4 | 7848..8048 | 7958..8098 |
| Grand Barracks Rear | dorm | 3 | 7868..8008 | 7828..7918 |
| Academy of Arms | academy | 5 | 8098..8298 | 7958..8098 |
| Academy of Arms Rear | dorm | 4 | 8118..8258 | 7828..7918 |
| Armory and Forge | armory | 3 | 8348..8548 | 7958..8098 |
| Armory and Forge Rear | dorm | 5 | 8368..8508 | 7828..7918 |
| Infirmary and Alchemy | infirmary | 4 | 8598..8798 | 7958..8098 |
| Infirmary and Alchemy Rear | dorm | 3 | 8618..8758 | 7828..7918 |
| Redstone Works N | haven | 2 | 8848..9018 | 7958..8098 |
| Redstone Works N Rear | workshop | 4 | 8868..9008 | 7828..7918 |
| Courts and Records | courts | 5 | 9098..9298 | 7958..8098 |
| Courts and Records Rear | dorm | 5 | 9118..9258 | 7828..7918 |
| Embassy and Guest Hall | guest | 4 | 9348..9548 | 7958..8098 |
| Embassy and Guest Hall Rear | dorm | 3 | 9368..9508 | 7828..7918 |
| Mess Hall and Kitchens | mess | 3 | 9598..9798 | 7958..8098 |
| Mess Hall and Kitchens Rear | dorm | 4 | 9618..9758 | 7828..7918 |
| Great Workshops | workshop | 4 | 9848..10048 | 7958..8098 |
| Great Workshops Rear | dorm | 5 | 9868..10008 | 7828..7918 |
| Market Hall | market | 3 | 7848..8048 | 9060..9200 |
| Market Hall Rear | guest | 3 | 7868..8008 | 9240..9326 |
| Granary and Stores | granary | 4 | 8098..8298 | 9060..9200 |
| Granary and Stores Rear | guest | 4 | 8118..8258 | 9240..9326 |
| Stables | stables | 2 | 8348..8548 | 9060..9200 |
| Stables Rear | guest | 5 | 8368..8508 | 9240..9326 |
| Redstone Works S | haven | 2 | 8598..8768 | 9060..9200 |
| Redstone Works S Rear | workshop | 3 | 8618..8758 | 9240..9326 |
| Observatory | observatory | 6 | 8848..9048 | 9060..9200 |
| Observatory Rear | guest | 4 | 8868..9008 | 9240..9326 |
| Guild Hall | courts | 4 | 9098..9298 | 9060..9200 |
| Guild Hall Rear | guest | 5 | 9118..9258 | 9240..9326 |
| Dormitories | dorm | 5 | 9348..9548 | 9060..9200 |
| Dormitories Rear | guest | 3 | 9368..9508 | 9240..9326 |
| Artisan Halls | workshop | 3 | 9598..9798 | 9060..9200 |
| Artisan Halls Rear | guest | 4 | 9618..9758 | 9240..9326 |
| Library Annex | archive | 5 | 9848..10048 | 9060..9200 |
| Library Annex Rear | guest | 5 | 9868..10008 | 9240..9326 |
| Redstone Works W | haven | 2 | 7838..7983 | 8212..8312 |
| Redstone Works W Annex | dorm | 3 | 8023..8168 | 8212..8312 |
| Hall of Trades | market | 4 | 7838..7978 | 8332..8432 |
| Hall of Trades Annex | dorm | 3 | 8023..8168 | 8332..8432 |
| Garrison West | barracks | 5 | 7838..7978 | 8452..8552 |
| Garrison West Annex | dorm | 3 | 8023..8168 | 8452..8552 |
| Scholars Row | academy | 4 | 7838..7978 | 8572..8672 |
| Scholars Row Annex | dorm | 3 | 8023..8168 | 8572..8672 |
| Veteran Lodge | guest | 3 | 7838..7978 | 8692..8792 |
| Veteran Lodge Annex | dorm | 3 | 8023..8168 | 8692..8792 |
| Engineers Guild | workshop | 4 | 7838..7978 | 8812..8912 |
| Engineers Guild Annex | dorm | 3 | 8023..8168 | 8812..8912 |

## Files
`RIFTBREK_OUTER_WARD.litematic` (three regions, origin X 7808 Z 7808) and the merged region files in `RIFTBREK_WORLD_FILES_X7808_Z7808.zip` (the whole HQ: original + annex + ward + the Pipeline ring in ONE set of files, so nothing can overwrite anything). Not built: ward basements / underground levels (the original B1-B12 stay under the original base), farms, an arena.

## Underground (added)
- **Basements** under all 48 ward buildings (level B1, same floor height as the HQ's B1: world y 24), 6 high, 12-block rooms, furnished, with ladders up to the ground floor in two corners of every building.
- **Tunnel network** (5 wide, 4 high, lit) at the same level: a trunk under each avenue (north ward z 8113 and 7816; south ward z 8887 and 9184; west ward x 8001), link tunnels under the connector roads, stubs into every basement. **Iron-trapdoor hatches** (ladder up) on the roads at every junction (green dots on the map).
- **Connection to the HQ:** the HQ's two N-S B1 tunnels (core x 300 / 470, world X 8492 / 8662) now continue north and south through the HQ wall into the ward. Both ends pass a **member-tier command-block gate** (6 wide) - the HQ's B1 is member-only, so the ward tunnels must not be a way around it. Gates (command blocks): north ward `8489 28 8180` and `8659 28 8180`; south ward z 7808+1152+12 = `8972` at the same two X values. West ward joins via its trunk to the north and south trunks.
- Checked: flood fill of the walking plane in every strip: all basements and tunnels are one connected network (the only cut-offs are the two gates on each side), on a live 1.21.11 server a gate command block runs and the tunnel is open on both sides of the HQ wall.
- **Not built:** underground rails in the ward tunnels (they are walking tunnels), deeper ward levels (B2-B12 exist only under the original base), a tunnel under the annex (east).
- Map: `docs/previews/MAP_UNDERGROUND_B1.png`.
