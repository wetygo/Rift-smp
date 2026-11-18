# zone 9: chunks x 0..15, z 16..31  (blocks 0..255, 256..511)
# macro: x,z = schematic origin (admin/origin)
$execute positioned $(x) 0 $(z) run forceload remove ~0 ~256 ~255 ~511
