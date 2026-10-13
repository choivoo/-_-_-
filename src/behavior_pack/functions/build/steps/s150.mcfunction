# zone 4 ground 10
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 411 100 37 415 100 37 blackstone
execute if score _bready bce_sys matches 1 run fill 411 101 37 415 101 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 416 100 37 416 100 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 417 100 37 424 100 37 blackstone
execute if score _bready bce_sys matches 1 run fill 417 101 37 424 101 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 425 100 37 426 100 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 431 100 37 431 100 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 432 100 37 434 100 37 blackstone
execute if score _bready bce_sys matches 1 run fill 432 101 37 434 101 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 435 100 37 437 101 37 blackstone
execute if score _bready bce_sys matches 1 run fill 435 102 37 437 102 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 438 100 37 439 100 37 blackstone
execute if score _bready bce_sys matches 1 run fill 438 101 37 439 101 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 360 100 38 366 100 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 367 100 38 367 100 38 blackstone
execute if score _bready bce_sys matches 1 run fill 367 101 38 367 101 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 368 100 38 370 100 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 371 100 38 371 100 38 blackstone
execute if score _bready bce_sys matches 1 run fill 371 101 38 371 101 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 372 100 38 375 101 38 blackstone
execute if score _bready bce_sys matches 1 run fill 372 102 38 375 102 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 376 100 38 376 100 38 blackstone
execute if score _bready bce_sys matches 1 run fill 376 101 38 376 101 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 377 100 38 377 100 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 100 38 379 100 38 blackstone
execute if score _bready bce_sys matches 1 run fill 378 101 38 379 101 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 380 100 38 381 101 38 blackstone
execute if score _bready bce_sys matches 1 run fill 380 102 38 381 102 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 382 100 38 384 102 38 blackstone
execute if score _bready bce_sys matches 1 run fill 382 103 38 384 103 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 385 100 38 388 101 38 blackstone
execute if score _bready bce_sys matches 1 run fill 385 102 38 388 102 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 389 100 38 389 102 38 blackstone
execute if score _bready bce_sys matches 1 run fill 389 103 38 389 103 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 390 100 38 390 101 38 blackstone
execute if score _bready bce_sys matches 1 run fill 390 102 38 390 102 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
