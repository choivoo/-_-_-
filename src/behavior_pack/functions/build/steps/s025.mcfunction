# zone 0 detail 7
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 0 79 0 stone run fill 37 103 39 38 104 39 mossy_cobblestone
execute if block 0 79 0 stone run fill 23 100 31 24 101 31 mossy_cobblestone
execute if block 0 79 0 stone run fill 28 101 36 29 102 36 mossy_cobblestone
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
