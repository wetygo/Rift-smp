tag @s remove rb_royal
scoreboard players set @s rb_clear 2
execute if entity @s[tag=rb_leader] run scoreboard players set @s rb_clear 4
function riftbrek:admin/_setrank {rank:"Member"}
tellraw @s {"text":"RIFTBREK: Royal clearance removed.","color":"yellow"}
