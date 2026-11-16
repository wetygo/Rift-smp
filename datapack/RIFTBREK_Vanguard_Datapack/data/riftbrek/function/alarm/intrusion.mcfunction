# runs AT an impulse command block next to a sculk sensor on the wall. Only fires for UNREGISTERED players nearby (mobs and members are ignored); 10 s cooldown.
execute unless score #INT rb_msg matches 1.. if entity @a[distance=..18,gamemode=!spectator,tag=!rb_member,tag=!rb_guest] run function riftbrek:alarm/intrusion_fire
