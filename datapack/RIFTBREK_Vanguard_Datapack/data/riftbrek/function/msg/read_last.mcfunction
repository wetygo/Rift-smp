execute unless score #VER rb_msg matches 1.. run tellraw @s {"text":"No announcements yet.","color":"gray"}
execute if score #VER rb_msg matches 1.. run tellraw @s [{"text":"[Last announcement] ","color":"gold"},{"nbt":"last.from","storage":"riftbrek:msg","color":"light_purple"},{"text":": "},{"nbt":"last.text","storage":"riftbrek:msg","color":"white"}]
scoreboard players operation @s rb_seen = #VER rb_msg
