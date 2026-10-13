# zone 4 interior 1
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 2
execute if score _bready bce_sys matches 1 run fill 384 104 11 384 106 12 air
execute if score _bready bce_sys matches 1 run fill 385 104 11 385 104 12 polished_blackstone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 385 105 11 385 107 12 air
execute if score _bready bce_sys matches 1 run fill 386 105 11 386 105 12 polished_blackstone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 386 106 11 386 108 12 air
execute if score _bready bce_sys matches 1 run fill 387 106 11 387 106 12 polished_blackstone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 387 107 11 387 109 12 air
execute if score _bready bce_sys matches 1 run fill 388 107 11 388 107 12 polished_blackstone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 388 108 11 388 110 12 air
execute if score _bready bce_sys matches 1 run fill 389 108 11 389 108 12 polished_blackstone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 389 109 11 389 111 12 air
execute if score _bready bce_sys matches 1 run fill 390 109 11 390 109 12 polished_blackstone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 390 110 11 390 112 12 air
execute if score _bready bce_sys matches 1 run fill 391 110 11 391 110 12 polished_blackstone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 391 111 11 391 113 12 air
execute if score _bready bce_sys matches 1 run fill 392 111 11 392 111 12 polished_blackstone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 381 112 11 392 112 12 air
execute if score _bready bce_sys matches 1 run fill 396 100 10 396 112 10 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 394 100 9 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 394 101 9 394 103 9 air
execute if score _bready bce_sys matches 1 run setblock 394 101 8 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 394 102 8 394 104 8 air
execute if score _bready bce_sys matches 1 run setblock 395 102 8 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 395 103 8 395 105 8 air
execute if score _bready bce_sys matches 1 run setblock 396 103 8 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 396 104 8 396 106 8 air
execute if score _bready bce_sys matches 1 run setblock 397 104 8 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 397 105 8 397 107 8 air
execute if score _bready bce_sys matches 1 run setblock 398 105 8 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 398 106 8 398 108 8 air
execute if score _bready bce_sys matches 1 run setblock 398 106 9 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 398 107 9 398 109 9 air
execute if score _bready bce_sys matches 1 run setblock 398 107 10 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 398 108 10 398 110 10 air
execute if score _bready bce_sys matches 1 run setblock 398 108 11 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 398 109 11 398 111 11 air
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
