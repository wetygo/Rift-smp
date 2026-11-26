# zone 12: chunks x 48..63, z 16..31  (blocks 768..1023, 256..511)
# macro: x,z = schematic origin (admin/origin)
$execute positioned $(x) 0 $(z) run forceload remove ~768 ~256 ~1023 ~511
