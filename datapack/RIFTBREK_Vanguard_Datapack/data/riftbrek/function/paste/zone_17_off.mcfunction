# zone 17: chunks x 0..15, z 32..47  (blocks 0..255, 512..767)
# macro: x,z = schematic origin (admin/origin)
$execute positioned $(x) 0 $(z) run forceload remove ~0 ~512 ~255 ~767
