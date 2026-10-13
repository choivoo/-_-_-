# zone 4 shell 0
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 400 79 0 stone run fill 374 100 -20 378 126 20 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 374 100 -4 378 112 4 air
execute if block 400 79 0 stone run fill 374 113 -5 378 113 5 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 373 100 -12 373 122 -12 blackstone
execute if block 400 79 0 stone run setblock 373 123 -12 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 372 105 -12 soul_lantern
execute if block 400 79 0 stone run fill 373 100 -8 373 122 -8 blackstone
execute if block 400 79 0 stone run setblock 373 123 -8 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 372 105 -8 soul_lantern
execute if block 400 79 0 stone run fill 373 100 8 373 122 8 blackstone
execute if block 400 79 0 stone run setblock 373 123 8 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 372 105 8 soul_lantern
execute if block 400 79 0 stone run fill 373 100 12 373 122 12 blackstone
execute if block 400 79 0 stone run setblock 373 123 12 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 372 105 12 soul_lantern
execute if block 400 79 0 stone run setblock 374 127 -20 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 -18 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 -16 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 -14 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 -12 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 -10 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 -8 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 -6 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 -4 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 -2 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 0 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 2 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 4 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 6 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 8 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 10 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 12 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 14 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 16 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 18 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 374 127 20 polished_blackstone_bricks
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
