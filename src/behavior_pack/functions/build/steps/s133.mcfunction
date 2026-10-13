# zone 4 ground 13
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 0
execute if block 400 79 0 stone run fill 411 102 39 414 102 39 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 415 100 39 415 100 39 blackstone
execute if block 400 79 0 stone run fill 415 101 39 415 101 39 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 416 100 39 416 100 39 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 418 100 39 418 100 39 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 419 100 39 420 100 39 blackstone
execute if block 400 79 0 stone run fill 419 101 39 420 101 39 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 421 100 39 422 101 39 blackstone
execute if block 400 79 0 stone run fill 421 102 39 422 102 39 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 423 100 39 423 100 39 blackstone
execute if block 400 79 0 stone run fill 423 101 39 423 101 39 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 424 100 39 426 100 39 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 432 100 39 432 100 39 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 433 100 39 433 100 39 blackstone
execute if block 400 79 0 stone run fill 433 101 39 433 101 39 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 434 100 39 434 101 39 blackstone
execute if block 400 79 0 stone run fill 434 102 39 434 102 39 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 435 100 39 435 102 39 blackstone
execute if block 400 79 0 stone run fill 435 103 39 435 103 39 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 436 100 39 436 101 39 blackstone
execute if block 400 79 0 stone run fill 436 102 39 436 102 39 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 437 100 39 439 100 39 blackstone
execute if block 400 79 0 stone run fill 437 101 39 439 101 39 polished_blackstone_bricks
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
