# runs AT the monitor command block in the security control room: a redstone block above it while lockdown is ON lights the indicator lamps
execute if score #GLOBAL rb_lock matches 1 run setblock ~ ~1 ~ minecraft:redstone_block
execute unless score #GLOBAL rb_lock matches 1 run setblock ~ ~1 ~ minecraft:air
