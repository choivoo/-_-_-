# zone 2 func 0
scoreboard players set #bzone bce_sys 2
execute unless block 200 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 200 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 200 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 200 79 0 stone run scoreboard players set #bstage bce_sys 5
execute if block 200 79 0 stone run setblock 222 87 16 chest
execute if block 200 79 0 stone run replaceitem block 222 87 16 slot.container 0 diamond 2
execute if block 200 79 0 stone run replaceitem block 222 87 16 slot.container 1 golden_apple 2
execute if block 200 79 0 stone run scoreboard players add #bstep bce_sys 1
