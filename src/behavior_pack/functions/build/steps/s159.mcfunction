# zone 4 shell 5
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill 372 100 -22 373 133 -22 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 379 100 -22 380 133 -22 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 100 -22 378 133 -22 air
execute if score _bready bce_sys matches 1 run fill 373 100 -21 374 133 -21 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 100 -21 379 133 -21 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 375 100 -21 377 133 -21 air
execute if score _bready bce_sys matches 1 run fill 374 100 -20 378 133 -20 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 124 -28 378 124 -28 amethyst_block
execute if score _bready bce_sys matches 1 run fill 373 124 -27 374 124 -27 amethyst_block
execute if score _bready bce_sys matches 1 run fill 378 124 -27 379 124 -27 amethyst_block
execute if score _bready bce_sys matches 1 run fill 372 124 -26 373 124 -26 amethyst_block
execute if score _bready bce_sys matches 1 run fill 379 124 -26 380 124 -26 amethyst_block
execute if score _bready bce_sys matches 1 run fill 372 124 -25 372 124 -25 amethyst_block
execute if score _bready bce_sys matches 1 run fill 380 124 -25 380 124 -25 amethyst_block
execute if score _bready bce_sys matches 1 run fill 372 124 -24 372 124 -24 amethyst_block
execute if score _bready bce_sys matches 1 run fill 380 124 -24 380 124 -24 amethyst_block
execute if score _bready bce_sys matches 1 run fill 372 124 -23 372 124 -23 amethyst_block
execute if score _bready bce_sys matches 1 run fill 380 124 -23 380 124 -23 amethyst_block
execute if score _bready bce_sys matches 1 run fill 372 124 -22 373 124 -22 amethyst_block
execute if score _bready bce_sys matches 1 run fill 379 124 -22 380 124 -22 amethyst_block
execute if score _bready bce_sys matches 1 run fill 373 124 -21 374 124 -21 amethyst_block
execute if score _bready bce_sys matches 1 run fill 378 124 -21 379 124 -21 amethyst_block
execute if score _bready bce_sys matches 1 run fill 374 124 -20 378 124 -20 amethyst_block
execute if score _bready bce_sys matches 1 run fill 374 134 -29 378 134 -29 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 134 -28 373 134 -28 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 379 134 -28 379 134 -28 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 134 -28 378 134 -28 air
execute if score _bready bce_sys matches 1 run fill 372 134 -27 372 134 -27 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 380 134 -27 380 134 -27 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 134 -27 379 134 -27 air
execute if score _bready bce_sys matches 1 run fill 371 134 -26 371 134 -26 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 381 134 -26 381 134 -26 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 372 134 -26 380 134 -26 air
execute if score _bready bce_sys matches 1 run fill 371 134 -25 371 134 -25 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 381 134 -25 381 134 -25 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 372 134 -25 380 134 -25 air
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
