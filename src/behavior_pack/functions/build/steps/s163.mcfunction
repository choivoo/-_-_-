# tb zone 0 verify
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 4
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #berr bce_sys 0
execute if block 0 79 0 stone run execute unless block 3 103 -19 stone_bricks run scoreboard players set #berr bce_sys 10
execute if block 0 79 0 stone run execute unless block -31 99 26 stone_bricks run scoreboard players set #berr bce_sys 11
execute if block 0 79 0 stone run execute unless block 15 99 -30 stone_bricks run scoreboard players set #berr bce_sys 12
execute if block 0 79 0 stone run execute unless block -31 99 34 stone_bricks run scoreboard players set #berr bce_sys 13
execute if block 0 79 0 stone run execute unless block -10 99 36 stone_bricks run scoreboard players set #berr bce_sys 14
execute if block 0 79 0 stone run execute unless block -32 99 -10 stone_bricks run scoreboard players set #berr bce_sys 15
execute if block 0 79 0 stone run execute if score #berr bce_sys matches 1.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run execute if score #berr bce_sys matches 0 run scoreboard players add #bstep bce_sys 1
