# zone 2 light 0
scoreboard players set #bzone bce_sys 2
execute unless block 200 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 200 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 200 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 200 79 0 stone run scoreboard players set #bstage bce_sys 4
execute if block 200 79 0 stone run setblock 185 90 5 lantern
execute if block 200 79 0 stone run setblock 190 90 5 lantern
execute if block 200 79 0 stone run setblock 195 90 5 lantern
execute if block 200 79 0 stone run setblock 200 90 5 lantern
execute if block 200 79 0 stone run setblock 205 90 5 lantern
execute if block 200 79 0 stone run setblock 210 90 10 lantern
execute if block 200 79 0 stone run setblock 215 90 10 lantern
execute if block 200 79 0 stone run setblock 220 90 10 lantern
execute if block 200 79 0 stone run setblock 225 90 10 lantern
execute if block 200 79 0 stone run setblock 188 94 0 sea_lantern
execute if block 200 79 0 stone run setblock 224 95 0 sea_lantern
execute if block 200 79 0 stone run fill 190 87 6 190 93 6 end_rod
execute if block 200 79 0 stone run setblock 190 94 6 sea_lantern
execute if block 200 79 0 stone run fill 236 100 4 236 112 4 end_rod
execute if block 200 79 0 stone run setblock 236 113 4 sea_lantern
execute if block 200 79 0 stone run scoreboard players add #bstep bce_sys 1
