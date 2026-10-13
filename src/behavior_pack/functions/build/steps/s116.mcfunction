# zone 3 light 0
scoreboard players set #bzone bce_sys 3
execute unless block 300 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 300 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 300 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 300 79 0 stone run scoreboard players set #bstage bce_sys 4
execute if block 300 79 0 stone run setblock 297 103 -36 lantern
execute if block 300 79 0 stone run setblock 297 103 -24 lantern
execute if block 300 79 0 stone run setblock 297 103 -12 lantern
execute if block 300 79 0 stone run setblock 297 103 0 lantern
execute if block 300 79 0 stone run setblock 297 103 12 lantern
execute if block 300 79 0 stone run setblock 297 103 24 lantern
execute if block 300 79 0 stone run setblock 297 103 36 lantern
execute if block 300 79 0 stone run setblock 324 105 -20 lantern
execute if block 300 79 0 stone run setblock 324 105 20 lantern
execute if block 300 79 0 stone run setblock 328 105 -20 lantern
execute if block 300 79 0 stone run setblock 328 105 20 lantern
execute if block 300 79 0 stone run setblock 332 105 -20 lantern
execute if block 300 79 0 stone run setblock 332 105 20 lantern
execute if block 300 79 0 stone run setblock 336 105 -20 lantern
execute if block 300 79 0 stone run setblock 336 105 20 lantern
execute if block 300 79 0 stone run fill 333 100 6 333 112 6 end_rod
execute if block 300 79 0 stone run setblock 333 113 6 sea_lantern
execute if block 300 79 0 stone run scoreboard players add #bstep bce_sys 1
