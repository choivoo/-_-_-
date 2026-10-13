# zone 4 detail 1
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 400 79 0 stone run setblock 436 100 -7 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 436 113 -7 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 436 100 1 436 113 1 blackstone
execute if block 400 79 0 stone run setblock 436 100 1 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 436 113 1 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 436 100 9 436 113 9 blackstone
execute if block 400 79 0 stone run setblock 436 100 9 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 436 113 9 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 433 100 -3 435 100 3 gilded_blackstone
execute if block 400 79 0 stone run setblock 435 101 0 polished_blackstone_brick_stairs
execute if block 400 79 0 stone run fill 375 129 -27 377 129 -27 polished_blackstone
execute if block 400 79 0 stone run fill 374 129 -26 378 129 -26 polished_blackstone
execute if block 400 79 0 stone run fill 373 129 -25 379 129 -25 polished_blackstone
execute if block 400 79 0 stone run fill 373 129 -24 379 129 -24 polished_blackstone
execute if block 400 79 0 stone run fill 373 129 -23 379 129 -23 polished_blackstone
execute if block 400 79 0 stone run fill 374 129 -22 378 129 -22 polished_blackstone
execute if block 400 79 0 stone run fill 375 129 -21 377 129 -21 polished_blackstone
execute if block 400 79 0 stone run fill 380 131 -24 380 132 -24 air
execute if block 400 79 0 stone run fill 375 129 21 377 129 21 polished_blackstone
execute if block 400 79 0 stone run fill 374 129 22 378 129 22 polished_blackstone
execute if block 400 79 0 stone run fill 373 129 23 379 129 23 polished_blackstone
execute if block 400 79 0 stone run fill 373 129 24 379 129 24 polished_blackstone
execute if block 400 79 0 stone run fill 373 129 25 379 129 25 polished_blackstone
execute if block 400 79 0 stone run fill 374 129 26 378 129 26 polished_blackstone
execute if block 400 79 0 stone run fill 375 129 27 377 129 27 polished_blackstone
execute if block 400 79 0 stone run fill 380 131 24 380 132 24 air
execute if block 400 79 0 stone run fill 373 100 -6 373 111 -6 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 373 100 -5 373 113 -5 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 373 112 -4 373 114 -4 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 373 113 -3 373 114 -3 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 373 114 -2 373 115 -2 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 373 114 -1 373 115 -1 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 373 114 0 373 115 0 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 373 114 1 373 115 1 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 373 114 2 373 115 2 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 373 113 3 373 114 3 chiseled_polished_blackstone
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
