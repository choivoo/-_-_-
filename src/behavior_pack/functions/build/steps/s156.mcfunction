# zone 4 shell 2
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill 387 125 5 391 146 5 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 387 133 -5 391 133 -5 amethyst_block
execute if score _bready bce_sys matches 1 run fill 386 133 -4 386 133 -4 amethyst_block
execute if score _bready bce_sys matches 1 run fill 392 133 -4 392 133 -4 amethyst_block
execute if score _bready bce_sys matches 1 run fill 385 133 -3 385 133 -3 amethyst_block
execute if score _bready bce_sys matches 1 run fill 393 133 -3 393 133 -3 amethyst_block
execute if score _bready bce_sys matches 1 run fill 384 133 -2 384 133 -2 amethyst_block
execute if score _bready bce_sys matches 1 run fill 394 133 -2 394 133 -2 amethyst_block
execute if score _bready bce_sys matches 1 run fill 384 133 -1 384 133 -1 amethyst_block
execute if score _bready bce_sys matches 1 run fill 394 133 -1 394 133 -1 amethyst_block
execute if score _bready bce_sys matches 1 run fill 384 133 0 384 133 0 amethyst_block
execute if score _bready bce_sys matches 1 run fill 394 133 0 394 133 0 amethyst_block
execute if score _bready bce_sys matches 1 run fill 384 133 1 384 133 1 amethyst_block
execute if score _bready bce_sys matches 1 run fill 394 133 1 394 133 1 amethyst_block
execute if score _bready bce_sys matches 1 run fill 384 133 2 384 133 2 amethyst_block
execute if score _bready bce_sys matches 1 run fill 394 133 2 394 133 2 amethyst_block
execute if score _bready bce_sys matches 1 run fill 385 133 3 385 133 3 amethyst_block
execute if score _bready bce_sys matches 1 run fill 393 133 3 393 133 3 amethyst_block
execute if score _bready bce_sys matches 1 run fill 386 133 4 386 133 4 amethyst_block
execute if score _bready bce_sys matches 1 run fill 392 133 4 392 133 4 amethyst_block
execute if score _bready bce_sys matches 1 run fill 387 133 5 391 133 5 amethyst_block
execute if score _bready bce_sys matches 1 run fill 387 141 -5 391 141 -5 amethyst_block
execute if score _bready bce_sys matches 1 run fill 386 141 -4 386 141 -4 amethyst_block
execute if score _bready bce_sys matches 1 run fill 392 141 -4 392 141 -4 amethyst_block
execute if score _bready bce_sys matches 1 run fill 385 141 -3 385 141 -3 amethyst_block
execute if score _bready bce_sys matches 1 run fill 393 141 -3 393 141 -3 amethyst_block
execute if score _bready bce_sys matches 1 run fill 384 141 -2 384 141 -2 amethyst_block
execute if score _bready bce_sys matches 1 run fill 394 141 -2 394 141 -2 amethyst_block
execute if score _bready bce_sys matches 1 run fill 384 141 -1 384 141 -1 amethyst_block
execute if score _bready bce_sys matches 1 run fill 394 141 -1 394 141 -1 amethyst_block
execute if score _bready bce_sys matches 1 run fill 384 141 0 384 141 0 amethyst_block
execute if score _bready bce_sys matches 1 run fill 394 141 0 394 141 0 amethyst_block
execute if score _bready bce_sys matches 1 run fill 384 141 1 384 141 1 amethyst_block
execute if score _bready bce_sys matches 1 run fill 394 141 1 394 141 1 amethyst_block
execute if score _bready bce_sys matches 1 run fill 384 141 2 384 141 2 amethyst_block
execute if score _bready bce_sys matches 1 run fill 394 141 2 394 141 2 amethyst_block
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
