# zone 1 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~8 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~8 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 185 $(z) if block ~15 ~ ~15 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"0,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~24 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~24 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 185 $(z) if block ~23 ~ ~15 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"1,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~40 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~40 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 174 $(z) if block ~32 ~ ~15 minecraft:black_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"2,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~56 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~56 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~60 ~ ~3 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"3,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~72 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~72 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~76 ~ ~3 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"4,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~88 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~88 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~92 ~ ~3 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"5,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~104 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~104 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~108 ~ ~3 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"6,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~120 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~120 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~124 ~ ~3 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"7,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~136 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~136 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~140 ~ ~3 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"8,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~152 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~152 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~156 ~ ~3 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"9,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~168 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~168 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~172 ~ ~3 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"10,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~184 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~184 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 159 $(z) if block ~191 ~ ~11 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"11,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~200 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~200 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~192 ~ ~12 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"12,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~216 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~216 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~220 ~ ~3 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"13,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~232 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~232 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~236 ~ ~3 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"14,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~248 ~ ~8 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~248 ~ ~8 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~252 ~ ~3 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"15,0"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~8 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~8 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 185 $(z) if block ~15 ~ ~23 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"0,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~24 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~24 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 189 $(z) if block ~19 ~ ~19 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"1,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~40 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~40 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 174 $(z) if block ~32 ~ ~31 minecraft:black_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"2,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~56 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~56 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"3,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~72 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~72 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"4,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~88 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~88 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 94 $(z) if block ~80 ~ ~16 minecraft:purple_wall_banner run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"5,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~104 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~104 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"6,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~120 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~120 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"7,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~136 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~136 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 94 $(z) if block ~128 ~ ~16 minecraft:purple_wall_banner run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"8,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~152 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~152 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"9,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~168 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~168 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"10,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~184 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~184 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~191 ~ ~16 minecraft:black_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"11,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~200 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~200 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~196 ~ ~16 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"12,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~216 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~216 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"13,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~232 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~232 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 94 $(z) if block ~224 ~ ~16 minecraft:purple_wall_banner run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"14,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~248 ~ ~24 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~248 ~ ~24 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~250 ~ ~17 minecraft:sculk_sensor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"15,1"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~8 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~8 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 174 $(z) if block ~15 ~ ~32 minecraft:black_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"0,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~24 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~24 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 174 $(z) if block ~18 ~ ~32 minecraft:black_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"1,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~40 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~40 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 174 $(z) if block ~32 ~ ~32 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"2,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~56 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~56 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"3,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~72 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~72 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"4,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~88 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~88 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"5,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~104 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~104 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"6,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~120 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~120 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"7,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~136 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~136 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"8,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~152 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~152 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~157 ~ ~45 minecraft:cherry_log run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"9,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~168 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~168 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"10,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~184 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~184 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"11,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~200 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~200 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"12,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~216 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~216 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"13,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~232 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~232 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"14,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~248 ~ ~40 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~248 ~ ~40 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"15,2"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~8 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~8 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~2 ~ ~61 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"0,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~24 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~24 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"1,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~40 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~40 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"2,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~56 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~56 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"3,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~72 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~72 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"4,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~88 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~88 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"5,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~104 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~104 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"6,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~120 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~120 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"7,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~136 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~136 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"8,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~152 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~152 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"9,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~168 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~168 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"10,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~184 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~184 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"11,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~200 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~200 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"12,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~216 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~216 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"13,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~232 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~232 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"14,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~248 ~ ~56 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~248 ~ ~56 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"15,3"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~8 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~8 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~2 ~ ~77 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"0,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~24 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~24 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"1,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~40 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~40 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"2,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~56 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~56 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"3,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~72 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~72 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"4,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~88 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~88 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"5,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~104 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~104 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"6,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~120 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~120 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"7,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~136 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~136 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"8,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~152 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~152 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"9,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~168 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~168 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"10,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~184 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~184 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 39 $(z) if block ~184 ~ ~79 minecraft:spruce_log run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"11,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~200 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~200 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"12,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~216 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~216 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"13,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~232 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~232 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"14,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~248 ~ ~72 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~248 ~ ~72 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"15,4"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~8 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~8 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~2 ~ ~93 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"0,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~24 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~24 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 94 $(z) if block ~16 ~ ~80 minecraft:purple_wall_banner run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"1,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~40 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~40 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"2,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~56 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~56 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"3,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~72 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~72 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"4,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~88 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~88 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 38 $(z) if block ~86 ~ ~90 minecraft:cherry_log run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"5,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~104 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~104 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"6,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~120 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~120 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"7,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~136 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~136 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"8,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~152 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~152 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"9,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~168 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~168 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"10,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~184 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~184 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"11,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~200 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~200 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"12,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~216 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~216 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"13,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~232 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~232 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"14,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~248 ~ ~88 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~248 ~ ~88 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"15,5"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~8 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~8 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~2 ~ ~109 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"0,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~24 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~24 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 38 $(z) if block ~28 ~ ~97 minecraft:cherry_log run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"1,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~40 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~40 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"2,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~56 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~56 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"3,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~72 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~72 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"4,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~88 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~88 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"5,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~104 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~104 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"6,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~120 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~120 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~122 ~ ~97 minecraft:spruce_log run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"7,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~136 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~136 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 40 $(z) if block ~139 ~ ~99 minecraft:spruce_log run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"8,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~152 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~152 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"9,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~168 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~168 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"10,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~184 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~184 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"11,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~200 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~200 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"12,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~216 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~216 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"13,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~232 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~232 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 38 $(z) if block ~237 ~ ~110 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"14,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~248 ~ ~104 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~248 ~ ~104 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 38 $(z) if block ~244 ~ ~99 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"15,6"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~8 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~8 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~2 ~ ~125 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"0,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~24 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~24 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"1,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~40 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~40 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"2,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~56 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~56 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"3,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~72 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~72 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"4,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~88 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~88 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"5,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~104 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~104 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"6,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~120 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~120 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"7,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~136 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~136 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 37 $(z) if block ~129 ~ ~115 minecraft:spruce_log run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"8,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~152 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~152 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"9,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~168 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~168 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"10,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~184 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~184 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"11,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~200 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~200 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"12,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~216 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~216 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"13,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~232 ~ ~120 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~232 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"14,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~248 ~ ~120 minecraft:purple_concrete run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~248 ~ ~120 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 38 $(z) if block ~244 ~ ~121 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"15,7"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~8 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~8 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~2 ~ ~141 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"0,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~24 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~24 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 94 $(z) if block ~16 ~ ~128 minecraft:purple_wall_banner run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"1,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~40 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~40 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 89 $(z) if block ~40 ~ ~130 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"2,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~56 ~ ~136 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~56 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~61 ~ ~130 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"3,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~72 ~ ~136 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~72 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~77 ~ ~130 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"4,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~88 ~ ~136 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~88 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~92 ~ ~130 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"5,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~104 ~ ~136 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~104 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~109 ~ ~130 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"6,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~120 ~ ~136 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~120 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~125 ~ ~130 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"7,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~136 ~ ~136 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~136 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~140 ~ ~130 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"8,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~152 ~ ~136 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~152 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~157 ~ ~130 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"9,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~168 ~ ~136 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~168 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~173 ~ ~130 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"10,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~184 ~ ~136 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~184 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~188 ~ ~130 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"11,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~200 ~ ~136 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~200 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~205 ~ ~130 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"12,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~216 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~216 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 89 $(z) if block ~215 ~ ~131 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"13,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~232 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~232 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"14,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~248 ~ ~136 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~248 ~ ~136 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"15,8"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~8 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~8 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~2 ~ ~157 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"0,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~24 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~24 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"1,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~40 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~40 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~40 ~ ~159 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"2,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~56 ~ ~152 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~56 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~48 ~ ~145 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"3,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~72 ~ ~152 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~72 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~75 ~ ~156 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"4,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~88 ~ ~152 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~88 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~84 ~ ~157 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"5,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~104 ~ ~152 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~104 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~107 ~ ~144 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"6,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~120 ~ ~152 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~120 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~123 ~ ~156 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"7,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~136 ~ ~152 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~136 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~132 ~ ~157 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"8,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~152 ~ ~152 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~152 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~155 ~ ~144 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"9,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~168 ~ ~152 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~168 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~171 ~ ~156 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"10,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~184 ~ ~152 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~184 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~180 ~ ~157 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"11,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~200 ~ ~152 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~200 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~203 ~ ~144 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"12,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~216 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~216 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~215 ~ ~159 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"13,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~232 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~232 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"14,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~248 ~ ~152 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~248 ~ ~152 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"15,9"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~8 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~8 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~2 ~ ~173 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"0,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~24 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~24 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"1,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~40 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~40 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~40 ~ ~175 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"2,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~56 ~ ~168 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~56 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~63 ~ ~175 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"3,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~72 ~ ~168 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~72 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~70 ~ ~169 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"4,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~88 ~ ~168 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~88 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~85 ~ ~160 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"5,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~104 ~ ~168 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~104 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~111 ~ ~175 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"6,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~120 ~ ~168 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~120 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~118 ~ ~169 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"7,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~136 ~ ~168 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~136 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~133 ~ ~160 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"8,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~152 ~ ~168 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~152 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~159 ~ ~175 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"9,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~168 ~ ~168 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~168 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~166 ~ ~169 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"10,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~184 ~ ~168 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~184 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~181 ~ ~160 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"11,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~200 ~ ~168 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~200 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~207 ~ ~175 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"12,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~216 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~216 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~215 ~ ~175 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"13,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~232 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~232 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"14,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~248 ~ ~168 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~248 ~ ~168 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"15,10"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~8 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~8 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 159 $(z) if block ~11 ~ ~191 minecraft:sea_lantern run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"0,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~24 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~24 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~16 ~ ~191 minecraft:black_concrete run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"1,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~40 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~40 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~40 ~ ~187 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"2,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~56 ~ ~184 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~56 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~51 ~ ~176 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"3,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~72 ~ ~184 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~72 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~78 ~ ~185 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"4,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~88 ~ ~184 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~88 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~94 ~ ~185 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"5,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~104 ~ ~184 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~104 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 103 $(z) if block ~111 ~ ~191 minecraft:purple_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"6,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~120 ~ ~184 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~120 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 110 $(z) if block ~127 ~ ~191 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"7,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~136 ~ ~184 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~136 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 110 $(z) if block ~130 ~ ~191 minecraft:purple_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"8,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~152 ~ ~184 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~152 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 101 $(z) if block ~144 ~ ~191 minecraft:purple_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"9,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~168 ~ ~184 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~168 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~174 ~ ~185 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"10,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~184 ~ ~184 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~184 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~190 ~ ~185 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"11,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~200 ~ ~184 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~200 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~204 ~ ~187 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"12,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~216 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~216 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~215 ~ ~191 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"13,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~232 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~232 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"14,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~248 ~ ~184 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~248 ~ ~184 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"15,11"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~8 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~8 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 158 $(z) if block ~10 ~ ~192 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"0,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~24 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~24 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 152 $(z) if block ~16 ~ ~196 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"1,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~40 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~40 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~40 ~ ~202 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"2,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~56 ~ ~200 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~56 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~52 ~ ~192 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"3,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~72 ~ ~200 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~72 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~65 ~ ~205 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"4,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~88 ~ ~200 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~88 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~81 ~ ~193 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"5,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~104 ~ ~200 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~104 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 106 $(z) if block ~111 ~ ~205 minecraft:purple_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"6,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~120 ~ ~200 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~120 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 112 $(z) if block ~127 ~ ~201 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"7,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~136 ~ ~200 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~136 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 111 $(z) if block ~131 ~ ~207 minecraft:purple_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"8,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~152 ~ ~200 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~152 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 105 $(z) if block ~144 ~ ~205 minecraft:purple_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"9,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~168 ~ ~200 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~168 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~161 ~ ~205 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"10,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~184 ~ ~200 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~184 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~177 ~ ~193 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"11,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~200 ~ ~200 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~200 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~194 ~ ~192 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"12,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~216 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~216 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~215 ~ ~207 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"13,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~232 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~232 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"14,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~248 ~ ~200 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~248 ~ ~200 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"15,12"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~8 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~8 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~2 ~ ~221 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"0,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~24 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~24 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"1,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~40 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~40 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~40 ~ ~223 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"2,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~56 ~ ~216 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~56 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~63 ~ ~223 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"3,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~72 ~ ~216 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~72 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~70 ~ ~217 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"4,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~88 ~ ~216 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~88 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~85 ~ ~208 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"5,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~104 ~ ~216 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~104 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 105 $(z) if block ~111 ~ ~208 minecraft:purple_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"6,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~120 ~ ~216 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~120 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 111 $(z) if block ~127 ~ ~208 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"7,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~136 ~ ~216 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~136 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 111 $(z) if block ~129 ~ ~208 minecraft:purple_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"8,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~152 ~ ~216 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~152 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 104 $(z) if block ~144 ~ ~208 minecraft:purple_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"9,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~168 ~ ~216 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~168 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~166 ~ ~217 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"10,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~184 ~ ~216 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~184 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~181 ~ ~208 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"11,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~200 ~ ~216 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~200 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~207 ~ ~223 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"12,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~216 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~216 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~215 ~ ~223 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"13,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~232 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~232 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"14,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~248 ~ ~216 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~248 ~ ~216 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"15,13"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~8 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~8 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~2 ~ ~237 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"0,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~24 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~24 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 94 $(z) if block ~16 ~ ~224 minecraft:purple_wall_banner run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"1,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~40 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~40 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~40 ~ ~235 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"2,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~56 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~56 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~51 ~ ~224 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"3,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~72 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~72 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~78 ~ ~233 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"4,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~88 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~88 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~94 ~ ~233 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"5,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~104 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~104 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~108 ~ ~235 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"6,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~120 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~120 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 96 $(z) if block ~123 ~ ~224 minecraft:purple_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"7,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~136 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~136 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 96 $(z) if block ~131 ~ ~224 minecraft:purple_stained_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"8,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~152 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~152 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~156 ~ ~235 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"9,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~168 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~168 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~174 ~ ~233 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"10,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~184 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~184 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~190 ~ ~233 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"11,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~200 ~ ~232 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~200 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~204 ~ ~235 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"12,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~216 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~216 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~215 ~ ~239 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"13,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~232 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~232 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"14,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~248 ~ ~232 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~248 ~ ~232 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"15,14"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~8 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~8 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 127 $(z) if block ~2 ~ ~253 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"0,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~24 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~24 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 32 $(z) if block ~17 ~ ~250 minecraft:sculk_sensor run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"1,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~40 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~40 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~40 ~ ~250 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"2,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~56 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~56 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~52 ~ ~240 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"3,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~72 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~72 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~65 ~ ~253 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"4,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~88 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~88 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~81 ~ ~241 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"5,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~104 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~104 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~98 ~ ~240 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"6,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~120 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~120 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~113 ~ ~253 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"7,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~136 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~136 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~129 ~ ~241 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"8,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~152 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~152 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~146 ~ ~240 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"9,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~168 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~168 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~161 ~ ~253 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"10,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~184 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~184 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~177 ~ ~241 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"11,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~200 ~ ~248 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~200 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 86 $(z) if block ~194 ~ ~240 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"12,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~216 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~216 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
$execute positioned $(x) 87 $(z) if block ~215 ~ ~255 minecraft:polished_blackstone_bricks run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 3 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 3 run data modify storage riftbrek:paste miss append value {c:"13,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~232 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~232 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"14,15"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~248 ~ ~248 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~248 ~ ~248 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"15,15"}
tellraw @s [{"text":"[PASTE zone 1] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 1 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z1 rb_p 1
