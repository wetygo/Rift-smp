# zone 13 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1024 ~ ~257 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"64,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1050 ~ ~268 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"65,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1056 ~ ~268 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"66,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1073 ~ ~268 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"67,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1102 ~ ~268 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"68,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1115 ~ ~271 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"69,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1131 ~ ~268 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"70,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1140 ~ ~258 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"71,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1158 ~ ~266 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"72,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1168 ~ ~256 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"73,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1184 ~ ~256 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"74,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1200 ~ ~256 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"75,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1216 ~ ~256 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"76,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1232 ~ ~256 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"77,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1248 ~ ~256 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"78,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1264 ~ ~256 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"79,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1033 ~ ~287 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"64,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1042 ~ ~285 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"65,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1062 ~ ~283 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"66,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1076 ~ ~272 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"67,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1088 ~ ~285 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"68,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1105 ~ ~284 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"69,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1135 ~ ~287 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"70,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1136 ~ ~277 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"71,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1159 ~ ~282 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"72,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1168 ~ ~272 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"73,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1184 ~ ~272 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"74,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1200 ~ ~272 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"75,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1216 ~ ~272 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"76,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1232 ~ ~272 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"77,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1248 ~ ~272 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"78,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1264 ~ ~272 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"79,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1027 ~ ~288 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"64,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1046 ~ ~300 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"65,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1068 ~ ~288 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"66,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1087 ~ ~299 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"67,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1089 ~ ~288 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"68,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1119 ~ ~296 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"69,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1130 ~ ~288 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"70,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1150 ~ ~294 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"71,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1159 ~ ~298 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"72,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1168 ~ ~288 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"73,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1184 ~ ~288 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"74,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1200 ~ ~288 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"75,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1216 ~ ~288 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"76,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1232 ~ ~288 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"77,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1248 ~ ~288 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"78,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1264 ~ ~288 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"79,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1027 ~ ~318 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"64,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1048 ~ ~304 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"65,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1059 ~ ~318 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"66,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1086 ~ ~304 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"67,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1097 ~ ~316 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"68,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1112 ~ ~312 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"69,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1122 ~ ~304 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"70,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1136 ~ ~304 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"71,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1157 ~ ~314 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"72,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1173 ~ ~314 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"73,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1189 ~ ~314 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"74,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1205 ~ ~314 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"75,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1221 ~ ~314 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"76,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1237 ~ ~314 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"77,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1253 ~ ~314 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"78,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1269 ~ ~314 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"79,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1035 ~ ~320 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"64,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1046 ~ ~325 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"65,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1057 ~ ~320 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"66,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1079 ~ ~320 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"67,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1093 ~ ~321 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"68,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1110 ~ ~320 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"69,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1128 ~ ~321 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"70,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1136 ~ ~320 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"71,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1157 ~ ~330 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"72,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1173 ~ ~330 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"73,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1189 ~ ~330 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"74,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1205 ~ ~330 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"75,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1221 ~ ~330 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"76,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1237 ~ ~330 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"77,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1253 ~ ~330 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"78,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1269 ~ ~330 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"79,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1037 ~ ~337 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"64,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1049 ~ ~348 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"65,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1065 ~ ~336 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"66,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1074 ~ ~336 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"67,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1092 ~ ~350 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"68,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1116 ~ ~337 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"69,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1120 ~ ~336 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"70,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1136 ~ ~336 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"71,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1157 ~ ~346 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"72,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1173 ~ ~346 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"73,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1189 ~ ~346 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"74,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1205 ~ ~346 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"75,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1221 ~ ~346 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"76,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1237 ~ ~346 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"77,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1253 ~ ~346 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"78,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1269 ~ ~346 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"79,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1034 ~ ~354 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"64,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1046 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"65,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1062 ~ ~352 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"66,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1084 ~ ~360 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"67,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1088 ~ ~352 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"68,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1104 ~ ~352 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"69,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1120 ~ ~352 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"70,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1136 ~ ~352 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"71,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1157 ~ ~362 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"72,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1173 ~ ~362 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"73,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1189 ~ ~362 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"74,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1205 ~ ~362 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"75,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1221 ~ ~362 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"76,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1237 ~ ~362 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"77,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1253 ~ ~362 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"78,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1269 ~ ~362 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"79,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1038 ~ ~372 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"64,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1047 ~ ~381 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"65,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1065 ~ ~368 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"66,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1073 ~ ~377 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"67,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1088 ~ ~368 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"68,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1104 ~ ~368 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"69,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1120 ~ ~368 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"70,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1136 ~ ~368 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"71,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1157 ~ ~378 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"72,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1173 ~ ~378 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"73,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1188 ~ ~378 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"74,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1205 ~ ~378 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"75,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1221 ~ ~378 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"76,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1237 ~ ~378 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"77,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1252 ~ ~378 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"78,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1269 ~ ~378 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"79,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1038 ~ ~385 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"64,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1040 ~ ~384 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"65,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1069 ~ ~384 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"66,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1074 ~ ~392 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"67,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1088 ~ ~384 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"68,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1104 ~ ~384 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"69,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1120 ~ ~384 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"70,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1136 ~ ~384 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"71,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1157 ~ ~394 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"72,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1173 ~ ~394 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"73,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1189 ~ ~394 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"74,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1205 ~ ~394 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"75,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1221 ~ ~394 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"76,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1237 ~ ~394 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"77,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1253 ~ ~394 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"78,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1269 ~ ~394 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"79,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1038 ~ ~404 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"64,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1053 ~ ~409 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"65,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1065 ~ ~400 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"66,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1073 ~ ~409 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"67,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1088 ~ ~400 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"68,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1104 ~ ~400 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"69,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1120 ~ ~400 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"70,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1136 ~ ~400 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"71,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1157 ~ ~410 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"72,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1173 ~ ~410 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"73,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1189 ~ ~410 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"74,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1205 ~ ~410 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"75,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1221 ~ ~410 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"76,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1237 ~ ~410 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"77,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1253 ~ ~410 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"78,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1269 ~ ~410 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"79,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1035 ~ ~417 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"64,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1053 ~ ~427 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"65,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1070 ~ ~416 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"66,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1073 ~ ~425 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"67,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1088 ~ ~416 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"68,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1104 ~ ~416 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"69,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1120 ~ ~416 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"70,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1136 ~ ~416 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"71,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1157 ~ ~426 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"72,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1173 ~ ~426 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"73,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1188 ~ ~426 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"74,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1205 ~ ~426 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"75,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1221 ~ ~426 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"76,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1237 ~ ~426 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"77,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1252 ~ ~426 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"78,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1269 ~ ~426 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"79,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1029 ~ ~432 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"64,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1040 ~ ~432 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"65,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1066 ~ ~432 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"66,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1074 ~ ~440 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"67,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1088 ~ ~432 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"68,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1104 ~ ~432 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"69,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1120 ~ ~432 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"70,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1136 ~ ~432 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"71,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1157 ~ ~442 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"72,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1173 ~ ~442 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"73,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1189 ~ ~442 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"74,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1205 ~ ~442 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"75,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1221 ~ ~442 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"76,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1237 ~ ~442 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"77,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1253 ~ ~442 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"78,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1269 ~ ~442 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"79,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1029 ~ ~461 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"64,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1048 ~ ~448 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"65,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1061 ~ ~453 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"66,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1072 ~ ~448 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"67,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1088 ~ ~448 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"68,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1104 ~ ~448 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"69,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1120 ~ ~448 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"70,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1136 ~ ~448 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"71,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1157 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"72,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1173 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"73,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1189 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"74,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1205 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"75,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1221 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"76,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1237 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"77,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1253 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"78,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1269 ~ ~458 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"79,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1024 ~ ~464 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"64,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1050 ~ ~468 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"65,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1056 ~ ~464 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"66,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1072 ~ ~464 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"67,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1088 ~ ~464 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"68,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1104 ~ ~464 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"69,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1120 ~ ~464 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"70,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1136 ~ ~464 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"71,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1157 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"72,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1173 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"73,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1189 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"74,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1205 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"75,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1221 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"76,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1237 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"77,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1253 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"78,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1269 ~ ~474 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"79,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1029 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"64,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1045 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"65,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1065 ~ ~487 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"66,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1077 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"67,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1093 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"68,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1109 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"69,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1125 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"70,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1147 ~ ~488 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"71,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1157 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"72,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1173 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"73,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1189 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"74,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1205 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"75,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1221 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"76,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1237 ~ ~490 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"77,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1248 ~ ~490 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"78,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1269 ~ ~489 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"79,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1024 ~ ~496 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"64,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1053 ~ ~502 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"65,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1071 ~ ~511 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"66,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1079 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"67,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1088 ~ ~496 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"68,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1104 ~ ~496 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"69,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1124 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"70,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1144 ~ ~498 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"71,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1152 ~ ~496 minecraft:crying_obsidian run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"72,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1168 ~ ~496 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"73,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1191 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"74,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1207 ~ ~506 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"75,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1216 ~ ~496 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"76,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1232 ~ ~496 minecraft:deepslate_tiles run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"77,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1256 ~ ~503 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"78,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 192 $(z) if block ~1271 ~ ~501 minecraft:tinted_glass run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 1 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 1 run data modify storage riftbrek:paste miss append value {c:"79,31"}
tellraw @s [{"text":"[PASTE zone 13] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 13 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z13 rb_p 1
