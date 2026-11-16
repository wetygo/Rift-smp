# zone 1: chunks x 0..15, z 0..15  (blocks 0..255, 0..255)
# macro: x,z = schematic origin (admin/origin)
$execute positioned $(x) 0 $(z) run forceload remove ~0 ~0 ~255 ~255
