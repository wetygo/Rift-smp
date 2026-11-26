# zone 20: chunks x 48..63, z 32..47  (blocks 768..1023, 512..767)
# macro: x,z = schematic origin (admin/origin)
$execute positioned $(x) 0 $(z) run forceload remove ~768 ~512 ~1023 ~767
