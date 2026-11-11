tag @s add rb_leader
execute if entity @s[tag=rb_birds] run tag @s add rb_leader_birds
execute if entity @s[tag=rb_unstables] run tag @s add rb_leader_unstables
execute if entity @s[tag=rb_abstracters] run tag @s add rb_leader_abstracters
execute if entity @s[tag=rb_veil] run tag @s add rb_leader_veil
execute if entity @s[tag=rb_archivist] run tag @s add rb_leader_archivist
execute if entity @s[tag=rb_wildcards] run tag @s add rb_leader_wildcards
scoreboard players set @s rb_clear 4
function riftbrek:admin/_setrank {rank:"Leader"}
function riftbrek:log/entry_leader
tellraw @s {"text":"RIFTBREK: leadership role active. Request your Leader ID book with /trigger rb_req set 1.","color":"gold"}
