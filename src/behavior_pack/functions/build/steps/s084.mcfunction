# zone 2 shell 1
scoreboard players set #bzone bce_sys 2
execute unless block 200 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 200 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 200 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 200 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 200 79 0 stone run fill 230 100 26 230 103 26 mossy_stone_bricks
execute if block 200 79 0 stone run setblock 230 100 26 chiseled_stone_bricks
execute if block 200 79 0 stone run fill 197 100 -40 203 122 39 mossy_stone_bricks
execute if block 200 79 0 stone run fill 197 103 -40 197 103 39 cracked_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 197 106 -40 197 106 39 cracked_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 197 109 -40 197 109 39 cracked_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 197 112 -40 197 112 39 cracked_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 197 115 -40 197 115 39 cracked_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 197 118 -40 197 118 39 cracked_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 196 100 -40 196 105 39 mossy_cobblestone
execute if block 200 79 0 stone run fill 204 100 -40 204 104 39 mossy_cobblestone
execute if block 200 79 0 stone run scoreboard players add #bstep bce_sys 1
