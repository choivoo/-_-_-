# zone 4 ground 6
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 360 100 -35 364 100 -35 blackstone
execute if score _bready bce_sys matches 1 run fill 360 101 -35 364 101 -35 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 365 100 -35 367 100 -35 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 368 100 -35 372 100 -35 blackstone
execute if score _bready bce_sys matches 1 run fill 368 101 -35 372 101 -35 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 373 100 -35 373 100 -35 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 381 100 -35 389 100 -35 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 391 100 -35 393 100 -35 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 394 100 -35 402 100 -35 blackstone
execute if score _bready bce_sys matches 1 run fill 394 101 -35 402 101 -35 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 403 100 -35 407 100 -35 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 408 100 -35 411 100 -35 blackstone
execute if score _bready bce_sys matches 1 run fill 408 101 -35 411 101 -35 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 412 100 -35 418 100 -35 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 423 100 -35 439 100 -35 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 360 100 -34 361 100 -34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 362 100 -34 362 100 -34 blackstone
execute if score _bready bce_sys matches 1 run fill 362 101 -34 362 101 -34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 363 100 -34 371 100 -34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 384 100 -34 386 100 -34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 393 100 -34 395 100 -34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 396 100 -34 397 100 -34 blackstone
execute if score _bready bce_sys matches 1 run fill 396 101 -34 397 101 -34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 398 100 -34 417 100 -34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 426 100 -34 436 100 -34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 438 100 -34 439 100 -34 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 360 100 -33 369 100 -33 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 375 100 -33 386 100 -33 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 395 100 -33 402 100 -33 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 407 100 -33 411 100 -33 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 415 100 -33 416 100 -33 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 427 100 -33 439 100 -33 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 360 100 -32 367 100 -32 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 376 100 -32 381 100 -32 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 383 100 -32 385 100 -32 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 428 100 -32 429 100 -32 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
