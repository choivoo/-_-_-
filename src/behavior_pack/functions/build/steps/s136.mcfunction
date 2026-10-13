# zone 4 shell 2
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 400 79 0 stone run fill 387 125 5 391 146 5 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 387 133 -5 391 133 -5 amethyst_block
execute if block 400 79 0 stone run fill 386 133 -4 386 133 -4 amethyst_block
execute if block 400 79 0 stone run fill 392 133 -4 392 133 -4 amethyst_block
execute if block 400 79 0 stone run fill 385 133 -3 385 133 -3 amethyst_block
execute if block 400 79 0 stone run fill 393 133 -3 393 133 -3 amethyst_block
execute if block 400 79 0 stone run fill 384 133 -2 384 133 -2 amethyst_block
execute if block 400 79 0 stone run fill 394 133 -2 394 133 -2 amethyst_block
execute if block 400 79 0 stone run fill 384 133 -1 384 133 -1 amethyst_block
execute if block 400 79 0 stone run fill 394 133 -1 394 133 -1 amethyst_block
execute if block 400 79 0 stone run fill 384 133 0 384 133 0 amethyst_block
execute if block 400 79 0 stone run fill 394 133 0 394 133 0 amethyst_block
execute if block 400 79 0 stone run fill 384 133 1 384 133 1 amethyst_block
execute if block 400 79 0 stone run fill 394 133 1 394 133 1 amethyst_block
execute if block 400 79 0 stone run fill 384 133 2 384 133 2 amethyst_block
execute if block 400 79 0 stone run fill 394 133 2 394 133 2 amethyst_block
execute if block 400 79 0 stone run fill 385 133 3 385 133 3 amethyst_block
execute if block 400 79 0 stone run fill 393 133 3 393 133 3 amethyst_block
execute if block 400 79 0 stone run fill 386 133 4 386 133 4 amethyst_block
execute if block 400 79 0 stone run fill 392 133 4 392 133 4 amethyst_block
execute if block 400 79 0 stone run fill 387 133 5 391 133 5 amethyst_block
execute if block 400 79 0 stone run fill 387 141 -5 391 141 -5 amethyst_block
execute if block 400 79 0 stone run fill 386 141 -4 386 141 -4 amethyst_block
execute if block 400 79 0 stone run fill 392 141 -4 392 141 -4 amethyst_block
execute if block 400 79 0 stone run fill 385 141 -3 385 141 -3 amethyst_block
execute if block 400 79 0 stone run fill 393 141 -3 393 141 -3 amethyst_block
execute if block 400 79 0 stone run fill 384 141 -2 384 141 -2 amethyst_block
execute if block 400 79 0 stone run fill 394 141 -2 394 141 -2 amethyst_block
execute if block 400 79 0 stone run fill 384 141 -1 384 141 -1 amethyst_block
execute if block 400 79 0 stone run fill 394 141 -1 394 141 -1 amethyst_block
execute if block 400 79 0 stone run fill 384 141 0 384 141 0 amethyst_block
execute if block 400 79 0 stone run fill 394 141 0 394 141 0 amethyst_block
execute if block 400 79 0 stone run fill 384 141 1 384 141 1 amethyst_block
execute if block 400 79 0 stone run fill 394 141 1 394 141 1 amethyst_block
execute if block 400 79 0 stone run fill 384 141 2 384 141 2 amethyst_block
execute if block 400 79 0 stone run fill 394 141 2 394 141 2 amethyst_block
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
