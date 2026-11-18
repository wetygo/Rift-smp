# zone 18: chunks x 16..31, z 32..47  (blocks 256..511, 512..767)
# macro: x,z = schematic origin (admin/origin)
$execute positioned $(x) 0 $(z) run forceload add ~256 ~512 ~511 ~767
