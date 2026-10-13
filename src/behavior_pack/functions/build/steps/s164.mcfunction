# zone 4 shell 10
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill 373 134 20 373 134 20 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 379 134 20 379 134 20 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 134 20 378 134 20 air
execute if score _bready bce_sys matches 1 run fill 372 134 21 372 134 21 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 380 134 21 380 134 21 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 134 21 379 134 21 air
execute if score _bready bce_sys matches 1 run fill 371 134 22 371 134 22 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 381 134 22 381 134 22 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 372 134 22 380 134 22 air
execute if score _bready bce_sys matches 1 run fill 371 134 23 371 134 23 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 381 134 23 381 134 23 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 372 134 23 380 134 23 air
execute if score _bready bce_sys matches 1 run fill 371 134 24 371 134 24 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 381 134 24 381 134 24 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 372 134 24 380 134 24 air
execute if score _bready bce_sys matches 1 run fill 371 134 25 371 134 25 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 381 134 25 381 134 25 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 372 134 25 380 134 25 air
execute if score _bready bce_sys matches 1 run fill 371 134 26 371 134 26 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 381 134 26 381 134 26 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 372 134 26 380 134 26 air
execute if score _bready bce_sys matches 1 run fill 372 134 27 372 134 27 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 380 134 27 380 134 27 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 134 27 379 134 27 air
execute if score _bready bce_sys matches 1 run fill 373 134 28 373 134 28 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 379 134 28 379 134 28 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 134 28 378 134 28 air
execute if score _bready bce_sys matches 1 run fill 374 134 29 378 134 29 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 135 19 378 135 19 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 135 20 373 135 20 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 379 135 20 379 135 20 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 135 20 378 135 20 air
execute if score _bready bce_sys matches 1 run fill 372 135 21 372 135 21 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 380 135 21 380 135 21 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 373 135 21 379 135 21 air
execute if score _bready bce_sys matches 1 run fill 371 135 22 371 135 22 deepslate_tiles
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
