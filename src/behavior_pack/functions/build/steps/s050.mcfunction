# zone 1 shell 8
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 100 79 0 stone run fill 116 127 -9 116 127 -9 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 115 127 -10 115 127 -10 spruce_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 117 127 -10 117 127 -10 spruce_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if block 100 79 0 stone run setblock 115 127 -11 spruce_planks
execute if block 100 79 0 stone run setblock 117 127 -11 spruce_planks
execute if block 100 79 0 stone run setblock 115 127 -9 spruce_planks
execute if block 100 79 0 stone run setblock 117 127 -9 spruce_planks
execute if block 100 79 0 stone run fill 116 128 -10 116 128 -10 spruce_planks
execute if block 100 79 0 stone run fill 116 128 -10 116 131 -10 end_rod
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
