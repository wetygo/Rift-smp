# zone 3: chunks x 32..47, z 0..15  (blocks 512..767, 0..255)
# macro: x,z = schematic origin (admin/origin)
$execute positioned $(x) 0 $(z) run forceload remove ~512 ~0 ~767 ~255
