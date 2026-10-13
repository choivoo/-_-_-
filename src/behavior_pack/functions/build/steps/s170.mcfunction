# zone 4 interior 2
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 2
execute if score _bready bce_sys matches 1 run setblock 398 109 12 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 398 110 12 398 112 12 air
execute if score _bready bce_sys matches 1 run setblock 397 110 12 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 397 111 12 397 113 12 air
execute if score _bready bce_sys matches 1 run setblock 396 111 12 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 396 112 12 396 114 12 air
execute if score _bready bce_sys matches 1 run fill 399 100 -3 401 108 3 obsidian
execute if score _bready bce_sys matches 1 run fill 399 109 -4 401 109 4 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 398 105 0 crying_obsidian
execute if score _bready bce_sys matches 1 run setblock 398 106 0 crying_obsidian
execute if score _bready bce_sys matches 1 run fill 379 123 -14 399 124 14 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 386 123 -3 392 124 3 air
execute if score _bready bce_sys matches 1 run fill 380 100 -24 380 101 -24 air
execute if score _bready bce_sys matches 1 run fill 379 100 -24 379 101 -24 air
execute if score _bready bce_sys matches 1 run fill 376 100 -24 376 130 -24 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 374 100 -25 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 101 -25 374 103 -25 air
execute if score _bready bce_sys matches 1 run setblock 374 101 -26 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 102 -26 374 104 -26 air
execute if score _bready bce_sys matches 1 run setblock 375 102 -26 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 375 103 -26 375 105 -26 air
execute if score _bready bce_sys matches 1 run setblock 376 103 -26 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 376 104 -26 376 106 -26 air
execute if score _bready bce_sys matches 1 run setblock 377 104 -26 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 377 105 -26 377 107 -26 air
execute if score _bready bce_sys matches 1 run setblock 378 105 -26 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 106 -26 378 108 -26 air
execute if score _bready bce_sys matches 1 run setblock 378 106 -25 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 107 -25 378 109 -25 air
execute if score _bready bce_sys matches 1 run setblock 378 107 -24 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 108 -24 378 110 -24 air
execute if score _bready bce_sys matches 1 run setblock 378 108 -23 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 109 -23 378 111 -23 air
execute if score _bready bce_sys matches 1 run setblock 378 109 -22 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 110 -22 378 112 -22 air
execute if score _bready bce_sys matches 1 run setblock 377 110 -22 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
