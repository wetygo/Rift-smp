# zone 13 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 83 $(z) if block ~1038 ~ ~267 minecraft:iron_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 83 $(z) if block ~1055 ~ ~264 minecraft:iron_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 83 $(z) if block ~1056 ~ ~266 minecraft:iron_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1074 ~ ~257 minecraft:iron_chain run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 84 $(z) if block ~1103 ~ ~259 minecraft:polished_diorite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 84 $(z) if block ~1119 ~ ~259 minecraft:polished_diorite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 84 $(z) if block ~1120 ~ ~259 minecraft:polished_diorite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 55 $(z) if block ~1136 ~ ~271 minecraft:black_wall_banner run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"71,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1026 ~ ~280 minecraft:iron_chain run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1040 ~ ~286 minecraft:iron_chain run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 81 $(z) if block ~1071 ~ ~287 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1087 ~ ~287 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1090 ~ ~287 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1104 ~ ~273 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 66 $(z) if block ~1120 ~ ~274 minecraft:stone run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 50 $(z) if block ~1136 ~ ~274 minecraft:andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"71,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 81 $(z) if block ~1039 ~ ~303 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 81 $(z) if block ~1055 ~ ~303 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1071 ~ ~303 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1074 ~ ~303 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1088 ~ ~289 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 66 $(z) if block ~1104 ~ ~300 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 55 $(z) if block ~1120 ~ ~292 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1039 ~ ~315 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1055 ~ ~312 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1057 ~ ~312 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1072 ~ ~305 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 70 $(z) if block ~1091 ~ ~304 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 64 $(z) if block ~1104 ~ ~304 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 50 $(z) if block ~1120 ~ ~305 minecraft:polished_tuff_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 48 $(z) if block ~1033 ~ ~322 minecraft:cobbled_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1053 ~ ~333 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1057 ~ ~325 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 65 $(z) if block ~1072 ~ ~320 minecraft:quartz_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 61 $(z) if block ~1094 ~ ~320 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 54 $(z) if block ~1107 ~ ~320 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 49 $(z) if block ~1126 ~ ~321 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 47 $(z) if block ~1032 ~ ~336 minecraft:polished_tuff_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1045 ~ ~349 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 76 $(z) if block ~1056 ~ ~336 minecraft:polished_tuff_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 60 $(z) if block ~1075 ~ ~344 minecraft:polished_diorite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 49 $(z) if block ~1102 ~ ~345 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 49 $(z) if block ~1107 ~ ~340 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 69 $(z) if block ~1039 ~ ~365 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1045 ~ ~365 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 63 $(z) if block ~1056 ~ ~367 minecraft:andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~1073 ~ ~356 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 69 $(z) if block ~1039 ~ ~381 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1045 ~ ~381 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 63 $(z) if block ~1056 ~ ~383 minecraft:stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~1073 ~ ~372 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 69 $(z) if block ~1039 ~ ~397 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1045 ~ ~397 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 63 $(z) if block ~1056 ~ ~387 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~1073 ~ ~384 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 69 $(z) if block ~1039 ~ ~413 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1045 ~ ~413 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 63 $(z) if block ~1056 ~ ~415 minecraft:stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~1073 ~ ~404 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 69 $(z) if block ~1039 ~ ~429 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1045 ~ ~429 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 63 $(z) if block ~1056 ~ ~431 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~1073 ~ ~420 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 67 $(z) if block ~1039 ~ ~444 minecraft:polished_deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1045 ~ ~445 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 63 $(z) if block ~1056 ~ ~447 minecraft:andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~1073 ~ ~436 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"64,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1045 ~ ~461 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 63 $(z) if block ~1056 ~ ~450 minecraft:quartz_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"67,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"64,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 76 $(z) if block ~1041 ~ ~470 minecraft:calcite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"66,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"67,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 48 $(z) if block ~1024 ~ ~495 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 46 $(z) if block ~1055 ~ ~495 minecraft:polished_deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 46 $(z) if block ~1071 ~ ~495 minecraft:polished_blackstone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 64 $(z) if block ~1087 ~ ~495 minecraft:polished_blackstone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 64 $(z) if block ~1103 ~ ~495 minecraft:polished_blackstone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 64 $(z) if block ~1108 ~ ~495 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 36 $(z) if block ~1124 ~ ~490 minecraft:iron_chain run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1145 ~ ~490 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"71,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1152 ~ ~485 minecraft:piston_head run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"72,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 53 $(z) if block ~1177 ~ ~495 minecraft:black_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"73,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1194 ~ ~490 minecraft:piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"74,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1214 ~ ~484 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"75,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1216 ~ ~486 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"76,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1238 ~ ~493 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 62 $(z) if block ~1263 ~ ~495 minecraft:sticky_piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 62 $(z) if block ~1264 ~ ~495 minecraft:redstone_wire run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 49 $(z) if block ~1034 ~ ~509 minecraft:deepslate_tile_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 52 $(z) if block ~1055 ~ ~504 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 53 $(z) if block ~1063 ~ ~508 minecraft:polished_blackstone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 66 $(z) if block ~1087 ~ ~500 minecraft:polished_blackstone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 66 $(z) if block ~1103 ~ ~500 minecraft:polished_blackstone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 66 $(z) if block ~1108 ~ ~500 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1131 ~ ~511 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 35 $(z) if block ~1136 ~ ~499 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"71,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~1166 ~ ~511 minecraft:black_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"72,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~1181 ~ ~511 minecraft:yellow_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"73,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1199 ~ ~501 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"74,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 34 $(z) if block ~1200 ~ ~498 minecraft:piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"75,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 36 $(z) if block ~1231 ~ ~503 minecraft:iron_chain run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"76,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 36 $(z) if block ~1233 ~ ~503 minecraft:iron_chain run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 62 $(z) if block ~1256 ~ ~504 minecraft:redstone_wire run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 62 $(z) if block ~1270 ~ ~502 minecraft:redstone_wire run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,31"}
tellraw @s [{"text":"[PASTE zone 13] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 13 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z13 rb_p 1
