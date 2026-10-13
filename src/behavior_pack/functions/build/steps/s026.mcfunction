# zone 0 light 0
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 4
execute if block 0 79 0 stone run setblock -10 109 -16 lantern
execute if block 0 79 0 stone run setblock -10 109 16 lantern
execute if block 0 79 0 stone run setblock 0 109 -16 lantern
execute if block 0 79 0 stone run setblock 0 109 16 lantern
execute if block 0 79 0 stone run setblock 10 109 -16 lantern
execute if block 0 79 0 stone run setblock 10 109 16 lantern
execute if block 0 79 0 stone run setblock -10 101 -10 lantern
execute if block 0 79 0 stone run setblock -10 101 10 lantern
execute if block 0 79 0 stone run setblock 10 101 -10 lantern
execute if block 0 79 0 stone run setblock 10 101 10 lantern
execute if block 0 79 0 stone run setblock -8 103 0 soul_lantern
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
