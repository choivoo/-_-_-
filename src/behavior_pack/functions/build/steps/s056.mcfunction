# zone 1 detail 0
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 100 79 0 stone run setblock 81 100 -25 crafting_table
execute if block 100 79 0 stone run setblock 73 100 -19 barrel
execute if block 100 79 0 stone run setblock 81 100 -19 bookshelf
execute if block 100 79 0 stone run setblock 93 100 -24 furnace
execute if block 100 79 0 stone run setblock 87 100 -19 chest
execute if block 100 79 0 stone run setblock 93 100 -19 bookshelf
execute if block 100 79 0 stone run setblock 113 100 -24 crafting_table
execute if block 100 79 0 stone run setblock 107 100 -19 barrel
execute if block 100 79 0 stone run setblock 129 100 -26 barrel
execute if block 100 79 0 stone run setblock 119 100 -19 barrel
execute if block 100 79 0 stone run setblock 129 100 -19 lectern
execute if block 100 79 0 stone run setblock 129 100 -23 chest
execute if block 100 79 0 stone run fill 120 103 -17 128 103 -16 red_wool
execute if block 100 79 0 stone run fill 120 100 -16 128 100 -16 barrel
execute if block 100 79 0 stone run setblock 81 100 18 furnace
execute if block 100 79 0 stone run setblock 73 100 24 bookshelf
execute if block 100 79 0 stone run setblock 93 100 18 crafting_table
execute if block 100 79 0 stone run setblock 87 100 24 chest
execute if block 100 79 0 stone run setblock 115 100 18 web
execute if block 100 79 0 stone run fill 108 105 19 112 108 23 air
execute if block 100 79 0 stone run fill 116 101 19 116 104 21 air
execute if block 100 79 0 stone run setblock 109 100 19 cobblestone
execute if block 100 79 0 stone run setblock 114 100 22 cobblestone
execute if block 100 79 0 stone run setblock 113 100 22 web
execute if block 100 79 0 stone run setblock 113 100 24 gravel
execute if block 100 79 0 stone run setblock 112 100 23 spruce_planks
execute if block 100 79 0 stone run setblock 115 100 20 gravel
execute if block 100 79 0 stone run setblock 113 100 18 gravel
execute if block 100 79 0 stone run setblock 113 100 19 web
execute if block 100 79 0 stone run setblock 108 100 20 spruce_planks
execute if block 100 79 0 stone run setblock 107 100 20 gravel
execute if block 100 79 0 stone run setblock 108 100 21 spruce_planks
execute if block 100 79 0 stone run setblock 115 100 19 gravel
execute if block 100 79 0 stone run setblock 109 100 21 web
execute if block 100 79 0 stone run setblock 108 100 20 cobblestone
execute if block 100 79 0 stone run setblock 127 100 18 barrel
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
