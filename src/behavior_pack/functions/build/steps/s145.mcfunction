# zone 4 ground 5
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 399 100 -37 402 101 -37 blackstone
execute if score _bready bce_sys matches 1 run fill 399 102 -37 402 102 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 403 100 -37 412 100 -37 blackstone
execute if score _bready bce_sys matches 1 run fill 403 101 -37 412 101 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 413 100 -37 413 100 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 414 100 -37 417 100 -37 blackstone
execute if score _bready bce_sys matches 1 run fill 414 101 -37 417 101 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 418 100 -37 418 100 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 424 100 -37 429 100 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 430 100 -37 430 100 -37 blackstone
execute if score _bready bce_sys matches 1 run fill 430 101 -37 430 101 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 431 100 -37 434 100 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 437 100 -37 438 100 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 439 100 -37 439 100 -37 blackstone
execute if score _bready bce_sys matches 1 run fill 439 101 -37 439 101 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 360 100 -36 360 101 -36 blackstone
execute if score _bready bce_sys matches 1 run fill 360 102 -36 360 102 -36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 361 100 -36 364 100 -36 blackstone
execute if score _bready bce_sys matches 1 run fill 361 101 -36 364 101 -36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 365 100 -36 367 100 -36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 368 100 -36 370 100 -36 blackstone
execute if score _bready bce_sys matches 1 run fill 368 101 -36 370 101 -36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 371 100 -36 373 100 -36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 100 -36 393 100 -36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 394 100 -36 395 100 -36 blackstone
execute if score _bready bce_sys matches 1 run fill 394 101 -36 395 101 -36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 396 100 -36 402 101 -36 blackstone
execute if score _bready bce_sys matches 1 run fill 396 102 -36 402 102 -36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 403 100 -36 406 100 -36 blackstone
execute if score _bready bce_sys matches 1 run fill 403 101 -36 406 101 -36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 407 100 -36 408 100 -36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 409 100 -36 409 100 -36 blackstone
execute if score _bready bce_sys matches 1 run fill 409 101 -36 409 101 -36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 410 100 -36 418 100 -36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 422 100 -36 434 100 -36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 437 100 -36 439 100 -36 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
