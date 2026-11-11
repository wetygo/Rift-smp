tag @s remove rb_revoked
tag @s add rb_royal
tag @s add rb_member
scoreboard players set @s rb_clear 5
scoreboard players set @s rb_cred 1
execute unless score @s rb_id matches 1.. run function riftbrek:admin/_newid
function riftbrek:admin/_setrank {rank:"Royal"}
function riftbrek:log/entry_royal
tellraw @s {"text":"RIFTBREK: Royal clearance assigned.","color":"gold"}
