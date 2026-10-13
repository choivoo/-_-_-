# zone 4 ground 12
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 438 101 38 439 101 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 360 100 39 360 100 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 361 100 39 368 100 39 blackstone
execute if score _bready bce_sys matches 1 run fill 361 101 39 368 101 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 369 100 39 370 100 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 371 100 39 371 100 39 blackstone
execute if score _bready bce_sys matches 1 run fill 371 101 39 371 101 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 372 100 39 373 101 39 blackstone
execute if score _bready bce_sys matches 1 run fill 372 102 39 373 102 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 100 39 374 102 39 blackstone
execute if score _bready bce_sys matches 1 run fill 374 103 39 374 103 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 375 100 39 375 101 39 blackstone
execute if score _bready bce_sys matches 1 run fill 375 102 39 375 102 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 376 100 39 376 100 39 blackstone
execute if score _bready bce_sys matches 1 run fill 376 101 39 376 101 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 377 100 39 378 100 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 379 100 39 381 100 39 blackstone
execute if score _bready bce_sys matches 1 run fill 379 101 39 381 101 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 382 100 39 382 101 39 blackstone
execute if score _bready bce_sys matches 1 run fill 382 102 39 382 102 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 383 100 39 383 102 39 blackstone
execute if score _bready bce_sys matches 1 run fill 383 103 39 383 103 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 384 100 39 387 101 39 blackstone
execute if score _bready bce_sys matches 1 run fill 384 102 39 387 102 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 388 100 39 391 102 39 blackstone
execute if score _bready bce_sys matches 1 run fill 388 103 39 391 103 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 392 100 39 393 101 39 blackstone
execute if score _bready bce_sys matches 1 run fill 392 102 39 393 102 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 394 100 39 395 100 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 396 100 39 400 100 39 blackstone
execute if score _bready bce_sys matches 1 run fill 396 101 39 400 101 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 401 100 39 404 100 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 408 100 39 408 100 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 409 100 39 410 100 39 blackstone
execute if score _bready bce_sys matches 1 run fill 409 101 39 410 101 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 411 100 39 414 101 39 blackstone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
