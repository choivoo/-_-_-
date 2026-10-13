# zone 4 light 0
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 4
execute if block 400 79 0 stone run setblock 367 101 -6 soul_lantern
execute if block 400 79 0 stone run setblock 367 101 6 soul_lantern
execute if block 400 79 0 stone run setblock 370 101 -6 soul_lantern
execute if block 400 79 0 stone run setblock 370 101 6 soul_lantern
execute if block 400 79 0 stone run setblock 381 99 0 sea_lantern
execute if block 400 79 0 stone run setblock 386 99 0 sea_lantern
execute if block 400 79 0 stone run setblock 391 99 0 sea_lantern
execute if block 400 79 0 stone run setblock 396 99 0 sea_lantern
execute if block 400 79 0 stone run fill 394 100 6 394 112 6 end_rod
execute if block 400 79 0 stone run setblock 394 113 6 sea_lantern
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
