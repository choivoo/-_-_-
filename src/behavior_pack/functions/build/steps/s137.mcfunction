# zone 4 shell 3
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 400 79 0 stone run fill 385 141 3 385 141 3 amethyst_block
execute if block 400 79 0 stone run fill 393 141 3 393 141 3 amethyst_block
execute if block 400 79 0 stone run fill 386 141 4 386 141 4 amethyst_block
execute if block 400 79 0 stone run fill 392 141 4 392 141 4 amethyst_block
execute if block 400 79 0 stone run fill 387 141 5 391 141 5 amethyst_block
execute if block 400 79 0 stone run fill 387 147 -6 391 147 -6 deepslate_tiles
execute if block 400 79 0 stone run fill 385 147 -5 393 147 -5 deepslate_tiles
execute if block 400 79 0 stone run fill 384 147 -4 394 147 -4 deepslate_tiles
execute if block 400 79 0 stone run fill 384 147 -3 394 147 -3 deepslate_tiles
execute if block 400 79 0 stone run fill 383 147 -2 395 147 -2 deepslate_tiles
execute if block 400 79 0 stone run fill 383 147 -1 395 147 -1 deepslate_tiles
execute if block 400 79 0 stone run fill 383 147 0 395 147 0 deepslate_tiles
execute if block 400 79 0 stone run fill 383 147 1 395 147 1 deepslate_tiles
execute if block 400 79 0 stone run fill 383 147 2 395 147 2 deepslate_tiles
execute if block 400 79 0 stone run fill 384 147 3 394 147 3 deepslate_tiles
execute if block 400 79 0 stone run fill 384 147 4 394 147 4 deepslate_tiles
execute if block 400 79 0 stone run fill 385 147 5 393 147 5 deepslate_tiles
execute if block 400 79 0 stone run fill 387 147 6 391 147 6 deepslate_tiles
execute if block 400 79 0 stone run fill 387 148 -5 391 150 -5 deepslate_tiles
execute if block 400 79 0 stone run fill 386 148 -4 392 150 -4 deepslate_tiles
execute if block 400 79 0 stone run fill 385 148 -3 393 150 -3 deepslate_tiles
execute if block 400 79 0 stone run fill 384 148 -2 394 150 -2 deepslate_tiles
execute if block 400 79 0 stone run fill 384 148 -1 394 150 -1 deepslate_tiles
execute if block 400 79 0 stone run fill 384 148 0 394 150 0 deepslate_tiles
execute if block 400 79 0 stone run fill 384 148 1 394 150 1 deepslate_tiles
execute if block 400 79 0 stone run fill 384 148 2 394 150 2 deepslate_tiles
execute if block 400 79 0 stone run fill 385 148 3 393 150 3 deepslate_tiles
execute if block 400 79 0 stone run fill 386 148 4 392 150 4 deepslate_tiles
execute if block 400 79 0 stone run fill 387 148 5 391 150 5 deepslate_tiles
execute if block 400 79 0 stone run fill 387 151 -4 391 153 -4 deepslate_tiles
execute if block 400 79 0 stone run fill 386 151 -3 392 153 -3 deepslate_tiles
execute if block 400 79 0 stone run fill 385 151 -2 393 153 -2 deepslate_tiles
execute if block 400 79 0 stone run fill 385 151 -1 393 153 -1 deepslate_tiles
execute if block 400 79 0 stone run fill 385 151 0 393 153 0 deepslate_tiles
execute if block 400 79 0 stone run fill 385 151 1 393 153 1 deepslate_tiles
execute if block 400 79 0 stone run fill 385 151 2 393 153 2 deepslate_tiles
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
