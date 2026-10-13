# zone 4 verify
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 4
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _berr bce_sys 0
execute if score _bready bce_sys matches 1 run execute unless block 375 100 5 polished_blackstone_bricks run scoreboard players set _berr bce_sys 50
execute if score _bready bce_sys matches 1 run execute unless block 423 108 -18 polished_blackstone_bricks run scoreboard players set _berr bce_sys 51
execute if score _bready bce_sys matches 1 run execute unless block 395 108 -14 polished_blackstone_bricks run scoreboard players set _berr bce_sys 52
execute if score _bready bce_sys matches 1 run execute unless block 408 99 -28 polished_blackstone_bricks run scoreboard players set _berr bce_sys 53
execute if score _bready bce_sys matches 1 run execute unless block 375 103 -9 polished_blackstone_bricks run scoreboard players set _berr bce_sys 54
execute if score _bready bce_sys matches 1 run execute unless block 387 99 5 polished_blackstone run scoreboard players set _berr bce_sys 55
execute if score _bready bce_sys matches 1 run execute unless block 389 189 0 amethyst_block run scoreboard players set _berr bce_sys 140
execute if score _bready bce_sys matches 1 run execute unless block 419 99 0 crying_obsidian run scoreboard players set _berr bce_sys 141
execute if score _bready bce_sys matches 1 run execute unless block 399 101 0 obsidian run scoreboard players set _berr bce_sys 142
execute if score _bready bce_sys matches 1 run execute unless block 419 100 0 air run scoreboard players set _berr bce_sys 143
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 1.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 0 run scoreboard players set _zok4 bce_sys 1
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 0 run scoreboard players add _bstep bce_sys 1
