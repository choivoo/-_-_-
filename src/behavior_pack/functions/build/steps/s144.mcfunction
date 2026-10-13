# zone 4 ground 4
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 391 100 -38 392 100 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 393 100 -38 394 100 -38 blackstone
execute if score _bready bce_sys matches 1 run fill 393 101 -38 394 101 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 395 100 -38 399 101 -38 blackstone
execute if score _bready bce_sys matches 1 run fill 395 102 -38 399 102 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 400 100 -38 400 102 -38 blackstone
execute if score _bready bce_sys matches 1 run fill 400 103 -38 400 103 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 401 100 -38 403 101 -38 blackstone
execute if score _bready bce_sys matches 1 run fill 401 102 -38 403 102 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 404 100 -38 410 100 -38 blackstone
execute if score _bready bce_sys matches 1 run fill 404 101 -38 410 101 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 411 100 -38 413 100 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 414 100 -38 416 100 -38 blackstone
execute if score _bready bce_sys matches 1 run fill 414 101 -38 416 101 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 417 100 -38 417 100 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 423 100 -38 427 100 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 429 100 -38 430 100 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 431 100 -38 431 100 -38 blackstone
execute if score _bready bce_sys matches 1 run fill 431 101 -38 431 101 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 432 100 -38 435 100 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 437 100 -38 438 100 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 439 100 -38 439 100 -38 blackstone
execute if score _bready bce_sys matches 1 run fill 439 101 -38 439 101 -38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 360 100 -37 372 100 -37 blackstone
execute if score _bready bce_sys matches 1 run fill 360 101 -37 372 101 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 373 100 -37 374 100 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 377 100 -37 380 100 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 381 100 -37 381 100 -37 blackstone
execute if score _bready bce_sys matches 1 run fill 381 101 -37 381 101 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 382 100 -37 382 100 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 383 100 -37 388 100 -37 blackstone
execute if score _bready bce_sys matches 1 run fill 383 101 -37 388 101 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 389 100 -37 389 100 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 391 100 -37 392 100 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 393 100 -37 398 100 -37 blackstone
execute if score _bready bce_sys matches 1 run fill 393 101 -37 398 101 -37 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
