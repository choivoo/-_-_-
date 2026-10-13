# zone 4 shell 6
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 400 79 0 stone run fill 371 134 -24 371 134 -24 deepslate_tiles
execute if block 400 79 0 stone run fill 381 134 -24 381 134 -24 deepslate_tiles
execute if block 400 79 0 stone run fill 372 134 -24 380 134 -24 air
execute if block 400 79 0 stone run fill 371 134 -23 371 134 -23 deepslate_tiles
execute if block 400 79 0 stone run fill 381 134 -23 381 134 -23 deepslate_tiles
execute if block 400 79 0 stone run fill 372 134 -23 380 134 -23 air
execute if block 400 79 0 stone run fill 371 134 -22 371 134 -22 deepslate_tiles
execute if block 400 79 0 stone run fill 381 134 -22 381 134 -22 deepslate_tiles
execute if block 400 79 0 stone run fill 372 134 -22 380 134 -22 air
execute if block 400 79 0 stone run fill 372 134 -21 372 134 -21 deepslate_tiles
execute if block 400 79 0 stone run fill 380 134 -21 380 134 -21 deepslate_tiles
execute if block 400 79 0 stone run fill 373 134 -21 379 134 -21 air
execute if block 400 79 0 stone run fill 373 134 -20 373 134 -20 deepslate_tiles
execute if block 400 79 0 stone run fill 379 134 -20 379 134 -20 deepslate_tiles
execute if block 400 79 0 stone run fill 374 134 -20 378 134 -20 air
execute if block 400 79 0 stone run fill 374 134 -19 378 134 -19 deepslate_tiles
execute if block 400 79 0 stone run fill 374 135 -29 378 135 -29 deepslate_tiles
execute if block 400 79 0 stone run fill 373 135 -28 373 135 -28 deepslate_tiles
execute if block 400 79 0 stone run fill 379 135 -28 379 135 -28 deepslate_tiles
execute if block 400 79 0 stone run fill 374 135 -28 378 135 -28 air
execute if block 400 79 0 stone run fill 372 135 -27 372 135 -27 deepslate_tiles
execute if block 400 79 0 stone run fill 380 135 -27 380 135 -27 deepslate_tiles
execute if block 400 79 0 stone run fill 373 135 -27 379 135 -27 air
execute if block 400 79 0 stone run fill 371 135 -26 371 135 -26 deepslate_tiles
execute if block 400 79 0 stone run fill 381 135 -26 381 135 -26 deepslate_tiles
execute if block 400 79 0 stone run fill 372 135 -26 380 135 -26 air
execute if block 400 79 0 stone run fill 371 135 -25 371 135 -25 deepslate_tiles
execute if block 400 79 0 stone run fill 381 135 -25 381 135 -25 deepslate_tiles
execute if block 400 79 0 stone run fill 372 135 -25 380 135 -25 air
execute if block 400 79 0 stone run fill 371 135 -24 371 135 -24 deepslate_tiles
execute if block 400 79 0 stone run fill 381 135 -24 381 135 -24 deepslate_tiles
execute if block 400 79 0 stone run fill 372 135 -24 380 135 -24 air
execute if block 400 79 0 stone run fill 371 135 -23 371 135 -23 deepslate_tiles
execute if block 400 79 0 stone run fill 381 135 -23 381 135 -23 deepslate_tiles
execute if block 400 79 0 stone run fill 372 135 -23 380 135 -23 air
execute if block 400 79 0 stone run fill 371 135 -22 371 135 -22 deepslate_tiles
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
