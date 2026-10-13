# zone 4 shell 0
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill 374 100 -20 378 126 20 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 100 -4 378 112 4 air
execute if score _bready bce_sys matches 1 run fill 374 113 -5 378 113 5 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run fill 373 100 -12 373 122 -12 blackstone
execute if score _bready bce_sys matches 1 run setblock 373 123 -12 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 372 105 -12 soul_lantern
execute if score _bready bce_sys matches 1 run fill 373 100 -8 373 122 -8 blackstone
execute if score _bready bce_sys matches 1 run setblock 373 123 -8 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 372 105 -8 soul_lantern
execute if score _bready bce_sys matches 1 run fill 373 100 8 373 122 8 blackstone
execute if score _bready bce_sys matches 1 run setblock 373 123 8 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 372 105 8 soul_lantern
execute if score _bready bce_sys matches 1 run fill 373 100 12 373 122 12 blackstone
execute if score _bready bce_sys matches 1 run setblock 373 123 12 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 372 105 12 soul_lantern
execute if score _bready bce_sys matches 1 run setblock 374 127 -20 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 -18 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 -16 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 -14 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 -12 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 -10 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 -8 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 -6 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 -4 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 -2 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 0 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 2 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 4 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 6 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 8 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 10 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 12 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 14 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 16 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 18 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 374 127 20 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
