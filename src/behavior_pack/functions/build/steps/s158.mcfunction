# zone 4 shell 4
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill 386 151 3 392 153 3 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 387 151 4 391 153 4 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 388 154 -3 390 156 -3 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 387 154 -2 391 156 -2 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 386 154 -1 392 156 -1 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 386 154 0 392 156 0 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 386 154 1 392 156 1 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 387 154 2 391 156 2 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 388 154 3 390 156 3 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 388 157 -2 390 159 -2 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 387 157 -1 391 159 -1 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 387 157 0 391 159 0 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 387 157 1 391 159 1 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 388 157 2 390 159 2 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 388 160 -1 390 162 -1 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 388 160 0 390 162 0 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 388 160 1 390 162 1 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 389 163 0 389 165 0 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 389 166 0 389 168 0 end_rod
execute if score _bready bce_sys matches 1 run setblock 389 189 0 amethyst_block
execute if score _bready bce_sys matches 1 run fill 374 100 -28 378 133 -28 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 373 100 -27 374 133 -27 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 100 -27 379 133 -27 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 375 100 -27 377 133 -27 air
execute if score _bready bce_sys matches 1 run fill 372 100 -26 373 133 -26 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 379 100 -26 380 133 -26 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 100 -26 378 133 -26 air
execute if score _bready bce_sys matches 1 run fill 372 100 -25 372 133 -25 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 380 100 -25 380 133 -25 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 373 100 -25 379 133 -25 air
execute if score _bready bce_sys matches 1 run fill 372 100 -24 372 133 -24 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 380 100 -24 380 133 -24 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 373 100 -24 379 133 -24 air
execute if score _bready bce_sys matches 1 run fill 372 100 -23 372 133 -23 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 380 100 -23 380 133 -23 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 373 100 -23 379 133 -23 air
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
