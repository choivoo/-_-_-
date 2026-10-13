# zone 2 release
scoreboard players set #bzone bce_sys 2
execute unless block 200 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 200 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 200 79 0 stone run tickingarea remove bce_z2
execute if block 200 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 200 79 0 stone run scoreboard players add #bstep bce_sys 1
