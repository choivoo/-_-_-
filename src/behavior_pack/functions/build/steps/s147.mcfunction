# zone 4 ground 7
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 431 100 -32 433 100 -32 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 439 100 -32 439 100 -32 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 373 100 32 375 100 32 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 384 100 32 389 100 32 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 395 100 32 398 100 32 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 414 100 32 418 100 32 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 429 100 32 436 100 32 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 371 100 33 399 100 33 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 407 100 33 419 100 33 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 429 100 33 432 100 33 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 433 100 33 435 100 33 blackstone
execute if score _bready bce_sys matches 1 run fill 433 101 33 435 101 33 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 436 100 33 438 100 33 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 371 100 34 384 100 34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 385 100 34 387 100 34 blackstone
execute if score _bready bce_sys matches 1 run fill 385 101 34 387 101 34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 388 100 34 390 100 34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 391 100 34 391 100 34 blackstone
execute if score _bready bce_sys matches 1 run fill 391 101 34 391 101 34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 392 100 34 399 100 34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 408 100 34 412 100 34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 413 100 34 417 100 34 blackstone
execute if score _bready bce_sys matches 1 run fill 413 101 34 417 101 34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 418 100 34 420 100 34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 430 100 34 431 100 34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 432 100 34 436 100 34 blackstone
execute if score _bready bce_sys matches 1 run fill 432 101 34 436 101 34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 437 100 34 438 100 34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 367 100 35 368 100 35 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 370 100 35 372 100 35 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 373 100 35 376 100 35 blackstone
execute if score _bready bce_sys matches 1 run fill 373 101 35 376 101 35 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 377 100 35 378 100 35 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 379 100 35 384 100 35 blackstone
execute if score _bready bce_sys matches 1 run fill 379 101 35 384 101 35 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 385 100 35 386 101 35 blackstone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
