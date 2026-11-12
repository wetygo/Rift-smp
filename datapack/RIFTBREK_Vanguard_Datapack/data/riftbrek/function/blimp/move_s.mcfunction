# 0.5 block/tick south (+z) along the lane x=250. Seats every tick; the ~1900 hull boxes every 2 ticks (1 block, interpolated by teleport_duration:2)
execute as @e[tag=rb_seat] at @s run tp @s ~ ~ ~0.5
scoreboard players operation #M rb_bl = #T rb_bl
scoreboard players operation #M rb_bl %= #2 rb_const
execute if score #M rb_bl matches 0 as @e[tag=rb_hull] at @s run tp @s ~ ~ ~1
