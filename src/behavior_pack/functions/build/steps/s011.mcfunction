# zone 0 ground 10
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 0
execute if block 0 79 0 stone run fill 32 101 39 32 101 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill 33 100 39 35 101 39 stone
execute if block 0 79 0 stone run fill 33 102 39 35 102 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill 36 100 39 36 102 39 stone
execute if block 0 79 0 stone run fill 36 103 39 36 103 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill 37 100 39 37 101 39 stone
execute if block 0 79 0 stone run fill 37 102 39 37 102 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill 38 100 39 39 100 39 stone
execute if block 0 79 0 stone run fill 38 101 39 39 101 39 mossy_stone_bricks
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
