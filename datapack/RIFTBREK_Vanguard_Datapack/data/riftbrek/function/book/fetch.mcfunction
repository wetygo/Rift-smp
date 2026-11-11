$data modify storage riftbrek:tmp rec set from storage riftbrek:registry players."$(id)"
execute store result storage riftbrek:tmp rec.clear int 1 run scoreboard players get @s rb_clear
execute if entity @s[tag=rb_veil] run function riftbrek:book/give_veil with storage riftbrek:tmp rec
execute if entity @s[tag=rb_guest] run function riftbrek:book/give_visitor with storage riftbrek:tmp rec
execute if entity @s[tag=!rb_veil,tag=!rb_guest,tag=rb_member] run function riftbrek:book/give_member with storage riftbrek:tmp rec
scoreboard players add @s rb_issued 1
