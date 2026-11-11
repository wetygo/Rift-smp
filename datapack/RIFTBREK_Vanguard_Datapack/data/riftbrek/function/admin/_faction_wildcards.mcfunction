tag @s add rb_wildcards
tag @s add rb_member
scoreboard players set @s rb_role 6
scoreboard players set @s rb_clear 2
scoreboard players set @s rb_cred 1
team join rb_wildcards @s
data modify storage riftbrek:tmp q.faction set value "Wildcards"
data modify storage riftbrek:tmp q.fcode set value "WC"
data modify storage riftbrek:tmp q.rank set value "Member"
