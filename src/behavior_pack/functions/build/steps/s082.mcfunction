# zone 2 ground 12
scoreboard players set #bzone bce_sys 2
execute unless block 200 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 200 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 200 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 200 79 0 stone run scoreboard players set #bstage bce_sys 0
execute if block 200 79 0 stone run fill 203 100 39 203 100 39 mossy_stone_bricks
execute if block 200 79 0 stone run fill 204 100 39 205 100 39 stone
execute if block 200 79 0 stone run fill 204 101 39 205 101 39 mossy_stone_bricks
execute if block 200 79 0 stone run fill 206 100 39 208 101 39 stone
execute if block 200 79 0 stone run fill 206 102 39 208 102 39 mossy_stone_bricks
execute if block 200 79 0 stone run fill 209 100 39 210 102 39 stone
execute if block 200 79 0 stone run fill 209 103 39 210 103 39 mossy_stone_bricks
execute if block 200 79 0 stone run fill 211 100 39 213 101 39 stone
execute if block 200 79 0 stone run fill 211 102 39 213 102 39 mossy_stone_bricks
execute if block 200 79 0 stone run fill 214 100 39 215 100 39 stone
execute if block 200 79 0 stone run fill 214 101 39 215 101 39 mossy_stone_bricks
execute if block 200 79 0 stone run fill 216 100 39 221 100 39 mossy_stone_bricks
execute if block 200 79 0 stone run fill 222 100 39 225 100 39 stone
execute if block 200 79 0 stone run fill 222 101 39 225 101 39 mossy_stone_bricks
execute if block 200 79 0 stone run fill 226 100 39 226 101 39 stone
execute if block 200 79 0 stone run fill 226 102 39 226 102 39 mossy_stone_bricks
execute if block 200 79 0 stone run fill 227 100 39 229 100 39 stone
execute if block 200 79 0 stone run fill 227 101 39 229 101 39 mossy_stone_bricks
execute if block 200 79 0 stone run fill 230 100 39 230 101 39 stone
execute if block 200 79 0 stone run fill 230 102 39 230 102 39 mossy_stone_bricks
execute if block 200 79 0 stone run fill 231 100 39 233 102 39 stone
execute if block 200 79 0 stone run fill 231 103 39 233 103 39 mossy_stone_bricks
execute if block 200 79 0 stone run fill 234 100 39 234 101 39 stone
execute if block 200 79 0 stone run fill 234 102 39 234 102 39 mossy_stone_bricks
execute if block 200 79 0 stone run fill 235 100 39 239 100 39 stone
execute if block 200 79 0 stone run fill 235 101 39 239 101 39 mossy_stone_bricks
execute if block 200 79 0 stone run scoreboard players add #bstep bce_sys 1
