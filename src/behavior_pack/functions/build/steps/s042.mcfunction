# zone 1 shell 0
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 100 79 0 stone run fill 98 100 -5 102 101 -5 stone_bricks
execute if block 100 79 0 stone run fill 97 100 -4 103 101 -4 stone_bricks
execute if block 100 79 0 stone run fill 96 100 -3 104 101 -3 stone_bricks
execute if block 100 79 0 stone run fill 95 100 -2 105 101 -2 stone_bricks
execute if block 100 79 0 stone run fill 95 100 -1 105 101 -1 stone_bricks
execute if block 100 79 0 stone run fill 95 100 0 105 101 0 stone_bricks
execute if block 100 79 0 stone run fill 95 100 1 105 101 1 stone_bricks
execute if block 100 79 0 stone run fill 95 100 2 105 101 2 stone_bricks
execute if block 100 79 0 stone run fill 96 100 3 104 101 3 stone_bricks
execute if block 100 79 0 stone run fill 97 100 4 103 101 4 stone_bricks
execute if block 100 79 0 stone run fill 98 100 5 102 101 5 stone_bricks
execute if block 100 79 0 stone run fill 98 101 -4 102 101 -4 water
execute if block 100 79 0 stone run fill 97 101 -3 103 101 -3 water
execute if block 100 79 0 stone run fill 96 101 -2 104 101 -2 water
execute if block 100 79 0 stone run fill 96 101 -1 104 101 -1 water
execute if block 100 79 0 stone run fill 96 101 0 104 101 0 water
execute if block 100 79 0 stone run fill 96 101 1 104 101 1 water
execute if block 100 79 0 stone run fill 96 101 2 104 101 2 water
execute if block 100 79 0 stone run fill 97 101 3 103 101 3 water
execute if block 100 79 0 stone run fill 98 101 4 102 101 4 water
execute if block 100 79 0 stone run fill 98 100 -4 102 100 -4 stone
execute if block 100 79 0 stone run fill 97 100 -3 103 100 -3 stone
execute if block 100 79 0 stone run fill 96 100 -2 104 100 -2 stone
execute if block 100 79 0 stone run fill 96 100 -1 104 100 -1 stone
execute if block 100 79 0 stone run fill 96 100 0 104 100 0 stone
execute if block 100 79 0 stone run fill 96 100 1 104 100 1 stone
execute if block 100 79 0 stone run fill 96 100 2 104 100 2 stone
execute if block 100 79 0 stone run fill 97 100 3 103 100 3 stone
execute if block 100 79 0 stone run fill 98 100 4 102 100 4 stone
execute if block 100 79 0 stone run fill 100 100 0 100 104 0 chiseled_stone_bricks
execute if block 100 79 0 stone run setblock 100 105 0 sea_lantern
execute if block 100 79 0 stone run fill 94 100 0 94 103 0 stone_bricks
execute if block 100 79 0 stone run setblock 94 104 0 lantern
execute if block 100 79 0 stone run fill 106 100 0 106 103 0 stone_bricks
execute if block 100 79 0 stone run setblock 106 104 0 lantern
execute if block 100 79 0 stone run fill 100 100 -6 100 103 -6 stone_bricks
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
