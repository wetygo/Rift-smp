# The Pipeline

A continuous barrier wall, 16 blocks thick and 71 high, with a **powered-rail minecart line running along the whole top** (that is the "pipeline"), a pipe-shaped band along the outer face, four gatehouses, towers, and "THE PIPELINE" spelled out in glowing blocks above every gate. Two rings:

1. **The Pipeline (HQ + Ithaca)**: one ring around both the RIFTBREK headquarters and Ithaca City. Outer faces **X 7680..13327, Z 7680..9487** (5,648 x 1,808), origin 7680 / 7680, 928 chunks in **28 region files** (it was enlarged so it also encloses the Outer Ward; its files are now merged into the HQ file set, see OUTER_WARD.md): `r.15.15, r.15.16, r.15.17, r.15.18, r.16.15, r.16.18, r.17.15, r.17.18, r.18.15, r.18.18, r.19.15, r.19.18, r.20.15, r.20.18, r.21.15, r.21.18, r.22.15, r.22.18, r.23.15, r.23.18, r.24.15, r.24.18, r.25.15, r.25.18, r.26.15, r.26.16, r.26.17, r.26.18`. Install them only through the merged HQ file set (they share file names with the ward).
2. **The Pipeline (main base)**: a second ring around your own main base (the house box X -1718..-1668, Z 394..490). Outer faces **X -1824..-1569, Z 288..591** (256 x 304), 66 chunks in **2 region files**: `r.-4.0`, `r.-4.1`. **Those two files hold your house. Never copy them over your world; install them only with `MergeBase.java`** (below). The ring is lifted by 45 so its ground line is y 77 (the bottom of your house box); change it by asking for a re-export.

A single wall around the HQ/Ithaca *and* your main base is impossible (they are ~10,000 blocks apart), hence two rings with the same name and design.

## What each ring has
- Wall: weathered deepslate/blackstone bricks, walkway on top (10 wide) with lanterns, crenellated outer parapet, glowing strips, purple band, a pipe band (polished basalt with glowing flanges and lamps) on the outer face.
- Rail line: powered rails on the walkway centre, a redstone block under every third rail, curved rails at the four corners: **13,308 rails** on the big ring, 1,052 on the main-base ring. Minecarts run it at about 8 blocks per second.
- 4 gatehouses (middle of each side): outer checkpoint = `public` tier (visitors), inner checkpoint = `member` tier, both 12 wide, command-block doors on the existing `riftbrek:door/<tier>` functions (lockdown closes them). A ladder beside each gate corridor leads up to the walkway.
- Towers: 4 corner towers + towers every 192 blocks (N/S) / 144 blocks (W/E), 100 high, hollow; the rail line tunnels through them. Big ring: 78 towers.
- "THE PIPELINE" in glowing blocks above every gate, readable from outside.

## Key places (world X Y Z)
**Big ring**
| place | coordinates |
|---|---|
| north gate outer checkpoint | `10626 35 7939` |
| south gate outer checkpoint | `10626 35 9228` |
| west gate outer checkpoint | `7939 35 8578` |
| east gate outer checkpoint | `13324 35 8578` |
| rail corner north-west | `7944 104 7944` |
| powered rail on the north wall | `7966 104 7944` |
| north tower spire lamp | `7944 150 7943` |

**Main-base ring**
| place | coordinates |
|---|---|
| north gate outer checkpoint | `-1702 80 291` |
| south gate outer checkpoint | `-1702 80 588` |
| west gate outer checkpoint | `-1821 80 434` |
| east gate outer checkpoint | `-1572 80 434` |
| rail corner north-west | `-1816 149 296` |
| powered rail on the north wall | `-1794 149 296` |
| north tower spire lamp | `-1816 195 295` |

## Install
1. Back up the world, quit to the title screen.
2. **Big ring**: if none of its 28 file names exist in your `region/` folder, copy `pipeline_hq_ithaca/region/*` in. If any exist, merge: `java MergeBase.java "<world>" pipeline_hq_ithaca --dry-run`, then without `--dry-run`.
3. **Main-base ring**: ALWAYS merge, never copy: `java MergeBase.java "<world>" pipeline_main_base --dry-run` first. Your house is inside the ring, not on it, so its chunks are kept; the tool stops (changing nothing) if your world already has a different chunk where the ring needs one, and lists them. Only `--replace-existing` overwrites those ring chunks (terrain, trees or builds standing on the ring line are lost; backups go to a new `riftbrek_backup_*` folder).
4. Install the mod (v1.0.6), open the world, run `/rift verify pipeline` and `/rift verify mainwall` (7 checks each). Origins are in `config/riftbrek.properties` (`pipeX/pipeZ`, `mainX/mainZ`).

## Tested
- Region files read back block-for-block identical to the schematics (big ring 832/832 chunks, main ring 66/66; 0 mismatches).
- The merge tool, on a world holding 28 house chunks in `r.-4.0`: all 28 survive the merge; a chunk colliding inside the ring makes it stop with nothing changed.
- Real Fabric 1.21.11 server: loads, `/rift verify pipeline` and `/rift verify mainwall` both 7/7.
- A minecart put on each ring's rail accelerates and holds ~8 blocks/s along it, and the corner rail is a correct curve.

## NOT tested
- Nobody has walked it: the ladders, the gate doors with a real player, the lanterns.
- Only a segment of the rail line was ridden, not a full lap (about 28 minutes per lap on the big ring).
- How the ring meets your real terrain: the wall stands on whatever is there (hills cut through it, valleys leave the deepslate base showing). Ring chunks replace the terrain in them.
- The main-base ring assumes your ground line is y 77; if your terrain there is much higher or lower, the wall will look buried or float.
