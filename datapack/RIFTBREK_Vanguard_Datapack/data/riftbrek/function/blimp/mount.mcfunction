execute if entity @e[tag=rb_seat,tag=!rb_taken] run tag @e[tag=rb_seat,tag=!rb_taken,limit=1,sort=nearest] add rb_pending
ride @s mount @e[tag=rb_pending,limit=1]
execute if entity @e[tag=rb_pending] run tag @s add rb_riding
tag @e[tag=rb_pending] add rb_taken
tag @e[tag=rb_pending] remove rb_pending
