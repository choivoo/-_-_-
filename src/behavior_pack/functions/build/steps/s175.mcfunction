# tb zone 2 verify
scoreboard players set #bzone bce_sys 2
execute unless block 200 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 200 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 200 79 0 stone run scoreboard players set #bsm bce_sys 4
execute if block 200 79 0 stone run scoreboard players set #bstage bce_sys 7
execute if block 200 79 0 stone run scoreboard players set #berr bce_sys 0
execute if block 200 79 0 stone run execute unless block 176 99 25 mossy_stone_bricks run scoreboard players set #berr bce_sys 30
execute if block 200 79 0 stone run execute unless block 189 99 -2 mossy_stone_bricks run scoreboard players set #berr bce_sys 31
execute if block 200 79 0 stone run execute unless block 225 99 -28 mossy_stone_bricks run scoreboard players set #berr bce_sys 32
execute if block 200 79 0 stone run execute unless block 207 99 10 mossy_stone_bricks run scoreboard players set #berr bce_sys 33
execute if block 200 79 0 stone run execute unless block 181 99 -28 gravel run scoreboard players set #berr bce_sys 34
execute if block 200 79 0 stone run execute unless block 181 99 -9 mossy_stone_bricks run scoreboard players set #berr bce_sys 35
execute if block 200 79 0 stone run execute if score #berr bce_sys matches 1.. run scoreboard players set #bsm bce_sys 7
execute if block 200 79 0 stone run execute if score #berr bce_sys matches 0 run scoreboard players add #bstep bce_sys 1
