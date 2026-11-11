# executes as player; macro arg: rank
data modify storage riftbrek:tmp r set value {}
execute store result storage riftbrek:tmp r.id int 1 run scoreboard players get @s rb_id
$data modify storage riftbrek:tmp r.rank set value "$(rank)"
function riftbrek:admin/_setrank2 with storage riftbrek:tmp r
