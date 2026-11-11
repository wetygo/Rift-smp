tag @s add rb_unstables
tag @s add rb_member
scoreboard players set @s rb_role 2
scoreboard players set @s rb_clear 2
scoreboard players set @s rb_cred 1
team join rb_unstables @s
data modify storage riftbrek:tmp q.faction set value "The Unstables"
data modify storage riftbrek:tmp q.fcode set value "UN"
data modify storage riftbrek:tmp q.rank set value "Member"
