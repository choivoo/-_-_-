# tb zone 1 load 0
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 100 79 0 stone run structure load bce:z1_q00_0 60 80 -40
execute if block 100 79 0 stone run structure load bce:z1_q01_0 60 80 0
execute if block 100 79 0 stone run structure load bce:z1_q10_0 100 80 -40
execute if block 100 79 0 stone run structure load bce:z1_q11_0 100 80 0
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
