# tb zone 4 load 0
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 400 79 0 stone run structure load bce:z4_q00_0 360 80 -40
execute if block 400 79 0 stone run structure load bce:z4_q00_1 383 144 -6
execute if block 400 79 0 stone run structure load bce:z4_q01_0 360 80 0
execute if block 400 79 0 stone run structure load bce:z4_q01_1 383 144 0
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
