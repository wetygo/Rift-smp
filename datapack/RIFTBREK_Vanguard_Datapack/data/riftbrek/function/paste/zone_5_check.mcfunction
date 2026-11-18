# zone 5 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"64,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 76 $(z) if block ~1041 ~ ~15 minecraft:calcite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"66,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"67,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~1167 ~ ~15 minecraft:deepslate_tile_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"72,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1171 ~ ~15 minecraft:stone run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"73,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"64,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1045 ~ ~31 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"66,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"67,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~1165 ~ ~18 minecraft:deepslate_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"72,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1171 ~ ~31 minecraft:polished_andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"73,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1184 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"74,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1200 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"75,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1216 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"76,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1232 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1248 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1264 ~ ~20 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 67 $(z) if block ~1039 ~ ~44 minecraft:polished_deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1045 ~ ~47 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 63 $(z) if block ~1056 ~ ~47 minecraft:stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~1073 ~ ~44 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~1164 ~ ~37 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"72,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1171 ~ ~47 minecraft:polished_andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"73,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1184 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"74,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1200 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"75,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1216 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"76,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1232 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1248 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1264 ~ ~32 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 69 $(z) if block ~1039 ~ ~57 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1045 ~ ~63 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 63 $(z) if block ~1056 ~ ~63 minecraft:andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~1073 ~ ~48 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~1167 ~ ~63 minecraft:deepslate_tile_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"72,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1173 ~ ~63 minecraft:polished_andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"73,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1184 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"74,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1200 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"75,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1216 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"76,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1232 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1248 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1264 ~ ~48 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 69 $(z) if block ~1039 ~ ~73 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1045 ~ ~79 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 63 $(z) if block ~1056 ~ ~76 minecraft:stone_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~1073 ~ ~68 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~1167 ~ ~79 minecraft:quartz_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"72,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1169 ~ ~78 minecraft:iron_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"73,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1184 ~ ~78 minecraft:iron_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"74,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1200 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"75,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1216 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"76,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1232 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1248 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1264 ~ ~64 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 69 $(z) if block ~1039 ~ ~89 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1045 ~ ~95 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 63 $(z) if block ~1056 ~ ~91 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~1073 ~ ~84 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1180 ~ ~93 minecraft:andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"73,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 64 $(z) if block ~1184 ~ ~95 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"74,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1200 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"75,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1216 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"76,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1232 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1248 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1264 ~ ~80 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 69 $(z) if block ~1039 ~ ~105 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1045 ~ ~111 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 63 $(z) if block ~1056 ~ ~111 minecraft:andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~1073 ~ ~100 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1183 ~ ~103 minecraft:andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"73,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1187 ~ ~111 minecraft:polished_andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"74,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 38 $(z) if block ~1200 ~ ~111 minecraft:andesite_wall run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"75,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1216 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"76,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1232 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1248 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1264 ~ ~96 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 69 $(z) if block ~1039 ~ ~121 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1045 ~ ~127 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 63 $(z) if block ~1056 ~ ~127 minecraft:andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~1073 ~ ~112 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"68,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"69,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~1183 ~ ~122 minecraft:deepslate_tile_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"73,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1195 ~ ~127 minecraft:andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"74,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 61 $(z) if block ~1200 ~ ~126 minecraft:andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"75,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 38 $(z) if block ~1216 ~ ~127 minecraft:andesite_wall run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"76,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1232 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1248 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1264 ~ ~112 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 39 $(z) if block ~1039 ~ ~143 minecraft:iron_bars run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1049 ~ ~143 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 65 $(z) if block ~1056 ~ ~143 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 60 $(z) if block ~1075 ~ ~140 minecraft:polished_diorite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 49 $(z) if block ~1103 ~ ~140 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 49 $(z) if block ~1105 ~ ~143 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"70,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1199 ~ ~135 minecraft:andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"74,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1205 ~ ~143 minecraft:stone run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"75,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 60 $(z) if block ~1222 ~ ~143 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"76,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 38 $(z) if block ~1232 ~ ~143 minecraft:andesite_wall run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 44 $(z) if block ~1254 ~ ~143 minecraft:quartz_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~1264 ~ ~141 minecraft:quartz_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 47 $(z) if block ~1031 ~ ~148 minecraft:polished_tuff_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1055 ~ ~155 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1057 ~ ~159 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 61 $(z) if block ~1075 ~ ~159 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 56 $(z) if block ~1101 ~ ~159 minecraft:iron_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 53 $(z) if block ~1104 ~ ~158 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 49 $(z) if block ~1121 ~ ~159 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~1197 ~ ~144 minecraft:deepslate_tile_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"74,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1215 ~ ~157 minecraft:polished_andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"75,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1218 ~ ~159 minecraft:polished_andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"76,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 60 $(z) if block ~1237 ~ ~159 minecraft:quartz_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 53 $(z) if block ~1248 ~ ~157 minecraft:smooth_quartz run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~1264 ~ ~144 minecraft:moss_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1039 ~ ~172 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1055 ~ ~172 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1068 ~ ~175 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 71 $(z) if block ~1086 ~ ~174 minecraft:iron_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 69 $(z) if block ~1088 ~ ~174 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 59 $(z) if block ~1109 ~ ~175 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 49 $(z) if block ~1134 ~ ~175 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~1215 ~ ~166 minecraft:deepslate_tile_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"75,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1220 ~ ~173 minecraft:iron_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"76,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1237 ~ ~169 minecraft:iron_trapdoor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 60 $(z) if block ~1256 ~ ~175 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 47 $(z) if block ~1264 ~ ~175 minecraft:stone_brick_wall run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 81 $(z) if block ~1038 ~ ~191 minecraft:polished_tuff_wall run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 81 $(z) if block ~1054 ~ ~191 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1071 ~ ~182 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1084 ~ ~191 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 71 $(z) if block ~1094 ~ ~191 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 66 $(z) if block ~1104 ~ ~184 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 54 $(z) if block ~1121 ~ ~191 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"71,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 168 $(z) if block ~1231 ~ ~181 minecraft:black_concrete_powder run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"76,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 174 $(z) if block ~1235 ~ ~180 minecraft:crimson_fence run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1252 ~ ~191 minecraft:andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 60 $(z) if block ~1279 ~ ~191 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1037 ~ ~207 minecraft:iron_chain run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1047 ~ ~199 minecraft:iron_chain run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 81 $(z) if block ~1070 ~ ~207 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1087 ~ ~198 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1100 ~ ~207 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 70 $(z) if block ~1105 ~ ~207 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 55 $(z) if block ~1120 ~ ~197 minecraft:white_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 49 $(z) if block ~1148 ~ ~207 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"71,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~1247 ~ ~197 minecraft:deepslate_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"77,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 168 $(z) if block ~1263 ~ ~204 minecraft:black_concrete_powder run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 174 $(z) if block ~1267 ~ ~203 minecraft:crimson_fence run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 84 $(z) if block ~1026 ~ ~223 minecraft:white_carpet run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 84 $(z) if block ~1044 ~ ~221 minecraft:white_carpet run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 81 $(z) if block ~1071 ~ ~223 minecraft:calcite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 81 $(z) if block ~1086 ~ ~223 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1103 ~ ~223 minecraft:crimson_fence run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1104 ~ ~223 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 66 $(z) if block ~1120 ~ ~219 minecraft:andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 55 $(z) if block ~1136 ~ ~216 minecraft:black_wall_banner run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"71,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 156 $(z) if block ~1262 ~ ~208 minecraft:deepslate_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"78,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~1279 ~ ~209 minecraft:andesite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"79,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 84 $(z) if block ~1039 ~ ~239 minecraft:white_carpet run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 84 $(z) if block ~1052 ~ ~238 minecraft:white_carpet run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 84 $(z) if block ~1057 ~ ~238 minecraft:white_carpet run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1074 ~ ~234 minecraft:iron_chain run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 84 $(z) if block ~1103 ~ ~239 minecraft:smooth_quartz run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 84 $(z) if block ~1117 ~ ~235 minecraft:quartz_pillar run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 88 $(z) if block ~1122 ~ ~239 minecraft:blue_terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 50 $(z) if block ~1136 ~ ~239 minecraft:polished_diorite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"71,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1032 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1032 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 84 $(z) if block ~1024 ~ ~248 minecraft:white_carpet run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"64,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1048 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1048 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 83 $(z) if block ~1046 ~ ~241 minecraft:purple_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"65,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1064 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1064 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 83 $(z) if block ~1057 ~ ~247 minecraft:iron_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"66,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1080 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1080 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1074 ~ ~255 minecraft:iron_chain run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"67,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1096 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1096 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 84 $(z) if block ~1103 ~ ~255 minecraft:quartz_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"68,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1112 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1112 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 84 $(z) if block ~1111 ~ ~255 minecraft:smooth_quartz run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"69,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1128 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1128 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 89 $(z) if block ~1122 ~ ~244 minecraft:blue_terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"70,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1144 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1144 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 50 $(z) if block ~1136 ~ ~255 minecraft:polished_diorite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"71,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1160 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1160 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"72,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1176 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1176 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"73,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1192 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1192 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"74,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1208 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1208 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"75,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1224 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1224 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"76,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1240 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1240 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"77,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1256 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1256 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"78,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1272 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1272 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"79,15"}
tellraw @s [{"text":"[PASTE zone 5] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 5 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z5 rb_p 1
