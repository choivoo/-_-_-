# zone 4 shell 8
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 400 79 0 stone run fill 378 137 -27 379 137 -27 deepslate_tiles
execute if block 400 79 0 stone run fill 375 137 -27 377 137 -27 air
execute if block 400 79 0 stone run fill 372 137 -26 373 137 -26 deepslate_tiles
execute if block 400 79 0 stone run fill 379 137 -26 380 137 -26 deepslate_tiles
execute if block 400 79 0 stone run fill 374 137 -26 378 137 -26 air
execute if block 400 79 0 stone run fill 372 137 -25 372 137 -25 deepslate_tiles
execute if block 400 79 0 stone run fill 380 137 -25 380 137 -25 deepslate_tiles
execute if block 400 79 0 stone run fill 373 137 -25 379 137 -25 air
execute if block 400 79 0 stone run fill 372 137 -24 372 137 -24 deepslate_tiles
execute if block 400 79 0 stone run fill 380 137 -24 380 137 -24 deepslate_tiles
execute if block 400 79 0 stone run fill 373 137 -24 379 137 -24 air
execute if block 400 79 0 stone run fill 372 137 -23 372 137 -23 deepslate_tiles
execute if block 400 79 0 stone run fill 380 137 -23 380 137 -23 deepslate_tiles
execute if block 400 79 0 stone run fill 373 137 -23 379 137 -23 air
execute if block 400 79 0 stone run fill 372 137 -22 373 137 -22 deepslate_tiles
execute if block 400 79 0 stone run fill 379 137 -22 380 137 -22 deepslate_tiles
execute if block 400 79 0 stone run fill 374 137 -22 378 137 -22 air
execute if block 400 79 0 stone run fill 373 137 -21 374 137 -21 deepslate_tiles
execute if block 400 79 0 stone run fill 378 137 -21 379 137 -21 deepslate_tiles
execute if block 400 79 0 stone run fill 375 137 -21 377 137 -21 air
execute if block 400 79 0 stone run fill 374 137 -20 378 137 -20 deepslate_tiles
execute if block 400 79 0 stone run fill 375 138 -27 377 138 -27 deepslate_tiles
execute if block 400 79 0 stone run fill 374 138 -26 378 138 -26 deepslate_tiles
execute if block 400 79 0 stone run fill 373 138 -25 379 138 -25 deepslate_tiles
execute if block 400 79 0 stone run fill 373 138 -24 375 138 -24 deepslate_tiles
execute if block 400 79 0 stone run fill 377 138 -24 379 138 -24 deepslate_tiles
execute if block 400 79 0 stone run fill 376 138 -24 376 138 -24 air
execute if block 400 79 0 stone run fill 373 138 -23 379 138 -23 deepslate_tiles
execute if block 400 79 0 stone run fill 374 138 -22 378 138 -22 deepslate_tiles
execute if block 400 79 0 stone run fill 375 138 -21 377 138 -21 deepslate_tiles
execute if block 400 79 0 stone run fill 376 139 -24 376 139 -24 deepslate_tiles
execute if block 400 79 0 stone run setblock 376 140 -24 end_rod
execute if block 400 79 0 stone run fill 374 100 20 378 133 20 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 373 100 21 374 133 21 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 378 100 21 379 133 21 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 375 100 21 377 133 21 air
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
