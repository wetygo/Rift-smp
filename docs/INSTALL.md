# Installation (test world first!)

## 0. Requirements
Minecraft Java 1.21.11 · Fabric Loader + Fabric API · Litematica (+ MaLiLib) for 1.21.11 · ≥ 6 GB RAM for the client when placing the whole schematic
(it is 768×224×768 = 132 M blocks, 59 M non-air).

## 1. Create a disposable creative world
Use a **flat/void world** so the 768×768 footprint is empty. Back up anything else. Server owners: set in `server.properties`
```
enable-command-block=true
```
(without it every door, sorter and pad is dead) and restart. Add yourself as OP.

## 2. Data pack
Copy `RIFTBREK_Vanguard_Datapack.zip` **unextracted** into `<world>/datapacks/`, then `/reload`, then `/datapack list enabled`
(look for `file/RIFTBREK_Vanguard_Datapack.zip`). Chat shows `[RIFTBREK] Vanguard datapack loaded.` Check the log for load errors.
Then (once):
```
/gamerule command_block_output false
```
(1.21.11 snake_case name; the pack also tries to set it). This stops command-block feedback spamming OPs.

## 3. Schematic
1. Put `RIFTBREK_Vanguard_Headquarters_MASTER.litematic` in `.minecraft/schematics/`.
2. Litematica → Load Schematic → place it. **Origin Y must be -64** (so B12 sits on the world floor; the ground surface is then world Y 32). X/Z origin is your choice — pick a corner.
3. In Litematica's settings turn **Paste replace behavior = All** (the schematic's air clears the site). Open the Schematic Placement and press *Paste schematic in world (creative)* with the player at the origin (be OP, creative). Pasting 132 M blocks takes a while and may require paste-in-sections: use *Placement → Sub-regions / “paste layers”* if the client struggles.
4. Command blocks are pasted with their command text and `auto=1`; they start running immediately.

## 4. Keep the machines loaded
Command blocks and hoppers only run in loaded chunks. Stand nearby or `/forceload add x1 z1 x2 z2` the rectangles in `docs/MODULE_INDEX.md` (add your origin X/Z). Spawn chunks near the origin are loaded automatically.

## 5. First-run configuration (as OP)
```
/function riftbrek:admin/register {mc:"wetygo",discord:"your_discord",faction:"birds"}
/function riftbrek:admin/royal {mc:"wetygo"}
/function riftbrek:admin/register {mc:"SomeMember",discord:"their_discord",faction:"unstables"}
```
Players then use `/trigger rb_req set 1` (ID book), `... set 2` (faction kit), `... set 9` (help). Full list: `docs/COMMAND_HANDBOOK.md`.

## 6. Smoke test (15 minutes) → `docs/TEST_REPORT.md`
