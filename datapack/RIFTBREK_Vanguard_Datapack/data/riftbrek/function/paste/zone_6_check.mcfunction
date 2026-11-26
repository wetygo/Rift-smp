# zone 6 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1295 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1311 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1327 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1343 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1359 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1375 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1391 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1407 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1423 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1439 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1455 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1471 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1487 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1503 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1519 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1535 ~ ~1 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1285 ~ ~29 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1302 ~ ~16 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1314 ~ ~23 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1330 ~ ~23 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1346 ~ ~23 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1362 ~ ~23 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1391 ~ ~22 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1407 ~ ~22 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1422 ~ ~22 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1439 ~ ~22 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1455 ~ ~22 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1471 ~ ~22 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1486 ~ ~22 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1503 ~ ~22 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1519 ~ ~22 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1522 ~ ~23 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1295 ~ ~43 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1296 ~ ~45 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1312 ~ ~44 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~44 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1344 ~ ~44 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1360 ~ ~44 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1391 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1407 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1423 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1439 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1455 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1471 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1487 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1503 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1519 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1535 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1292 ~ ~60 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1308 ~ ~57 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1313 ~ ~58 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1329 ~ ~58 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1345 ~ ~58 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1361 ~ ~58 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~58 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1392 ~ ~58 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1408 ~ ~58 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~58 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1440 ~ ~58 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1456 ~ ~58 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1472 ~ ~58 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1488 ~ ~58 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1504 ~ ~58 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1521 ~ ~58 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1290 ~ ~73 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1300 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1312 ~ ~64 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~64 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1344 ~ ~64 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1360 ~ ~64 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1413 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1477 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1527 ~ ~74 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1282 ~ ~90 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1311 ~ ~95 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1312 ~ ~80 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~80 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1344 ~ ~80 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1360 ~ ~80 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~90 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~90 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1412 ~ ~90 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~90 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~90 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~90 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1476 ~ ~90 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~90 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~90 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1526 ~ ~90 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1306 ~ ~106 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1312 ~ ~96 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~96 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1344 ~ ~96 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1360 ~ ~96 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~106 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~106 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1413 ~ ~106 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~106 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~106 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~106 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1477 ~ ~106 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~106 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~106 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1527 ~ ~106 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1287 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1304 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1312 ~ ~112 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~112 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1344 ~ ~112 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1360 ~ ~112 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1413 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1477 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1527 ~ ~122 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1286 ~ ~138 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1311 ~ ~143 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1312 ~ ~128 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~128 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1344 ~ ~128 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1360 ~ ~128 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~138 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~138 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1413 ~ ~138 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~138 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~138 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~138 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1477 ~ ~138 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~138 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~138 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1531 ~ ~134 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1281 ~ ~154 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1299 ~ ~154 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~144 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1332 ~ ~144 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1344 ~ ~154 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1369 ~ ~150 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~154 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~154 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1412 ~ ~154 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~154 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~154 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~154 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1476 ~ ~154 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~154 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~154 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1533 ~ ~158 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1291 ~ ~174 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1304 ~ ~171 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1320 ~ ~171 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1329 ~ ~172 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~171 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1369 ~ ~164 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~170 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~170 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1413 ~ ~170 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~170 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~170 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~170 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1477 ~ ~170 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~170 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~170 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1527 ~ ~165 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1284 ~ ~176 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1310 ~ ~176 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1312 ~ ~177 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~189 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1346 ~ ~185 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1366 ~ ~191 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~186 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1403 ~ ~187 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1403 ~ ~187 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1404 ~ ~185 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1419 ~ ~187 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1419 ~ ~187 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1420 ~ ~185 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1435 ~ ~187 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1435 ~ ~187 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1437 ~ ~185 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1451 ~ ~187 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1451 ~ ~187 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1452 ~ ~185 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1467 ~ ~187 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1467 ~ ~187 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1469 ~ ~185 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1483 ~ ~187 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1483 ~ ~187 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1484 ~ ~185 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1499 ~ ~187 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1499 ~ ~187 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1500 ~ ~185 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1515 ~ ~187 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1515 ~ ~187 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1517 ~ ~185 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1531 ~ ~187 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1531 ~ ~187 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1532 ~ ~185 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1290 ~ ~199 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1301 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1365 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1405 ~ ~199 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1408 ~ ~200 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1432 ~ ~200 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1453 ~ ~199 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1456 ~ ~200 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1480 ~ ~200 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1501 ~ ~199 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1504 ~ ~200 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1528 ~ ~200 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1288 ~ ~216 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1309 ~ ~215 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1312 ~ ~216 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1336 ~ ~216 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1357 ~ ~215 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1360 ~ ~216 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1384 ~ ~216 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1405 ~ ~215 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1408 ~ ~216 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1432 ~ ~216 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1453 ~ ~215 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1456 ~ ~216 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1480 ~ ~216 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1501 ~ ~215 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1504 ~ ~216 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1528 ~ ~216 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1288 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1309 ~ ~231 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1312 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1336 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1357 ~ ~231 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1360 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1384 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1405 ~ ~231 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1408 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1432 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1453 ~ ~231 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1456 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1480 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1501 ~ ~231 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1504 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1528 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1288 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1309 ~ ~247 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1312 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1336 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1357 ~ ~247 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1360 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1384 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1405 ~ ~247 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1408 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1432 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1453 ~ ~247 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1456 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1480 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1501 ~ ~247 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1504 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1528 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,15"}
tellraw @s [{"text":"[PASTE zone 6] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 6 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z6 rb_p 1
