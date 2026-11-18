# zone 4: chunks x 48..63, z 0..15  (blocks 768..1023, 0..255)
# macro: x,z = schematic origin (admin/origin)
$execute positioned $(x) 0 $(z) run forceload remove ~768 ~0 ~1023 ~255
