# zone 4 shell 7
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill 381 135 -22 381 135 -22 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 372 135 -22 380 135 -22 air
execute if score _bready bce_sys matches 1 run fill 372 135 -21 372 135 -21 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 380 135 -21 380 135 -21 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 135 -21 379 135 -21 air
execute if score _bready bce_sys matches 1 run fill 373 135 -20 373 135 -20 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 379 135 -20 379 135 -20 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 135 -20 378 135 -20 air
execute if score _bready bce_sys matches 1 run fill 374 135 -19 378 135 -19 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 136 -29 378 136 -29 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 136 -28 379 136 -28 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 372 136 -27 374 136 -27 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 378 136 -27 380 136 -27 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 375 136 -27 377 136 -27 air
execute if score _bready bce_sys matches 1 run fill 371 136 -26 373 136 -26 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 379 136 -26 381 136 -26 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 136 -26 378 136 -26 air
execute if score _bready bce_sys matches 1 run fill 371 136 -25 372 136 -25 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 380 136 -25 381 136 -25 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 136 -25 379 136 -25 air
execute if score _bready bce_sys matches 1 run fill 371 136 -24 372 136 -24 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 380 136 -24 381 136 -24 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 136 -24 379 136 -24 air
execute if score _bready bce_sys matches 1 run fill 371 136 -23 372 136 -23 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 380 136 -23 381 136 -23 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 136 -23 379 136 -23 air
execute if score _bready bce_sys matches 1 run fill 371 136 -22 373 136 -22 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 379 136 -22 381 136 -22 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 136 -22 378 136 -22 air
execute if score _bready bce_sys matches 1 run fill 372 136 -21 374 136 -21 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 378 136 -21 380 136 -21 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 375 136 -21 377 136 -21 air
execute if score _bready bce_sys matches 1 run fill 373 136 -20 379 136 -20 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 136 -19 378 136 -19 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 137 -28 378 137 -28 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 137 -27 374 137 -27 deepslate_tiles
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
