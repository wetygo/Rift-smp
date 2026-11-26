# zone 22 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1291 ~ ~521 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1308 ~ ~513 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~522 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~522 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~522 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1365 ~ ~522 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~522 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~522 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1423 ~ ~527 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1439 ~ ~527 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1455 ~ ~527 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1464 ~ ~517 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1487 ~ ~527 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~522 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~522 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1525 ~ ~522 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1287 ~ ~542 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1302 ~ ~530 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1364 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1414 ~ ~540 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1425 ~ ~534 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1455 ~ ~543 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1456 ~ ~537 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1485 ~ ~532 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1524 ~ ~538 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~557 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1311 ~ ~555 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1365 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1423 ~ ~559 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1439 ~ ~559 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1440 ~ ~556 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1458 ~ ~558 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1474 ~ ~544 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1525 ~ ~554 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1294 ~ ~573 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1301 ~ ~575 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1365 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1411 ~ ~575 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~573 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1447 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1463 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1477 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1525 ~ ~570 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1285 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1301 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1365 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1413 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1477 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1525 ~ ~586 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1285 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1300 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1364 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1412 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1476 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1524 ~ ~602 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1281 ~ ~617 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1304 ~ ~615 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~618 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~618 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~618 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1365 ~ ~618 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~618 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~618 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1410 ~ ~618 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~617 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1441 ~ ~617 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1463 ~ ~617 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1486 ~ ~616 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1496 ~ ~617 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1516 ~ ~617 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1525 ~ ~618 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1292 ~ ~633 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1310 ~ ~633 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1365 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1413 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1477 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1525 ~ ~634 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1285 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1300 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1364 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1412 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1476 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1524 ~ ~650 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1285 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1301 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1365 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1413 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1477 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1525 ~ ~666 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1285 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1301 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1365 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1413 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1477 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1525 ~ ~682 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1285 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1301 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1365 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1413 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1477 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1525 ~ ~698 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1285 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1300 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1364 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1412 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1476 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1524 ~ ~714 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1285 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1301 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1365 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1413 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1477 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1525 ~ ~730 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1285 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1301 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1333 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1349 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1365 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1397 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1413 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1445 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1461 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1477 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1525 ~ ~746 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1295 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1311 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1327 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1343 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1359 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1374 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1391 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1407 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1423 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1439 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1455 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1471 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1487 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1503 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1519 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,47"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 194 $(z) if block ~1535 ~ ~767 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,47"}
tellraw @s [{"text":"[PASTE zone 22] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 22 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z22 rb_p 1
