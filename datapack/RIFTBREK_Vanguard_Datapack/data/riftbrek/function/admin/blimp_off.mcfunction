# OP ONLY. Removes the airship and stops the cycle.
scoreboard players set #ON rb_bl 0
scoreboard players set #SPAWNED rb_bl 0
execute as @a[tag=rb_riding] run ride @s dismount
kill @e[tag=rb_blimp]
