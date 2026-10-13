# zone 4 shell 1
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 400 79 0 stone run fill 379 100 -14 399 124 14 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 401 100 -18 437 114 18 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 402 100 -17 436 114 17 air
execute if block 400 79 0 stone run fill 401 99 -18 437 99 18 polished_blackstone
execute if block 400 79 0 stone run fill 402 99 -17 436 99 17 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 412 99 -7 426 99 7 gilded_blackstone
execute if block 400 79 0 stone run fill 413 99 -6 425 99 6 polished_blackstone
execute if block 400 79 0 stone run fill 418 99 -1 420 99 1 crying_obsidian
execute if block 400 79 0 stone run fill 387 125 -5 391 146 -5 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 386 125 -4 386 146 -4 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 392 125 -4 392 146 -4 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 387 125 -4 391 146 -4 air
execute if block 400 79 0 stone run fill 385 125 -3 385 146 -3 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 393 125 -3 393 146 -3 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 386 125 -3 392 146 -3 air
execute if block 400 79 0 stone run fill 384 125 -2 384 146 -2 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 394 125 -2 394 146 -2 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 385 125 -2 393 146 -2 air
execute if block 400 79 0 stone run fill 384 125 -1 384 146 -1 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 394 125 -1 394 146 -1 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 385 125 -1 393 146 -1 air
execute if block 400 79 0 stone run fill 384 125 0 384 146 0 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 394 125 0 394 146 0 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 385 125 0 393 146 0 air
execute if block 400 79 0 stone run fill 384 125 1 384 146 1 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 394 125 1 394 146 1 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 385 125 1 393 146 1 air
execute if block 400 79 0 stone run fill 384 125 2 384 146 2 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 394 125 2 394 146 2 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 385 125 2 393 146 2 air
execute if block 400 79 0 stone run fill 385 125 3 385 146 3 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 393 125 3 393 146 3 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 386 125 3 392 146 3 air
execute if block 400 79 0 stone run fill 386 125 4 386 146 4 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 392 125 4 392 146 4 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 387 125 4 391 146 4 air
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
