tag @s add rb_abstracters
tag @s add rb_member
scoreboard players set @s rb_role 3
scoreboard players set @s rb_clear 2
scoreboard players set @s rb_cred 1
team join rb_abstracters @s
data modify storage riftbrek:tmp q.faction set value "Abstracters"
data modify storage riftbrek:tmp q.fcode set value "AB"
data modify storage riftbrek:tmp q.rank set value "Member"
