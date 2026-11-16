# silence + clear alarm titles
stopsound @a master minecraft:block.bell.use
title @a clear
tellraw @a[tag=rb_member,tag=!rb_revoked] {"text":"[ALARM] cleared","color":"green"}
