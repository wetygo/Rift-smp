# zone 12 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~812 ~ ~256 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"50,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~828 ~ ~256 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"51,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~844 ~ ~256 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"52,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~860 ~ ~256 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"53,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~876 ~ ~256 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"54,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~892 ~ ~256 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"55,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~908 ~ ~256 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"56,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~924 ~ ~256 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"57,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~940 ~ ~264 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"58,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~958 ~ ~271 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"59,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~962 ~ ~268 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"60,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~989 ~ ~259 minecraft:iron_chain run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"61,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1007 ~ ~256 minecraft:polished_deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"62,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 84 $(z) if block ~1015 ~ ~263 minecraft:white_carpet run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"50,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 61 $(z) if block ~829 ~ ~272 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"51,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 61 $(z) if block ~847 ~ ~272 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"52,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 61 $(z) if block ~863 ~ ~272 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"53,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 61 $(z) if block ~879 ~ ~272 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"54,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 61 $(z) if block ~895 ~ ~272 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"55,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 61 $(z) if block ~911 ~ ~272 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"56,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 61 $(z) if block ~927 ~ ~272 minecraft:quartz_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"57,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 65 $(z) if block ~943 ~ ~272 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"58,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~958 ~ ~272 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"59,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~975 ~ ~287 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"60,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 81 $(z) if block ~991 ~ ~287 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"61,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 81 $(z) if block ~999 ~ ~279 minecraft:calcite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"62,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1022 ~ ~286 minecraft:iron_chain run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"50,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"51,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"52,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"53,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"54,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"55,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"56,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"57,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 58 $(z) if block ~936 ~ ~288 minecraft:polished_diorite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"58,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 67 $(z) if block ~959 ~ ~299 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"59,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~975 ~ ~290 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"60,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~991 ~ ~303 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"61,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 81 $(z) if block ~997 ~ ~296 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"62,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 81 $(z) if block ~1022 ~ ~303 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"50,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"51,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"52,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"53,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"54,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"55,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"56,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"57,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 51 $(z) if block ~943 ~ ~304 minecraft:polished_tuff_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"58,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 64 $(z) if block ~959 ~ ~304 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"59,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 70 $(z) if block ~975 ~ ~309 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"60,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~990 ~ ~305 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"61,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1007 ~ ~315 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"62,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 82 $(z) if block ~1010 ~ ~312 minecraft:gray_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"50,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"51,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"52,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"53,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"54,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"55,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"56,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"57,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 49 $(z) if block ~938 ~ ~323 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"58,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 54 $(z) if block ~959 ~ ~325 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"59,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 61 $(z) if block ~969 ~ ~320 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"60,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 65 $(z) if block ~991 ~ ~321 minecraft:polished_andesite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"61,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1007 ~ ~329 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"62,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1009 ~ ~333 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"50,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"51,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"52,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"53,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"54,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"55,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"56,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"57,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"58,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 49 $(z) if block ~959 ~ ~344 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"59,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 49 $(z) if block ~975 ~ ~345 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"60,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 60 $(z) if block ~991 ~ ~344 minecraft:polished_diorite_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"61,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 76 $(z) if block ~1007 ~ ~338 minecraft:polished_tuff_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"62,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1011 ~ ~337 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"50,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"51,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"52,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"53,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"54,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"55,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"56,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"57,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"58,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"59,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"60,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~989 ~ ~356 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"61,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 64 $(z) if block ~1007 ~ ~366 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"62,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1017 ~ ~357 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"50,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"51,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"52,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"53,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"54,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"55,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"56,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"57,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"58,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"59,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"60,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~989 ~ ~371 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"61,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 64 $(z) if block ~1007 ~ ~382 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"62,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1017 ~ ~381 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"50,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"51,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"52,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"53,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"54,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"55,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"56,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"57,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"58,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"59,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"60,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~989 ~ ~384 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"61,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 64 $(z) if block ~1007 ~ ~398 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"62,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1017 ~ ~385 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"50,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"51,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"52,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"53,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"54,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"55,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"56,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"57,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"58,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"59,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"60,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~989 ~ ~404 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"61,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 64 $(z) if block ~1007 ~ ~414 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"62,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1017 ~ ~401 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"50,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"51,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"52,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"53,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"54,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"55,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"56,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"57,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"58,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"59,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"60,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~989 ~ ~420 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"61,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 64 $(z) if block ~1007 ~ ~430 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"62,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1017 ~ ~417 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"50,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"51,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"52,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"53,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"54,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"55,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"56,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"57,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"58,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"59,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"60,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~989 ~ ~435 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"61,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 64 $(z) if block ~1007 ~ ~444 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"62,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1017 ~ ~445 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"50,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"51,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"52,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"53,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"54,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"55,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"56,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"57,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"58,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"59,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"60,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"61,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 64 $(z) if block ~1007 ~ ~451 minecraft:quartz_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"62,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 77 $(z) if block ~1017 ~ ~453 minecraft:stone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"50,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"51,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"52,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"53,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"54,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"55,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"56,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"57,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"58,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"59,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"60,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"61,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"62,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 76 $(z) if block ~1017 ~ ~464 minecraft:calcite run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~800 ~ ~484 minecraft:terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"50,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~816 ~ ~484 minecraft:orange_terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"51,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~832 ~ ~484 minecraft:terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"52,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~848 ~ ~484 minecraft:orange_terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"53,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~864 ~ ~484 minecraft:terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"54,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~892 ~ ~488 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"55,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~898 ~ ~489 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"56,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"57,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"58,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"59,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~971 ~ ~494 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"60,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"61,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"62,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 48 $(z) if block ~1023 ~ ~495 minecraft:polished_blackstone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~800 ~ ~496 minecraft:terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"50,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~816 ~ ~496 minecraft:orange_terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"51,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 121 $(z) if block ~836 ~ ~511 minecraft:white_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"52,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 122 $(z) if block ~862 ~ ~511 minecraft:green_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"53,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 115 $(z) if block ~865 ~ ~511 minecraft:white_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"54,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~895 ~ ~511 minecraft:sticky_piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"55,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~899 ~ ~506 minecraft:piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"56,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~926 ~ ~511 minecraft:piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"57,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~939 ~ ~511 minecraft:piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"58,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~947 ~ ~511 minecraft:piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"59,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~975 ~ ~511 minecraft:piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"60,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~991 ~ ~511 minecraft:piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"61,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~995 ~ ~511 minecraft:piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"62,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 49 $(z) if block ~1022 ~ ~509 minecraft:polished_blackstone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,31"}
tellraw @s [{"text":"[PASTE zone 12] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 12 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z12 rb_p 1
