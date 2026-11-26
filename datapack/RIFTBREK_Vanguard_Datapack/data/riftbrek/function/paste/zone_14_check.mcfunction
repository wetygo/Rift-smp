# zone 14 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1288 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1309 ~ ~263 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1312 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1336 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1357 ~ ~263 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1360 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1384 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1405 ~ ~263 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1408 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1432 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1453 ~ ~263 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1456 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1480 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1501 ~ ~263 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1504 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1528 ~ ~264 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1284 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1298 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1326 ~ ~279 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1332 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1346 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1374 ~ ~279 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1380 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1394 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1422 ~ ~279 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1428 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1442 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1470 ~ ~279 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1476 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1490 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1518 ~ ~279 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1524 ~ ~280 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1304 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1325 ~ ~295 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1352 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1373 ~ ~295 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1400 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1421 ~ ~295 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1448 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1469 ~ ~295 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1472 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1496 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1517 ~ ~295 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1520 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1304 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1325 ~ ~311 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1352 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1373 ~ ~311 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1400 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1421 ~ ~311 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1448 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1469 ~ ~311 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1472 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1496 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1517 ~ ~311 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1520 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1304 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1325 ~ ~327 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1352 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1373 ~ ~327 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1400 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1421 ~ ~327 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1448 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1469 ~ ~327 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1472 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1496 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1517 ~ ~327 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1520 ~ ~328 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1304 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1325 ~ ~343 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1352 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1373 ~ ~343 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1400 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1421 ~ ~343 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1448 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1469 ~ ~343 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1472 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1496 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1517 ~ ~343 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1520 ~ ~344 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1304 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1325 ~ ~359 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1352 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1373 ~ ~359 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1400 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1421 ~ ~359 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1448 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1469 ~ ~359 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1472 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1496 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1517 ~ ~359 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1520 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1304 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1325 ~ ~375 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1352 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1373 ~ ~375 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1400 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1421 ~ ~375 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1448 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1469 ~ ~375 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1472 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1496 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1517 ~ ~375 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1520 ~ ~376 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1304 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1325 ~ ~391 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1352 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1373 ~ ~391 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1400 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1421 ~ ~391 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1448 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1469 ~ ~391 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1472 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1496 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1517 ~ ~391 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1520 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1304 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1325 ~ ~407 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1352 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1373 ~ ~407 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1400 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1421 ~ ~407 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1448 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1469 ~ ~407 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1472 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1496 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1517 ~ ~407 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1520 ~ ~408 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1304 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1325 ~ ~423 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1352 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1373 ~ ~423 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1400 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1421 ~ ~423 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1448 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1469 ~ ~423 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1472 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1496 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1517 ~ ~423 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1520 ~ ~424 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1288 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1288 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"80,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1304 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1304 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1304 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"81,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1320 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1320 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1325 ~ ~439 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"82,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1336 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1336 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"83,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1352 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1352 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1352 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"84,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1368 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1368 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1373 ~ ~439 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"85,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1384 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1384 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"86,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1400 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1400 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1400 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"87,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1416 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1416 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1421 ~ ~439 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"88,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1432 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1432 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"89,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1448 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1448 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1448 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"90,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1464 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1464 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1469 ~ ~439 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"91,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1480 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1480 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1472 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"92,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1496 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1496 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1496 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"93,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1512 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1512 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1517 ~ ~439 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"94,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1528 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1528 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 192 $(z) if block ~1520 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"95,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1285 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1301 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1365 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1413 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1477 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1525 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1285 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1301 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1365 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1413 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1477 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1525 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1295 ~ ~486 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1310 ~ ~486 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1364 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1410 ~ ~487 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1439 ~ ~486 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1450 ~ ~491 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1471 ~ ~495 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1487 ~ ~492 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1524 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1286 ~ ~496 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1296 ~ ~508 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1365 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1423 ~ ~511 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1439 ~ ~511 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1455 ~ ~511 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1464 ~ ~500 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1478 ~ ~500 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1525 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,31"}
tellraw @s [{"text":"[PASTE zone 14] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 14 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z14 rb_p 1
