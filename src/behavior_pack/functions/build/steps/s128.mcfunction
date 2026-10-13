# zone 4 ground 8
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 0
execute if block 400 79 0 stone run fill 385 102 35 386 102 35 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 387 100 35 397 100 35 blackstone
execute if block 400 79 0 stone run fill 387 101 35 397 101 35 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 398 100 35 400 100 35 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 408 100 35 411 100 35 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 412 100 35 417 100 35 blackstone
execute if block 400 79 0 stone run fill 412 101 35 417 101 35 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 418 100 35 423 100 35 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 430 100 35 431 100 35 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 432 100 35 433 100 35 blackstone
execute if block 400 79 0 stone run fill 432 101 35 433 101 35 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 434 100 35 435 101 35 blackstone
execute if block 400 79 0 stone run fill 434 102 35 435 102 35 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 436 100 35 438 100 35 blackstone
execute if block 400 79 0 stone run fill 436 101 35 438 101 35 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 439 100 35 439 100 35 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 367 100 36 372 100 36 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 373 100 36 374 100 36 blackstone
execute if block 400 79 0 stone run fill 373 101 36 374 101 36 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 375 100 36 375 101 36 blackstone
execute if block 400 79 0 stone run fill 375 102 36 375 102 36 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 376 100 36 377 100 36 blackstone
execute if block 400 79 0 stone run fill 376 101 36 377 101 36 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 378 100 36 379 100 36 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 380 100 36 380 100 36 blackstone
execute if block 400 79 0 stone run fill 380 101 36 380 101 36 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 381 100 36 382 101 36 blackstone
execute if block 400 79 0 stone run fill 381 102 36 382 102 36 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 383 100 36 384 100 36 blackstone
execute if block 400 79 0 stone run fill 383 101 36 384 101 36 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 385 100 36 388 101 36 blackstone
execute if block 400 79 0 stone run fill 385 102 36 388 102 36 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 389 100 36 390 100 36 blackstone
execute if block 400 79 0 stone run fill 389 101 36 390 101 36 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 391 100 36 393 101 36 blackstone
execute if block 400 79 0 stone run fill 391 102 36 393 102 36 polished_blackstone_bricks
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
