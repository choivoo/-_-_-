# zone 4 shell 12
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill 380 136 25 381 136 25 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 136 25 379 136 25 air
execute if score _bready bce_sys matches 1 run fill 371 136 26 373 136 26 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 379 136 26 381 136 26 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 136 26 378 136 26 air
execute if score _bready bce_sys matches 1 run fill 372 136 27 374 136 27 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 378 136 27 380 136 27 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 375 136 27 377 136 27 air
execute if score _bready bce_sys matches 1 run fill 373 136 28 379 136 28 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 136 29 378 136 29 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 137 20 378 137 20 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 137 21 374 137 21 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 378 137 21 379 137 21 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 375 137 21 377 137 21 air
execute if score _bready bce_sys matches 1 run fill 372 137 22 373 137 22 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 379 137 22 380 137 22 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 137 22 378 137 22 air
execute if score _bready bce_sys matches 1 run fill 372 137 23 372 137 23 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 380 137 23 380 137 23 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 137 23 379 137 23 air
execute if score _bready bce_sys matches 1 run fill 372 137 24 372 137 24 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 380 137 24 380 137 24 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 137 24 379 137 24 air
execute if score _bready bce_sys matches 1 run fill 372 137 25 372 137 25 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 380 137 25 380 137 25 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 137 25 379 137 25 air
execute if score _bready bce_sys matches 1 run fill 372 137 26 373 137 26 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 379 137 26 380 137 26 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 137 26 378 137 26 air
execute if score _bready bce_sys matches 1 run fill 373 137 27 374 137 27 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 378 137 27 379 137 27 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 375 137 27 377 137 27 air
execute if score _bready bce_sys matches 1 run fill 374 137 28 378 137 28 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 375 138 21 377 138 21 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 138 22 378 138 22 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 138 23 379 138 23 deepslate_tiles
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
