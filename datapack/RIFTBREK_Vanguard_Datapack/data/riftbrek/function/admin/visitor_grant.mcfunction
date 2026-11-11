tag @s remove rb_revoked
tag @s add rb_guest
execute unless score @s rb_id matches 1.. run function riftbrek:admin/_newid
scoreboard players set @s rb_visitor 12000
scoreboard players set @s rb_clear 1
scoreboard players set @s rb_cred 1
data modify storage riftbrek:tmp q set value {}
execute store result storage riftbrek:tmp q.id int 1 run scoreboard players get @s rb_id
$data modify storage riftbrek:tmp q.mc set value "$(mc)"
data modify storage riftbrek:tmp q.discord set value "n/a"
data modify storage riftbrek:tmp q.key set value "visitor"
data modify storage riftbrek:tmp q.faction set value "Visitor"
data modify storage riftbrek:tmp q.fcode set value "VS"
data modify storage riftbrek:tmp q.rank set value "Visitor"
data modify storage riftbrek:tmp q.status set value "active"
function riftbrek:admin/_write with storage riftbrek:tmp q
tellraw @s {"text":"RIFTBREK: visitor pass active for ~10 minutes of online time.","color":"aqua"}
