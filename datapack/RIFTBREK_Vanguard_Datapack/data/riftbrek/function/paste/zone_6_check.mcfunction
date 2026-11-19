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
$execute positioned $(x) 192 $(z) if block ~1295 ~ ~31 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1311 ~ ~31 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1327 ~ ~31 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1343 ~ ~31 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1359 ~ ~31 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1375 ~ ~31 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1391 ~ ~31 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1407 ~ ~31 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1423 ~ ~31 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1439 ~ ~31 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1455 ~ ~31 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1471 ~ ~31 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1487 ~ ~31 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1503 ~ ~31 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1519 ~ ~31 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1535 ~ ~31 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1295 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1311 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1327 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1343 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1359 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1375 ~ ~47 minecraft:tinted_glass run scoreboard players add #c rb_p 1
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
$execute positioned $(x) 192 $(z) if block ~1295 ~ ~63 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1311 ~ ~63 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1327 ~ ~63 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1343 ~ ~63 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1359 ~ ~63 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1375 ~ ~63 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1391 ~ ~63 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1407 ~ ~63 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1423 ~ ~63 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1439 ~ ~63 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1455 ~ ~63 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1471 ~ ~63 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1487 ~ ~63 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1503 ~ ~63 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1519 ~ ~63 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1535 ~ ~63 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~76 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1296 ~ ~76 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1312 ~ ~76 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~76 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1344 ~ ~76 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1360 ~ ~76 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~76 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1392 ~ ~76 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1408 ~ ~76 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~76 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1440 ~ ~76 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1456 ~ ~76 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1472 ~ ~76 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1488 ~ ~76 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1504 ~ ~76 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1520 ~ ~76 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~92 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1296 ~ ~92 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1312 ~ ~92 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~92 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1344 ~ ~92 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1360 ~ ~92 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~92 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1392 ~ ~92 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1408 ~ ~92 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~92 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1440 ~ ~92 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1456 ~ ~92 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1472 ~ ~92 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1488 ~ ~92 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1504 ~ ~92 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1520 ~ ~92 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1296 ~ ~108 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1312 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1344 ~ ~108 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1360 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1392 ~ ~108 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1408 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1440 ~ ~108 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1456 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1472 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1488 ~ ~108 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1504 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1520 ~ ~108 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~124 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1296 ~ ~124 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1312 ~ ~124 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~124 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1344 ~ ~124 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1360 ~ ~124 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~124 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1392 ~ ~124 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1408 ~ ~124 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~124 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1440 ~ ~124 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1456 ~ ~124 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1472 ~ ~124 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1488 ~ ~124 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1504 ~ ~124 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1527 ~ ~113 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~140 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1296 ~ ~140 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1312 ~ ~140 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1328 ~ ~140 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1344 ~ ~140 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1360 ~ ~140 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~140 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1392 ~ ~140 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1408 ~ ~140 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~140 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1440 ~ ~140 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1456 ~ ~140 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1487 ~ ~129 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1503 ~ ~139 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1515 ~ ~129 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1533 ~ ~128 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~156 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1296 ~ ~156 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1314 ~ ~159 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1343 ~ ~146 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1344 ~ ~156 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1360 ~ ~156 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~156 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1392 ~ ~156 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1417 ~ ~146 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~146 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1440 ~ ~156 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1456 ~ ~156 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1484 ~ ~148 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1488 ~ ~149 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1512 ~ ~144 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1529 ~ ~144 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~172 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1306 ~ ~164 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1313 ~ ~160 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1340 ~ ~160 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1353 ~ ~161 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1362 ~ ~162 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1381 ~ ~160 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1402 ~ ~164 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1419 ~ ~160 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1429 ~ ~160 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1440 ~ ~172 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1465 ~ ~162 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1477 ~ ~162 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1492 ~ ~160 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1513 ~ ~171 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1530 ~ ~171 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1290 ~ ~176 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1311 ~ ~176 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~188 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1332 ~ ~176 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1351 ~ ~190 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1372 ~ ~176 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1382 ~ ~188 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1392 ~ ~177 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1423 ~ ~187 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1428 ~ ~176 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1447 ~ ~176 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1459 ~ ~176 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1487 ~ ~191 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1502 ~ ~176 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1514 ~ ~188 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1524 ~ ~179 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1284 ~ ~192 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1304 ~ ~192 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1315 ~ ~192 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1331 ~ ~192 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1358 ~ ~204 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1368 ~ ~192 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1376 ~ ~202 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1407 ~ ~207 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1411 ~ ~192 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1424 ~ ~193 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1440 ~ ~193 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1467 ~ ~192 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1476 ~ ~192 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1495 ~ ~204 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1509 ~ ~196 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1520 ~ ~192 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1289 ~ ~219 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1305 ~ ~220 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1317 ~ ~208 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1341 ~ ~217 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1357 ~ ~208 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1361 ~ ~208 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1385 ~ ~208 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1392 ~ ~209 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1410 ~ ~221 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1433 ~ ~208 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1452 ~ ~220 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1470 ~ ~220 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1487 ~ ~217 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1493 ~ ~218 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1504 ~ ~208 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1520 ~ ~208 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1284 ~ ~224 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1298 ~ ~237 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1327 ~ ~239 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1341 ~ ~236 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1359 ~ ~235 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1375 ~ ~234 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1379 ~ ~236 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1404 ~ ~236 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1423 ~ ~235 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1430 ~ ~234 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1446 ~ ~236 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1463 ~ ~228 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1472 ~ ~224 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1488 ~ ~224 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1504 ~ ~224 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1520 ~ ~224 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1280 ~ ~240 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"80,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1311 ~ ~246 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"81,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1315 ~ ~240 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"82,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1339 ~ ~252 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"83,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1347 ~ ~252 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"84,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1360 ~ ~250 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"85,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1391 ~ ~255 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"86,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1404 ~ ~252 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"87,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1416 ~ ~251 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"88,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1439 ~ ~255 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"89,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1452 ~ ~249 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"90,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1456 ~ ~240 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"91,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1472 ~ ~240 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"92,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1488 ~ ~240 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"93,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1504 ~ ~240 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"94,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1520 ~ ~240 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"95,15"}
tellraw @s [{"text":"[PASTE zone 6] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 6 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z6 rb_p 1
