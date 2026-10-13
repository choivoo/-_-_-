# zone 2 detail 7
scoreboard players set #bzone bce_sys 2
execute unless block 200 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 200 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 200 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 200 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 200 79 0 stone run fill 228 99 33 228 99 33 gravel
execute if block 200 79 0 stone run fill 216 99 34 216 99 34 gravel
execute if block 200 79 0 stone run fill 228 99 34 228 99 34 gravel
execute if block 200 79 0 stone run fill 216 99 35 216 99 35 gravel
execute if block 200 79 0 stone run fill 228 99 35 228 99 35 gravel
execute if block 200 79 0 stone run fill 216 99 36 216 99 36 gravel
execute if block 200 79 0 stone run fill 228 99 36 228 99 36 gravel
execute if block 200 79 0 stone run fill 217 99 37 217 99 37 gravel
execute if block 200 79 0 stone run fill 227 99 37 227 99 37 gravel
execute if block 200 79 0 stone run fill 217 99 38 218 99 38 gravel
execute if block 200 79 0 stone run fill 226 99 38 227 99 38 gravel
execute if block 200 79 0 stone run fill 218 99 39 219 99 39 gravel
execute if block 200 79 0 stone run fill 225 99 39 226 99 39 gravel
execute if block 200 79 0 stone run fill 220 99 40 224 99 40 gravel
execute if block 200 79 0 stone run scoreboard players add #bstep bce_sys 1
