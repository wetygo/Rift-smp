# zone 2: chunks x 16..31, z 0..15  (blocks 256..511, 0..255)
# macro: x,z = schematic origin (admin/origin)
$execute positioned $(x) 0 $(z) run forceload add ~256 ~0 ~511 ~255
