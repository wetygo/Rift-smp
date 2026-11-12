execute as @e[tag=rb_seat] at @s run tp @s ~ ~ ~-0.5
scoreboard players operation #M rb_bl = #T rb_bl
scoreboard players operation #M rb_bl %= #2 rb_const
execute if score #M rb_bl matches 0 as @e[tag=rb_hull] at @s run tp @s ~ ~ ~-1
