# Crafters trigger on a rising redstone edge.  Slot (directly above this command block) is a 4-tick pulse every 20 ticks.
execute store result score #t rb_tmp run time query gametime
scoreboard players operation #t rb_tmp %= #20 rb_const
execute if score #t rb_tmp matches 0..3 run setblock ~ ~1 ~ minecraft:redstone_block
execute unless score #t rb_tmp matches 0..3 run setblock ~ ~1 ~ minecraft:air
