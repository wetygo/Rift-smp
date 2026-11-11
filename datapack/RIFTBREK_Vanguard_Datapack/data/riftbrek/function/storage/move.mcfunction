# macro: dx,dy,dz = offset of destination hopper from controller; s = slot. Source tray = controller + (0,0,1)
$item replace block ~$(dx) ~$(dy) ~$(dz) container.$(s) from block ~ ~ ~1 container.$(s)
$item replace block ~ ~ ~1 container.$(s) with minecraft:air
