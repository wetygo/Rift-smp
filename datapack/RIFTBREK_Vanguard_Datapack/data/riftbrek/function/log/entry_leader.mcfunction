data modify storage riftbrek:tmp l set value {}
execute store result storage riftbrek:tmp l.id int 1 run scoreboard players get @s rb_id
execute store result storage riftbrek:tmp l.time int 1 run time query gametime
data modify storage riftbrek:tmp l.event set value "promoted to Leader"
execute if entity @s[tag=rb_veil] run data modify storage riftbrek:tmp l.veil set value 1b
data modify storage riftbrek:log entries append from storage riftbrek:tmp l
