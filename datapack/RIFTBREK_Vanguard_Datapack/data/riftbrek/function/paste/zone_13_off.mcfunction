# zone 13: chunks x 64..79, z 16..31  (blocks 1024..1279, 256..511)
# macro: x,z = schematic origin (admin/origin)
$execute positioned $(x) 0 $(z) run forceload remove ~1024 ~256 ~1279 ~511
