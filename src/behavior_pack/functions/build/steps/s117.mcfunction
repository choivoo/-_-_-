# zone 3 verify
scoreboard players set #bzone bce_sys 3
execute unless block 300 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 300 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 300 79 0 stone run scoreboard players set #bsm bce_sys 4
execute if block 300 79 0 stone run scoreboard players set #bstage bce_sys 7
execute if block 300 79 0 stone run scoreboard players set #berr bce_sys 0
execute if block 300 79 0 stone run execute unless block 334 99 2 stone_bricks run scoreboard players set #berr bce_sys 40
execute if block 300 79 0 stone run execute unless block 323 99 13 stone_bricks run scoreboard players set #berr bce_sys 41
execute if block 300 79 0 stone run execute unless block 286 99 -30 stone_bricks run scoreboard players set #berr bce_sys 42
execute if block 300 79 0 stone run execute unless block 262 99 34 stone_bricks run scoreboard players set #berr bce_sys 43
execute if block 300 79 0 stone run execute unless block 265 99 -29 stone_bricks run scoreboard players set #berr bce_sys 44
execute if block 300 79 0 stone run execute unless block 301 99 -28 stone_bricks run scoreboard players set #berr bce_sys 45
execute if block 300 79 0 stone run execute if score #berr bce_sys matches 1.. run scoreboard players set #bsm bce_sys 7
execute if block 300 79 0 stone run execute if score #berr bce_sys matches 0 run scoreboard players add #bstep bce_sys 1
