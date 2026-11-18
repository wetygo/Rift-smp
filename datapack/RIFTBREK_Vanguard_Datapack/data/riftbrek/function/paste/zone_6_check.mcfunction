# zone 6 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"80,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"81,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"82,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"83,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"84,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"85,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"86,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"87,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"88,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"89,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"90,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"91,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"92,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"93,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"94,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"95,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1280 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1296 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1312 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1328 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1344 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1360 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1376 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1392 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1408 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1424 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1440 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1456 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1472 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1488 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1504 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1520 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1280 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1296 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1312 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1328 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1344 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1360 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1376 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1392 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1408 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1424 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1440 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1456 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1472 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1488 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1504 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1520 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1280 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1296 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1312 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1328 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1344 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1360 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1376 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1392 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1408 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1424 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1440 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1456 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1472 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1488 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1504 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1520 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1280 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1296 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1312 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1328 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1344 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1360 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1376 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1392 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1408 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1424 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1440 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1456 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1472 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1488 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1504 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1520 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1280 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1296 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1312 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1328 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1344 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1360 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1376 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1392 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1408 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1424 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1440 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1456 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1472 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1488 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1504 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1520 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1280 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1296 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1312 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1328 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1344 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1360 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1376 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1392 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1408 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1424 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1440 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1456 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1472 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1488 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1504 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1520 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1280 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1296 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1312 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1328 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1344 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1360 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1376 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1392 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1408 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1424 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1440 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1456 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1472 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1488 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1504 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 57 $(z) if block ~1535 ~ ~127 minecraft:cobblestone_wall run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1280 ~ ~128 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1296 ~ ~128 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1312 ~ ~128 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1328 ~ ~128 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1344 ~ ~128 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1360 ~ ~128 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1376 ~ ~128 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1392 ~ ~128 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1408 ~ ~128 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1424 ~ ~128 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1440 ~ ~128 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1456 ~ ~128 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 42 $(z) if block ~1487 ~ ~141 minecraft:quartz_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 44 $(z) if block ~1490 ~ ~143 minecraft:smooth_quartz run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 56 $(z) if block ~1519 ~ ~143 minecraft:andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 69 $(z) if block ~1535 ~ ~143 minecraft:chiseled_stone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1280 ~ ~144 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1296 ~ ~144 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 36 $(z) if block ~1325 ~ ~159 minecraft:netherrack run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 36 $(z) if block ~1332 ~ ~159 minecraft:purple_terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1344 ~ ~144 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1360 ~ ~144 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1376 ~ ~144 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1392 ~ ~144 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 36 $(z) if block ~1419 ~ ~159 minecraft:netherrack run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 36 $(z) if block ~1426 ~ ~159 minecraft:purple_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1440 ~ ~144 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1456 ~ ~144 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 46 $(z) if block ~1487 ~ ~150 minecraft:quartz_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~1503 ~ ~157 minecraft:quartz_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 61 $(z) if block ~1519 ~ ~159 minecraft:stone run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1525 ~ ~159 minecraft:stone run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1280 ~ ~160 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 42 $(z) if block ~1311 ~ ~175 minecraft:polished_andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 44 $(z) if block ~1325 ~ ~175 minecraft:purple_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 44 $(z) if block ~1331 ~ ~175 minecraft:netherrack run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 47 $(z) if block ~1358 ~ ~175 minecraft:calcite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 47 $(z) if block ~1361 ~ ~175 minecraft:calcite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 47 $(z) if block ~1384 ~ ~175 minecraft:calcite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 42 $(z) if block ~1406 ~ ~175 minecraft:andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 44 $(z) if block ~1419 ~ ~175 minecraft:purple_terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 44 $(z) if block ~1425 ~ ~175 minecraft:netherrack run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1440 ~ ~160 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 42 $(z) if block ~1457 ~ ~175 minecraft:andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 60 $(z) if block ~1487 ~ ~175 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 157 $(z) if block ~1503 ~ ~169 minecraft:quartz_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1504 ~ ~169 minecraft:iron_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1522 ~ ~173 minecraft:iron_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 59 $(z) if block ~1295 ~ ~190 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 59 $(z) if block ~1311 ~ ~190 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 59 $(z) if block ~1312 ~ ~189 minecraft:polished_diorite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~1343 ~ ~191 minecraft:polished_deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 60 $(z) if block ~1359 ~ ~187 minecraft:cracked_deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 60 $(z) if block ~1375 ~ ~187 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 60 $(z) if block ~1386 ~ ~187 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~1406 ~ ~191 minecraft:polished_deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~1423 ~ ~190 minecraft:smooth_stone run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 59 $(z) if block ~1433 ~ ~189 minecraft:polished_diorite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 59 $(z) if block ~1455 ~ ~190 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 60 $(z) if block ~1464 ~ ~191 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 64 $(z) if block ~1486 ~ ~191 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 168 $(z) if block ~1503 ~ ~181 minecraft:black_concrete_powder run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 174 $(z) if block ~1507 ~ ~180 minecraft:crimson_fence run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 157 $(z) if block ~1520 ~ ~176 minecraft:quartz_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 69 $(z) if block ~1280 ~ ~207 minecraft:polished_tuff run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 60 $(z) if block ~1311 ~ ~206 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~1326 ~ ~192 minecraft:smooth_stone run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~1338 ~ ~207 minecraft:polished_deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~1357 ~ ~207 minecraft:polished_deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~1374 ~ ~207 minecraft:polished_deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~1385 ~ ~207 minecraft:polished_deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~1404 ~ ~207 minecraft:polished_deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~1420 ~ ~192 minecraft:smooth_stone run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 60 $(z) if block ~1432 ~ ~206 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 61 $(z) if block ~1455 ~ ~207 minecraft:polished_andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 168 $(z) if block ~1471 ~ ~205 minecraft:black_concrete_powder run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 174 $(z) if block ~1474 ~ ~204 minecraft:crimson_fence run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1488 ~ ~194 minecraft:andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"94,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"95,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 167 $(z) if block ~1293 ~ ~219 minecraft:black_concrete_powder run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 175 $(z) if block ~1297 ~ ~218 minecraft:redstone_torch run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 166 $(z) if block ~1327 ~ ~214 minecraft:purple_concrete_powder run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 175 $(z) if block ~1336 ~ ~214 minecraft:redstone_torch run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 74 $(z) if block ~1354 ~ ~223 minecraft:white_carpet run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 66 $(z) if block ~1375 ~ ~223 minecraft:polished_andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 74 $(z) if block ~1389 ~ ~223 minecraft:white_carpet run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 175 $(z) if block ~1406 ~ ~214 minecraft:redstone_torch run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1415 ~ ~214 minecraft:iron_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 168 $(z) if block ~1439 ~ ~219 minecraft:black_concrete_powder run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 174 $(z) if block ~1445 ~ ~218 minecraft:crimson_fence run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1456 ~ ~213 minecraft:andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~1472 ~ ~213 minecraft:deepslate_tile_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"93,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"94,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"95,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~1291 ~ ~224 minecraft:deepslate_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~1311 ~ ~231 minecraft:deepslate_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 168 $(z) if block ~1327 ~ ~239 minecraft:quartz_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 168 $(z) if block ~1343 ~ ~239 minecraft:chiseled_quartz_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 168 $(z) if block ~1359 ~ ~239 minecraft:quartz_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 168 $(z) if block ~1360 ~ ~236 minecraft:quartz_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 168 $(z) if block ~1391 ~ ~239 minecraft:quartz_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 168 $(z) if block ~1398 ~ ~237 minecraft:chiseled_quartz_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 168 $(z) if block ~1423 ~ ~239 minecraft:quartz_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 168 $(z) if block ~1425 ~ ~239 minecraft:quartz_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~1441 ~ ~228 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"91,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"92,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"93,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"94,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"95,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"80,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 120 $(z) if block ~1303 ~ ~240 minecraft:sticky_piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 169 $(z) if block ~1321 ~ ~247 minecraft:iron_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 169 $(z) if block ~1338 ~ ~247 minecraft:iron_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 169 $(z) if block ~1350 ~ ~247 minecraft:iron_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 168 $(z) if block ~1363 ~ ~253 minecraft:glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 168 $(z) if block ~1383 ~ ~250 minecraft:glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 169 $(z) if block ~1404 ~ ~247 minecraft:iron_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 169 $(z) if block ~1421 ~ ~247 minecraft:iron_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 168 $(z) if block ~1424 ~ ~246 minecraft:quartz_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"90,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"91,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"92,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"93,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"94,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"95,15"}
tellraw @s [{"text":"[PASTE zone 6] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 6 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z6 rb_p 1
