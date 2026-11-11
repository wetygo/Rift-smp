scoreboard players add @s rb_cbs 2
effect give @s minecraft:slowness 2 3 true
effect give @s minecraft:darkness 2 0 true
execute unless score @s rb_msgcd matches 1.. run tellraw @s {"text":"CHUNK BAN SQUARE: unauthorised. Leave now or you will be ejected.","color":"red"}
scoreboard players set @s rb_msgcd 100
execute if score @s rb_cbs matches 120.. run function riftbrek:zone/cbs_eject
