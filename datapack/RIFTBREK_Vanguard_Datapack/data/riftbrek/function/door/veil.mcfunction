# door tier 'veil' width 1: runs AT the command block; the power slot is the cell directly BELOW it (door lintel). Open = redstone_block, closed = iron_bars
execute if entity @a[distance=..3,tag=!rb_revoked,tag=rb_veil,scores={rb_cred=1..,rb_clear=2..}] unless score #GLOBAL rb_lock matches 1 run setblock ~ ~-1 ~ minecraft:redstone_block
execute if entity @a[distance=..3,tag=rb_royal,tag=!rb_revoked,scores={rb_cred=1..,rb_clear=5..}] run setblock ~ ~-1 ~ minecraft:redstone_block
execute unless entity @a[distance=..3,tag=!rb_revoked,tag=rb_veil,scores={rb_cred=1..,rb_clear=2..}] unless entity @a[distance=..3,tag=rb_royal,tag=!rb_revoked,scores={rb_cred=1..,rb_clear=5..}] run setblock ~ ~-1 ~ minecraft:iron_bars
execute if score #GLOBAL rb_lock matches 1 unless entity @a[distance=..3,tag=rb_royal,tag=!rb_revoked,scores={rb_cred=1..,rb_clear=5..}] run setblock ~ ~-1 ~ minecraft:iron_bars
