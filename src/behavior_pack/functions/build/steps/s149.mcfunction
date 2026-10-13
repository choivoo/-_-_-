# zone 4 ground 9
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 394 100 36 397 100 36 blackstone
execute if score _bready bce_sys matches 1 run fill 394 101 36 397 101 36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 398 100 36 401 100 36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 408 100 36 411 100 36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 412 100 36 413 100 36 blackstone
execute if score _bready bce_sys matches 1 run fill 412 101 36 413 101 36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 414 100 36 414 101 36 blackstone
execute if score _bready bce_sys matches 1 run fill 414 102 36 414 102 36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 415 100 36 415 100 36 blackstone
execute if score _bready bce_sys matches 1 run fill 415 101 36 415 101 36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 416 100 36 424 100 36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 430 100 36 432 100 36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 433 100 36 433 100 36 blackstone
execute if score _bready bce_sys matches 1 run fill 433 101 36 433 101 36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 434 100 36 437 101 36 blackstone
execute if score _bready bce_sys matches 1 run fill 434 102 36 437 102 36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 438 100 36 439 100 36 blackstone
execute if score _bready bce_sys matches 1 run fill 438 101 36 439 101 36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 360 100 37 363 100 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 367 100 37 371 100 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 372 100 37 381 100 37 blackstone
execute if score _bready bce_sys matches 1 run fill 372 101 37 381 101 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 382 100 37 384 101 37 blackstone
execute if score _bready bce_sys matches 1 run fill 382 102 37 384 102 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 385 100 37 385 100 37 blackstone
execute if score _bready bce_sys matches 1 run fill 385 101 37 385 101 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 386 100 37 388 101 37 blackstone
execute if score _bready bce_sys matches 1 run fill 386 102 37 388 102 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 389 100 37 391 100 37 blackstone
execute if score _bready bce_sys matches 1 run fill 389 101 37 391 101 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 392 100 37 392 101 37 blackstone
execute if score _bready bce_sys matches 1 run fill 392 102 37 392 102 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 393 100 37 399 100 37 blackstone
execute if score _bready bce_sys matches 1 run fill 393 101 37 399 101 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 400 100 37 402 100 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 408 100 37 410 100 37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
