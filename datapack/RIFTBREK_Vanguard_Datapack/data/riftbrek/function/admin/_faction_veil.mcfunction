tag @s add rb_veil
tag @s add rb_member
scoreboard players set @s rb_role 4
scoreboard players set @s rb_clear 2
scoreboard players set @s rb_cred 1
team join rb_veil @s
data modify storage riftbrek:tmp q.faction set value "Veil"
data modify storage riftbrek:tmp q.fcode set value "VL"
data modify storage riftbrek:tmp q.rank set value "Member"
