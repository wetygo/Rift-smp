data modify storage riftbrek:tmp r set value {}
execute store result storage riftbrek:tmp r.id int 1 run scoreboard players get @s rb_id
$data modify storage riftbrek:tmp r.status set value "$(status)"
function riftbrek:admin/_setstatus2 with storage riftbrek:tmp r
