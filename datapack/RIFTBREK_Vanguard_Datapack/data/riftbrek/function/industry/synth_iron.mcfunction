# COMMAND-DRIVEN generator (not a survival-legit farm): every 5 s inserts one loot roll of minecraft:entities/iron_golem into the chest above this command block.
execute store result score #t rb_tmp run time query gametime
scoreboard players operation #t rb_tmp %= #100 rb_const
execute if score #t rb_tmp matches 0 run loot insert ~ ~1 ~ loot minecraft:entities/iron_golem
