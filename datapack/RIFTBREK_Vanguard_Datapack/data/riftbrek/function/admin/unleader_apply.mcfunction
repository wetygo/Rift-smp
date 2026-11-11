tag @s remove rb_leader
tag @s remove rb_leader_birds
tag @s remove rb_leader_unstables
tag @s remove rb_leader_abstracters
tag @s remove rb_leader_veil
tag @s remove rb_leader_archivist
tag @s remove rb_leader_wildcards
execute if entity @s[tag=rb_member,tag=!rb_royal] run scoreboard players set @s rb_clear 2
execute if entity @s[tag=!rb_royal] run function riftbrek:admin/_setrank {rank:"Member"}
tellraw @s {"text":"RIFTBREK: leadership role removed.","color":"yellow"}
