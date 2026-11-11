tag @s add rb_archivist
tag @s add rb_member
scoreboard players set @s rb_role 5
scoreboard players set @s rb_clear 2
scoreboard players set @s rb_cred 1
team join rb_archivist @s
data modify storage riftbrek:tmp q.faction set value "The Archivist"
data modify storage riftbrek:tmp q.fcode set value "AR"
data modify storage riftbrek:tmp q.rank set value "Member"
