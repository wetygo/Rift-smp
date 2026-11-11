data modify storage riftbrek:tmp q set value {}
execute store result storage riftbrek:tmp q.id int 1 run scoreboard players get @s rb_id
execute unless score @s rb_id matches 1.. run tellraw @s {"text":"You are not registered.","color":"red"}
execute if score @s rb_id matches 1.. run function riftbrek:registry/self_fetch with storage riftbrek:tmp q
