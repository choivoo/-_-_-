# zone 1 interior 4
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 2
execute if block 100 79 0 stone run setblock 115 116 -11 spruce_planks
execute if block 100 79 0 stone run fill 115 117 -11 115 119 -11 air
execute if block 100 79 0 stone run setblock 116 117 -11 spruce_planks
execute if block 100 79 0 stone run fill 116 118 -11 116 120 -11 air
execute if block 100 79 0 stone run setblock 117 118 -11 spruce_planks
execute if block 100 79 0 stone run fill 117 119 -11 117 121 -11 air
execute if block 100 79 0 stone run setblock 117 119 -10 spruce_planks
execute if block 100 79 0 stone run fill 117 120 -10 117 122 -10 air
execute if block 100 79 0 stone run fill 114 121 -12 118 121 -8 air
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
