# SAFE SIMULATED 'chunk ban square' - no chunk is touched. Unauthorised players are slowed, warned, then ejected.
# square is 48x48; the command block sits at its centre, 1 block below the paving
execute positioned ~-24 ~-1 ~-24 as @a[dx=47,dy=16,dz=47,tag=!rb_member,tag=!rb_guest] positioned ~24 ~1 ~24 run function riftbrek:zone/cbs_hit
