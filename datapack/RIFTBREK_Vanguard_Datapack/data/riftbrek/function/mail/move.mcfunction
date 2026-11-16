# macro: dx,dy,dz = destination dispenser relative to the sending room's mail command block, s = slot
$item replace block ~$(dx) ~$(dy) ~$(dz) container.$(s) from block ~ ~1 ~ container.$(s)
$item replace block ~ ~1 ~ container.$(s) with minecraft:air
$execute positioned ~$(dx) ~$(dy) ~$(dz) run title @a[distance=..8] actionbar {"text":"You have mail in your dispenser","color":"gold"}
