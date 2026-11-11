# optional alarm: place a command block beside a note block / lamp array
execute if score #GLOBAL rb_lock matches 1 run setblock ~ ~1 ~ minecraft:redstone_block
execute unless score #GLOBAL rb_lock matches 1 run setblock ~ ~1 ~ minecraft:air
