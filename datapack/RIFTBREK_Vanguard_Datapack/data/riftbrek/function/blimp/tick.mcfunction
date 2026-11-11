# controller (repeating command block under dock A). The ship only exists after: /function riftbrek:admin/blimp_on
execute unless score #SPAWNED rb_bl matches 1 if score #ON rb_bl matches 1 run function riftbrek:blimp/spawn
execute if score #SPAWNED rb_bl matches 1 run function riftbrek:blimp/run
