# tb zone 4 verify
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 4
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #berr bce_sys 0
execute if block 400 79 0 stone run execute unless block 375 100 5 polished_blackstone_bricks run scoreboard players set #berr bce_sys 50
execute if block 400 79 0 stone run execute unless block 423 108 -18 polished_blackstone_bricks run scoreboard players set #berr bce_sys 51
execute if block 400 79 0 stone run execute unless block 395 108 -14 polished_blackstone_bricks run scoreboard players set #berr bce_sys 52
execute if block 400 79 0 stone run execute unless block 408 99 -28 polished_blackstone_bricks run scoreboard players set #berr bce_sys 53
execute if block 400 79 0 stone run execute unless block 375 103 -9 polished_blackstone_bricks run scoreboard players set #berr bce_sys 54
execute if block 400 79 0 stone run execute unless block 387 99 5 polished_blackstone run scoreboard players set #berr bce_sys 55
execute if block 400 79 0 stone run execute if score #berr bce_sys matches 1.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run execute if score #berr bce_sys matches 0 run scoreboard players add #bstep bce_sys 1
