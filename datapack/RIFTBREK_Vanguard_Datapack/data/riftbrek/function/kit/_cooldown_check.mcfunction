# sets tag rb_kit_ok on @s when a kit may be issued (cooldown 12000 ticks = 10 min; Royal bypasses)
tag @s remove rb_kit_ok
execute store result score #now rb_tmp run time query gametime
scoreboard players operation #diff rb_tmp = #now rb_tmp
scoreboard players operation #diff rb_tmp -= @s rb_lastkit
execute unless score @s rb_kit matches 1.. run tag @s add rb_kit_ok
execute if score @s rb_kit matches 1.. if score #diff rb_tmp matches 12000.. run tag @s add rb_kit_ok
execute if entity @s[tag=rb_royal] run tag @s add rb_kit_ok
execute if entity @s[tag=!rb_kit_ok] unless score @s rb_msgcd matches 1.. run tellraw @s {"text":"Kit on cooldown (10 min between kits).","color":"yellow"}
execute if entity @s[tag=!rb_kit_ok] run scoreboard players set @s rb_msgcd 100
