# zone 4 ground 3
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 400 100 -39 401 102 -39 blackstone
execute if score _bready bce_sys matches 1 run fill 400 103 -39 401 103 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 402 100 -39 402 101 -39 blackstone
execute if score _bready bce_sys matches 1 run fill 402 102 -39 402 102 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 403 100 -39 404 100 -39 blackstone
execute if score _bready bce_sys matches 1 run fill 403 101 -39 404 101 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 405 100 -39 407 100 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 408 100 -39 408 100 -39 blackstone
execute if score _bready bce_sys matches 1 run fill 408 101 -39 408 101 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 409 100 -39 409 100 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 410 100 -39 411 100 -39 blackstone
execute if score _bready bce_sys matches 1 run fill 410 101 -39 411 101 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 412 100 -39 413 100 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 414 100 -39 416 100 -39 blackstone
execute if score _bready bce_sys matches 1 run fill 414 101 -39 416 101 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 417 100 -39 417 100 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 422 100 -39 423 100 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 424 100 -39 427 100 -39 blackstone
execute if score _bready bce_sys matches 1 run fill 424 101 -39 427 101 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 428 100 -39 429 100 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 430 100 -39 432 100 -39 blackstone
execute if score _bready bce_sys matches 1 run fill 430 101 -39 432 101 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 433 100 -39 436 100 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 437 100 -39 438 100 -39 blackstone
execute if score _bready bce_sys matches 1 run fill 437 101 -39 438 101 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 439 100 -39 439 101 -39 blackstone
execute if score _bready bce_sys matches 1 run fill 439 102 -39 439 102 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 360 100 -38 360 101 -38 blackstone
execute if score _bready bce_sys matches 1 run fill 360 102 -38 360 102 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 361 100 -38 372 100 -38 blackstone
execute if score _bready bce_sys matches 1 run fill 361 101 -38 372 101 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 373 100 -38 374 100 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 100 -38 379 100 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 380 100 -38 388 100 -38 blackstone
execute if score _bready bce_sys matches 1 run fill 380 101 -38 388 101 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 389 100 -38 389 100 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
