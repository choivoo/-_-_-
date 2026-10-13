# tb zone 1 verify
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 4
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #berr bce_sys 0
execute if block 100 79 0 stone run execute unless block 77 100 35 coarse_dirt run scoreboard players set #berr bce_sys 20
execute if block 100 79 0 stone run execute unless block 133 99 -15 coarse_dirt run scoreboard players set #berr bce_sys 21
execute if block 100 79 0 stone run execute unless block 136 99 35 coarse_dirt run scoreboard players set #berr bce_sys 22
execute if block 100 79 0 stone run execute unless block 70 99 34 coarse_dirt run scoreboard players set #berr bce_sys 23
execute if block 100 79 0 stone run execute unless block 100 99 -7 stone_bricks run scoreboard players set #berr bce_sys 24
execute if block 100 79 0 stone run execute unless block 96 99 22 coarse_dirt run scoreboard players set #berr bce_sys 25
execute if block 100 79 0 stone run execute if score #berr bce_sys matches 1.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run execute if score #berr bce_sys matches 0 run scoreboard players add #bstep bce_sys 1
