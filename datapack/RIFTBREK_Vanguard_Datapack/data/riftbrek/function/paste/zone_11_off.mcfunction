# zone 11: chunks x 32..47, z 16..31  (blocks 512..767, 256..511)
# macro: x,z = schematic origin (admin/origin)
$execute positioned $(x) 0 $(z) run forceload remove ~512 ~256 ~767 ~511
