# zone 2 ground 7
scoreboard players set #bzone bce_sys 2
execute unless block 200 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 200 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 200 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 200 79 0 stone run scoreboard players set #bstage bce_sys 0
execute if block 200 79 0 stone run fill 210 101 34 210 101 34 mossy_stone_bricks
execute if block 200 79 0 stone run fill 211 100 34 214 100 34 mossy_stone_bricks
execute if block 200 79 0 stone run fill 224 100 34 229 100 34 mossy_stone_bricks
execute if block 200 79 0 stone run fill 230 100 34 234 100 34 stone
execute if block 200 79 0 stone run fill 230 101 34 234 101 34 mossy_stone_bricks
execute if block 200 79 0 stone run fill 235 100 34 236 100 34 mossy_stone_bricks
execute if block 200 79 0 stone run fill 237 100 34 238 100 34 stone
execute if block 200 79 0 stone run fill 237 101 34 238 101 34 mossy_stone_bricks
execute if block 200 79 0 stone run fill 239 100 34 239 100 34 mossy_stone_bricks
execute if block 200 79 0 stone run fill 160 100 35 162 100 35 stone
execute if block 200 79 0 stone run fill 160 101 35 162 101 35 mossy_stone_bricks
execute if block 200 79 0 stone run fill 163 100 35 171 100 35 mossy_stone_bricks
execute if block 200 79 0 stone run fill 172 100 35 173 100 35 stone
execute if block 200 79 0 stone run fill 172 101 35 173 101 35 mossy_stone_bricks
execute if block 200 79 0 stone run fill 174 100 35 176 100 35 mossy_stone_bricks
execute if block 200 79 0 stone run fill 182 100 35 182 100 35 mossy_stone_bricks
execute if block 200 79 0 stone run fill 183 100 35 188 100 35 stone
execute if block 200 79 0 stone run fill 183 101 35 188 101 35 mossy_stone_bricks
execute if block 200 79 0 stone run fill 189 100 35 197 100 35 mossy_stone_bricks
execute if block 200 79 0 stone run fill 201 100 35 208 100 35 mossy_stone_bricks
execute if block 200 79 0 stone run fill 209 100 35 212 100 35 stone
execute if block 200 79 0 stone run fill 209 101 35 212 101 35 mossy_stone_bricks
execute if block 200 79 0 stone run fill 213 100 35 220 100 35 mossy_stone_bricks
execute if block 200 79 0 stone run fill 223 100 35 223 100 35 mossy_stone_bricks
execute if block 200 79 0 stone run fill 224 100 35 230 100 35 stone
execute if block 200 79 0 stone run fill 224 101 35 230 101 35 mossy_stone_bricks
execute if block 200 79 0 stone run fill 231 100 35 233 101 35 stone
execute if block 200 79 0 stone run fill 231 102 35 233 102 35 mossy_stone_bricks
execute if block 200 79 0 stone run fill 234 100 35 238 100 35 stone
execute if block 200 79 0 stone run fill 234 101 35 238 101 35 mossy_stone_bricks
execute if block 200 79 0 stone run fill 239 100 35 239 100 35 mossy_stone_bricks
execute if block 200 79 0 stone run fill 160 100 36 160 100 36 stone
execute if block 200 79 0 stone run fill 160 101 36 160 101 36 mossy_stone_bricks
execute if block 200 79 0 stone run fill 161 100 36 163 100 36 mossy_stone_bricks
execute if block 200 79 0 stone run fill 165 100 36 177 100 36 mossy_stone_bricks
execute if block 200 79 0 stone run fill 179 100 36 179 100 36 mossy_stone_bricks
execute if block 200 79 0 stone run scoreboard players add #bstep bce_sys 1
