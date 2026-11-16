# Getting the base into Minecraft — three ways (use A)

## Why your paste was partial (simulated, see `SIMULATED_TEST_REPORT.md`)
The master is **1,888 × 384 × 768 blocks = 4,894 chunks and ~122 million blocks**. Litematica only places blocks in chunks that are *loaded*. Standing at the origin with a view distance of 12 loads ~3 % of the chunks; even 32 chunks loads ~22 %. Whatever was outside your loaded radius simply never got pasted. A single paste from one spot can never finish this schematic.

---
## Method A (recommended, no Litematica): the ready-made world files
`RIFTBREK_READY_WORLD_region_files.zip` contains Anvil region + entity files already containing the whole build (HQ + annex quarter). They were generated from the master and **read back block-for-block against it (0 mismatches, 12,525 tile entities, 288 entities, region headers valid)** — but they have not been opened in a real Minecraft yet.

1. **Minecraft Java 1.21.11 exactly.** Create a **new** world: Create New World → Game Mode *Creative*, **Allow Cheats ON**, World Type *Superflat* → Customize → preset **The Void** → Create. (Void keeps everything outside the build empty.) Quit to the title screen (the files must not be in use).
2. Select the world → **Edit** → **Open World Folder**.
3. Open the zip and copy the folders **`region`** and **`entities`** into the world folder (merge/replace).
4. Copy **`RIFTBREK_Vanguard_Datapack.zip`** (do NOT extract) into the world folder's **`datapacks`** folder.
5. Open the world. First load is slow (the game calculates lighting for ~4,900 chunks): **stand still and wait a few minutes**, dark patches fill in.
6. In chat:
   ```
   /setworldspawn 383 32 740
   /tp @s 383 33 740
   /function riftbrek:paste/init
   /function riftbrek:admin/origin {x:0,z:0}
   /function riftbrek:admin/verify
   ```
   Expect **9 × PASS**. The build sits at world X 0..1887, Z 0..767, Y -64..319 (schematic local y = world y + 64). Example locations: gate `383 32 764`, throne room `383 144 250`, sorter A controller `560 -4 472`, annex quarter starts at `X 800`.
7. Force-load the machines: `/function riftbrek:admin/forceload` (needs step 6's origin), then follow `INSTALL.md` §5 to register yourself.

If the world refuses to open or chunks are missing, tell me the exact message (and the `logs/latest.log` lines mentioning `chunk` or `region`) and use Method B.

## Method B: Litematica, zone by zone (24 passes)
Needs Litematica, creative + OP, and the data pack installed. Works in any world; in a *Void superflat* world the checks are exact.
1. Load the master in Litematica; set the placement origin to **X 0, Y -64, Z 0** (or any other origin — then use that origin in the `origin` command). **Paste replace behavior = All.** Give the game ≥ 8 GB RAM (launcher JVM args `-Xmx8G`).
2. In chat once:
   ```
   /function riftbrek:paste/init
   /function riftbrek:admin/origin {x:0,z:0}
   ```
3. For **each zone N = 1..24** (table in `PASTE_ZONES.md`; a zone is ≤ 16×16 chunks), do:
   ```
   /function riftbrek:paste/zone_N_tp with storage riftbrek:cfg origin
   /function riftbrek:paste/zone_N_on with storage riftbrek:cfg origin
   ```
   wait ~10 s (chunks load), then in Litematica **Paste schematic in world (creative)** and wait until the paste finishes, then
   ```
   /function riftbrek:paste/zone_N_check with storage riftbrek:cfg origin
   /function riftbrek:paste/zone_N_off with storage riftbrek:cfg origin
   ```
   Example for zone 1: `/function riftbrek:paste/zone_1_tp with storage riftbrek:cfg origin`.
   The check prints `chunks OK: a / b` and lists `MISSING chunk(cx,cz)` if any chunk is incomplete — repeat steps tp/on/paste/check for that zone (pasting is idempotent).
4. `/function riftbrek:paste/status` lists which zones are verified complete.

## Method C: troubleshooting a paste that stops
- Litematica must be in **creative** with permission level 2+ and the placement **enabled**, not just loaded.
- Only loaded chunks are pasted: always forceload the zone first (zone_N_on) and wait.
- Do not move away or close the screen during a paste; large pastes can take minutes.
- Out of memory / client freezes: raise `-Xmx`, close other programs, paste one zone at a time.
- Use `paste/zone_N_check` instead of looking at the world: it compares fixed blocks of every chunk.
- Pasted but the machines are dead: command blocks need cheats/`enable-command-block=true` (singleplayer: cheats on).
