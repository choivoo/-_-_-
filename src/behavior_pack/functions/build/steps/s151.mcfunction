# zone 4 ground 11
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 391 100 38 391 102 38 blackstone
execute if score _bready bce_sys matches 1 run fill 391 103 38 391 103 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 392 100 38 393 101 38 blackstone
execute if score _bready bce_sys matches 1 run fill 392 102 38 393 102 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 394 100 38 396 100 38 blackstone
execute if score _bready bce_sys matches 1 run fill 394 101 38 396 101 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 397 100 38 397 101 38 blackstone
execute if score _bready bce_sys matches 1 run fill 397 102 38 397 102 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 398 100 38 398 100 38 blackstone
execute if score _bready bce_sys matches 1 run fill 398 101 38 398 101 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 399 100 38 404 100 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 408 100 38 409 100 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 410 100 38 411 100 38 blackstone
execute if score _bready bce_sys matches 1 run fill 410 101 38 411 101 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 412 100 38 413 101 38 blackstone
execute if score _bready bce_sys matches 1 run fill 412 102 38 413 102 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 414 100 38 415 100 38 blackstone
execute if score _bready bce_sys matches 1 run fill 414 101 38 415 101 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 416 100 38 418 100 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 419 100 38 421 100 38 blackstone
execute if score _bready bce_sys matches 1 run fill 419 101 38 421 101 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 422 100 38 423 101 38 blackstone
execute if score _bready bce_sys matches 1 run fill 422 102 38 423 102 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 424 100 38 424 100 38 blackstone
execute if score _bready bce_sys matches 1 run fill 424 101 38 424 101 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 425 100 38 426 100 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 431 100 38 432 100 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 433 100 38 433 100 38 blackstone
execute if score _bready bce_sys matches 1 run fill 433 101 38 433 101 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 434 100 38 434 101 38 blackstone
execute if score _bready bce_sys matches 1 run fill 434 102 38 434 102 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 435 100 38 436 102 38 blackstone
execute if score _bready bce_sys matches 1 run fill 435 103 38 436 103 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 437 100 38 437 101 38 blackstone
execute if score _bready bce_sys matches 1 run fill 437 102 38 437 102 38 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 438 100 38 439 100 38 blackstone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
