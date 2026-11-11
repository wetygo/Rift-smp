tag @s remove rb_birds
tag @s remove rb_unstables
tag @s remove rb_abstracters
tag @s remove rb_veil
tag @s remove rb_archivist
tag @s remove rb_wildcards
tag @s remove rb_leader_birds
tag @s remove rb_leader_unstables
tag @s remove rb_leader_abstracters
tag @s remove rb_leader_veil
tag @s remove rb_leader_archivist
tag @s remove rb_leader_wildcards
tag @s remove rb_member
tag @s remove rb_leader
tag @s remove rb_guest
tag @s remove rb_royal
tag @s add rb_revoked
scoreboard players set @s rb_clear 0
scoreboard players set @s rb_cred 0
scoreboard players set @s rb_role 0
scoreboard players set @s rb_visitor 0
team leave @s
effect clear @s minecraft:invisibility
function riftbrek:admin/_setstatus {status:"revoked"}
function riftbrek:log/entry_revoke
tellraw @s {"text":"RIFTBREK: credentials revoked. Doors, kits and registry access are disabled server-side.","color":"red"}
