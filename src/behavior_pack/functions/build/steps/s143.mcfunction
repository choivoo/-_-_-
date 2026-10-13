# zone 4 shell 9
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 400 79 0 stone run fill 372 100 22 373 133 22 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 379 100 22 380 133 22 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 374 100 22 378 133 22 air
execute if block 400 79 0 stone run fill 372 100 23 372 133 23 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 380 100 23 380 133 23 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 373 100 23 379 133 23 air
execute if block 400 79 0 stone run fill 372 100 24 372 133 24 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 380 100 24 380 133 24 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 373 100 24 379 133 24 air
execute if block 400 79 0 stone run fill 372 100 25 372 133 25 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 380 100 25 380 133 25 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 373 100 25 379 133 25 air
execute if block 400 79 0 stone run fill 372 100 26 373 133 26 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 379 100 26 380 133 26 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 374 100 26 378 133 26 air
execute if block 400 79 0 stone run fill 373 100 27 374 133 27 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 378 100 27 379 133 27 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 375 100 27 377 133 27 air
execute if block 400 79 0 stone run fill 374 100 28 378 133 28 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 374 124 20 378 124 20 amethyst_block
execute if block 400 79 0 stone run fill 373 124 21 374 124 21 amethyst_block
execute if block 400 79 0 stone run fill 378 124 21 379 124 21 amethyst_block
execute if block 400 79 0 stone run fill 372 124 22 373 124 22 amethyst_block
execute if block 400 79 0 stone run fill 379 124 22 380 124 22 amethyst_block
execute if block 400 79 0 stone run fill 372 124 23 372 124 23 amethyst_block
execute if block 400 79 0 stone run fill 380 124 23 380 124 23 amethyst_block
execute if block 400 79 0 stone run fill 372 124 24 372 124 24 amethyst_block
execute if block 400 79 0 stone run fill 380 124 24 380 124 24 amethyst_block
execute if block 400 79 0 stone run fill 372 124 25 372 124 25 amethyst_block
execute if block 400 79 0 stone run fill 380 124 25 380 124 25 amethyst_block
execute if block 400 79 0 stone run fill 372 124 26 373 124 26 amethyst_block
execute if block 400 79 0 stone run fill 379 124 26 380 124 26 amethyst_block
execute if block 400 79 0 stone run fill 373 124 27 374 124 27 amethyst_block
execute if block 400 79 0 stone run fill 378 124 27 379 124 27 amethyst_block
execute if block 400 79 0 stone run fill 374 124 28 378 124 28 amethyst_block
execute if block 400 79 0 stone run fill 374 134 19 378 134 19 deepslate_tiles
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
