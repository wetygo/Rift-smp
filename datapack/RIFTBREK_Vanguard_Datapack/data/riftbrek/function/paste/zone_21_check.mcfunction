# zone 21 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1037 ~ ~519 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1049 ~ ~527 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1063 ~ ~513 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"67,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 146 $(z) if block ~1126 ~ ~526 minecraft:deepslate_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1140 ~ ~527 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"71,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1263 ~ ~524 minecraft:purpur_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1267 ~ ~527 minecraft:purpur_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1033 ~ ~543 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1047 ~ ~529 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"66,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 150 $(z) if block ~1083 ~ ~542 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1101 ~ ~540 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1104 ~ ~540 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1135 ~ ~540 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1151 ~ ~540 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"71,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1167 ~ ~540 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"72,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1174 ~ ~540 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"73,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 150 $(z) if block ~1193 ~ ~542 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"74,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 150 $(z) if block ~1210 ~ ~542 minecraft:deepslate_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"75,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1231 ~ ~540 minecraft:purpur_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"76,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1247 ~ ~540 minecraft:purpur_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1263 ~ ~540 minecraft:purpur_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1279 ~ ~540 minecraft:purpur_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1031 ~ ~545 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"65,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"66,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 149 $(z) if block ~1082 ~ ~544 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1101 ~ ~544 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1111 ~ ~544 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1120 ~ ~544 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1140 ~ ~559 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"71,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1164 ~ ~544 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"72,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1176 ~ ~544 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"73,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 149 $(z) if block ~1188 ~ ~544 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"74,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 149 $(z) if block ~1208 ~ ~544 minecraft:deepslate_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"75,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1228 ~ ~544 minecraft:purpur_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"76,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1234 ~ ~544 minecraft:purpur_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1263 ~ ~559 minecraft:purpur_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1267 ~ ~559 minecraft:purpur_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"64,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"65,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"66,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"67,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 52 $(z) if block ~1135 ~ ~564 minecraft:chiseled_deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1140 ~ ~575 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"71,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1263 ~ ~560 minecraft:purpur_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1267 ~ ~575 minecraft:purpur_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"64,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"65,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"66,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"67,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 52 $(z) if block ~1135 ~ ~580 minecraft:chiseled_deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1140 ~ ~582 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"71,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1263 ~ ~581 minecraft:purpur_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~584 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~584 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~1267 ~ ~581 minecraft:purpur_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"64,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"65,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"66,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"67,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 150 $(z) if block ~1138 ~ ~597 minecraft:smooth_stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"71,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 149 $(z) if block ~1263 ~ ~593 minecraft:deepslate_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~600 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~600 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 150 $(z) if block ~1265 ~ ~597 minecraft:deepslate_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,37"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"64,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"65,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"66,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"67,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~616 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~616 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,38"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"64,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"65,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"66,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"67,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~632 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~632 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,39"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~648 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"64,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~648 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 40 $(z) if block ~1055 ~ ~654 minecraft:crimson_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~648 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 53 $(z) if block ~1070 ~ ~654 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~648 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 60 $(z) if block ~1077 ~ ~655 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~648 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 60 $(z) if block ~1094 ~ ~655 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~648 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~648 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~648 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~648 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1163 ~ ~651 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"72,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~648 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1179 ~ ~655 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"73,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~648 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1184 ~ ~652 minecraft:piston_head run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"74,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~648 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 42 $(z) if block ~1208 ~ ~653 minecraft:black_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"75,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~648 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~648 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1244 ~ ~654 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~648 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1250 ~ ~654 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~648 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~648 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,40"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"64,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 52 $(z) if block ~1054 ~ ~671 minecraft:polished_blackstone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 56 $(z) if block ~1069 ~ ~662 minecraft:polished_blackstone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 66 $(z) if block ~1087 ~ ~667 minecraft:polished_blackstone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 66 $(z) if block ~1098 ~ ~667 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 36 $(z) if block ~1158 ~ ~658 minecraft:iron_chain run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"72,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1172 ~ ~662 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"73,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~1198 ~ ~668 minecraft:black_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"74,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~1213 ~ ~671 minecraft:black_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"75,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1244 ~ ~666 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1250 ~ ~666 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~664 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~664 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,41"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~1024 ~ ~685 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 53 $(z) if block ~1053 ~ ~675 minecraft:polished_blackstone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 51 $(z) if block ~1056 ~ ~677 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 63 $(z) if block ~1082 ~ ~685 minecraft:wall_torch run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 63 $(z) if block ~1089 ~ ~674 minecraft:polished_blackstone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1164 ~ ~679 minecraft:piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"72,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~1199 ~ ~683 minecraft:black_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"74,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~1213 ~ ~683 minecraft:black_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"75,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1244 ~ ~674 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1250 ~ ~674 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~680 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~680 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,42"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"64,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 40 $(z) if block ~1047 ~ ~688 minecraft:black_terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"66,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 62 $(z) if block ~1081 ~ ~689 minecraft:purple_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~696 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~696 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,43"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"64,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"65,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"66,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"67,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~712 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~712 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,44"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"64,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"65,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"66,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"67,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~728 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~728 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,45"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"64,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"65,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"66,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"67,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,46"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~744 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~744 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,46"}
tellraw @s [{"text":"[PASTE zone 21] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 21 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z21 rb_p 1
