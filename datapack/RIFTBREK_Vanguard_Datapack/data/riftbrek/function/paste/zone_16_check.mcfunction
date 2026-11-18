# zone 16 paste check: 3 probes per chunk, compares the block at fixed positions with the schematic
# macro: x,z = schematic origin. Zone must be loaded (zone_N_on, wait ~10 s) before checking.
scoreboard players set #OK rb_p 0
scoreboard players set #TOT rb_p 0
data modify storage riftbrek:paste miss set value []
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"112,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"113,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"114,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"115,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~264 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~264 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"116,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1876 ~ ~260 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1876 ~ ~260 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"117,16"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"112,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"113,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"114,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"115,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~280 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~280 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"116,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1876 ~ ~276 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1876 ~ ~276 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"117,17"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"112,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"113,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"114,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"115,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~296 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~296 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"116,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1876 ~ ~292 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1876 ~ ~292 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"117,18"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"112,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"113,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"114,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"115,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~312 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~312 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"116,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1876 ~ ~308 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1876 ~ ~308 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"117,19"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"112,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"113,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"114,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"115,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~328 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~328 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"116,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1876 ~ ~324 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1876 ~ ~324 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"117,20"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"112,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"113,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"114,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"115,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~344 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~344 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"116,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1876 ~ ~340 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1876 ~ ~340 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"117,21"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"112,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"113,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"114,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"115,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~360 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~360 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"116,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1876 ~ ~356 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1876 ~ ~356 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"117,22"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"112,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"113,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"114,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"115,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~376 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~376 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"116,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1876 ~ ~372 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1876 ~ ~372 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"117,23"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"112,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"113,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"114,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"115,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~392 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~392 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"116,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1876 ~ ~388 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1876 ~ ~388 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"117,24"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"112,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"113,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"114,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"115,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~408 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~408 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"116,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1876 ~ ~404 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1876 ~ ~404 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"117,25"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"112,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"113,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"114,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"115,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~424 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~424 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"116,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1876 ~ ~420 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1876 ~ ~420 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"117,26"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"112,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"113,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"114,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"115,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~440 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~440 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"116,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1876 ~ ~436 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1876 ~ ~436 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"117,27"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"112,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"113,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"114,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"115,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~456 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~456 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"116,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1876 ~ ~452 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1876 ~ ~452 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"117,28"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"112,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"113,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"114,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"115,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~472 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~472 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"116,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1876 ~ ~468 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1876 ~ ~468 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"117,29"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"112,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"113,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"114,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"115,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~488 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~488 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"116,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1876 ~ ~484 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1876 ~ ~484 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"117,30"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1800 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1800 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"112,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1816 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1816 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"113,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1832 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1832 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"114,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1848 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1848 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"115,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1864 ~ ~504 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1864 ~ ~504 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"116,31"}
scoreboard players set #c rb_p 0
$execute positioned $(x) 31 $(z) if block ~1876 ~ ~500 minecraft:grass_block run scoreboard players add #c rb_p 1
$execute positioned $(x) -44 $(z) if block ~1876 ~ ~500 minecraft:deepslate run scoreboard players add #c rb_p 1
scoreboard players add #TOT rb_p 1
execute if score #c rb_p matches 2 run scoreboard players add #OK rb_p 1
execute unless score #c rb_p matches 2 run data modify storage riftbrek:paste miss append value {c:"117,31"}
tellraw @s [{"text":"[PASTE zone 16] chunks OK: ","color":"light_purple"},{"score":{"name":"#OK","objective":"rb_p"},"color":"white"},{"text":" / "},{"score":{"name":"#TOT","objective":"rb_p"},"color":"white"}]
execute unless score #OK rb_p = #TOT rb_p run tellraw @s [{"text":"  MISSING chunk(cx,cz): ","color":"red"},{"nbt":"miss[].c","storage":"riftbrek:paste","separator":"  ","color":"gray"}]
execute if score #OK rb_p = #TOT rb_p run tellraw @s {"text":"  zone 16 COMPLETE","color":"green"}
execute if score #OK rb_p = #TOT rb_p run scoreboard players set #Z16 rb_p 1
