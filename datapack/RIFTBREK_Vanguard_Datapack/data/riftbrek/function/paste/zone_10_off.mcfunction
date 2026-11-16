# zone 10: chunks x 16..31, z 16..31  (blocks 256..511, 256..511)
# macro: x,z = schematic origin (admin/origin)
$execute positioned $(x) 0 $(z) run forceload remove ~256 ~256 ~511 ~511
