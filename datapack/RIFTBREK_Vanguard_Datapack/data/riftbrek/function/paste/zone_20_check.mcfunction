# zone 20 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~800 ~ ~512 minecraft:orange_terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"50,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 108 $(z) if block ~831 ~ ~516 minecraft:magenta_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"51,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~847 ~ ~524 minecraft:gray_carpet run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"52,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~861 ~ ~524 minecraft:gray_carpet run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"53,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 115 $(z) if block ~865 ~ ~513 minecraft:white_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"54,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~892 ~ ~525 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"55,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~898 ~ ~527 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"56,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~924 ~ ~519 minecraft:piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"57,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~938 ~ ~518 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"58,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~957 ~ ~519 minecraft:piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"59,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~971 ~ ~527 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"60,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~989 ~ ~519 minecraft:piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"61,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~997 ~ ~519 minecraft:piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"62,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~520 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~520 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 48 $(z) if block ~1023 ~ ~527 minecraft:polished_blackstone_brick_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,32"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~800 ~ ~528 minecraft:terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"50,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~816 ~ ~528 minecraft:green_terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"51,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 116 $(z) if block ~847 ~ ~543 minecraft:gray_carpet run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"52,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 116 $(z) if block ~861 ~ ~543 minecraft:gray_carpet run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"53,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~864 ~ ~528 minecraft:terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"54,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~892 ~ ~530 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"55,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~899 ~ ~538 minecraft:piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"56,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"57,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"58,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"59,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~971 ~ ~543 minecraft:powered_rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"60,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"61,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"62,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~536 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~536 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 48 $(z) if block ~1023 ~ ~532 minecraft:polished_deepslate_slab run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"63,33"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~800 ~ ~544 minecraft:orange_terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"50,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~816 ~ ~544 minecraft:lime_terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"51,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 121 $(z) if block ~847 ~ ~548 minecraft:white_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"52,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 121 $(z) if block ~862 ~ ~550 minecraft:white_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"53,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 108 $(z) if block ~864 ~ ~548 minecraft:note_block run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"54,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~892 ~ ~544 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"55,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~898 ~ ~544 minecraft:rail run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"56,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"57,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"58,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"59,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~964 ~ ~544 minecraft:piston run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"60,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"61,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"62,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~552 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~552 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"63,34"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~776 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~776 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~792 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~792 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~808 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~808 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~800 ~ ~560 minecraft:terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"50,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~824 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~824 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~816 ~ ~560 minecraft:orange_terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"51,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~840 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~840 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~832 ~ ~560 minecraft:terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"52,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~856 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~856 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~848 ~ ~560 minecraft:orange_terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"53,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~872 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~872 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~864 ~ ~560 minecraft:terracotta run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"54,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~888 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~888 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"55,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~904 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~904 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"56,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~920 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~920 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"57,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~936 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~936 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"58,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~952 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~952 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"59,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~968 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~968 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"60,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~984 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~984 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"61,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1000 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1000 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"62,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1016 ~ ~568 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1016 ~ ~568 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"63,35"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~772 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~772 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"48,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~788 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~788 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"49,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~804 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~804 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"50,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~820 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~820 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"51,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~836 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~836 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"52,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~852 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~852 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"53,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~868 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~868 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"54,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~884 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~884 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"55,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~900 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~900 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"56,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~916 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~916 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"57,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~932 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~932 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"58,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~948 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~948 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"59,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~964 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~964 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"60,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~980 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~980 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"61,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~996 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~996 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"62,36"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1012 ~ ~580 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1012 ~ ~580 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"63,36"}
tellraw @s [{"text":"[PASTE zone 20] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 20 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z20 rb_p 1
