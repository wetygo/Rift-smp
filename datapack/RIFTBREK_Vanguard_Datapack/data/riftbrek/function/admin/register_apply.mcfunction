# executes AS the player being registered (macro args come from admin/register)
execute if score @s rb_id matches 1.. run tag @s add rb_rereg
function riftbrek:admin/_clear_roles
execute unless score @s rb_id matches 1.. run function riftbrek:admin/_newid
data modify storage riftbrek:tmp q set value {}
execute store result storage riftbrek:tmp q.id int 1 run scoreboard players get @s rb_id
$data modify storage riftbrek:tmp q.mc set value "$(mc)"
$data modify storage riftbrek:tmp q.discord set value "$(discord)"
$data modify storage riftbrek:tmp q.key set value "$(faction)"
$function riftbrek:admin/_faction_$(faction)
data modify storage riftbrek:tmp q.status set value "active"
function riftbrek:admin/_write with storage riftbrek:tmp q
data modify storage riftbrek:tmp n set value {}
execute store result storage riftbrek:tmp n.id int 1 run scoreboard players get @s rb_id
execute if entity @s[tag=!rb_rereg] run data modify storage riftbrek:registry roster append from storage riftbrek:tmp n
tag @s remove rb_rereg
function riftbrek:log/entry_register
tellraw @s {"text":"RIFTBREK: you are registered. Credential active. Use /trigger rb_req set 1 for your ID book.","color":"aqua"}
