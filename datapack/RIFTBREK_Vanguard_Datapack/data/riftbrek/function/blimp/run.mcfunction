scoreboard players add #T rb_bl 1
# bookkeeping: riders who left, seats that emptied
execute as @a[tag=rb_riding] unless data entity @s RootVehicle run function riftbrek:blimp/left
execute as @e[tag=rb_seat,tag=rb_taken] unless data entity @s Passengers run tag @s remove rb_taken
execute as @a[tag=rb_nob] at @s unless entity @e[tag=rb_seat,distance=..12] run tag @s remove rb_nob
execute if score #PH rb_bl matches 0 if score #T rb_bl matches 1..100 run function riftbrek:blimp/board
execute if score #PH rb_bl matches 0 if score #T rb_bl matches 600.. run function riftbrek:blimp/next
execute if score #PH rb_bl matches 2 if score #T rb_bl matches 1..100 run function riftbrek:blimp/board
execute if score #PH rb_bl matches 2 if score #T rb_bl matches 600.. run function riftbrek:blimp/next
execute if score #PH rb_bl matches 4 if score #T rb_bl matches 1..100 run function riftbrek:blimp/board
execute if score #PH rb_bl matches 4 if score #T rb_bl matches 600.. run function riftbrek:blimp/next
execute if score #PH rb_bl matches 6 if score #T rb_bl matches 1..100 run function riftbrek:blimp/board
execute if score #PH rb_bl matches 6 if score #T rb_bl matches 600.. run function riftbrek:blimp/next
execute if score #PH rb_bl matches 1 run function riftbrek:blimp/move_s
execute if score #PH rb_bl matches 1 if score #T rb_bl matches 804.. run function riftbrek:blimp/next
execute if score #PH rb_bl matches 3 run function riftbrek:blimp/move_s
execute if score #PH rb_bl matches 3 if score #T rb_bl matches 440.. run function riftbrek:blimp/next
execute if score #PH rb_bl matches 5 run function riftbrek:blimp/move_n
execute if score #PH rb_bl matches 5 if score #T rb_bl matches 440.. run function riftbrek:blimp/next
execute if score #PH rb_bl matches 7 run function riftbrek:blimp/move_n
execute if score #PH rb_bl matches 7 if score #T rb_bl matches 804.. run function riftbrek:blimp/next
