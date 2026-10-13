# zone 2 detail 0
scoreboard players set #bzone bce_sys 2
execute unless block 200 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 200 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 200 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 200 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 200 79 0 stone run fill 178 99 1 178 99 2 stone replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 180 99 18 181 99 18 cracked_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 231 99 -11 233 99 -11 stone replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 216 99 15 217 99 17 stone replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 211 99 -10 213 99 -9 gravel replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 191 99 4 193 99 5 cracked_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 179 99 -29 181 99 -28 gravel replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 177 99 -28 179 99 -26 mossy_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 230 99 24 230 99 25 gravel replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 189 99 -1 191 99 -1 mossy_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 187 99 -19 188 99 -17 cracked_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 202 99 34 204 99 36 cracked_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 180 99 2 180 99 2 cracked_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 232 99 -35 234 99 -33 gravel replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 170 99 -13 172 99 -11 cracked_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 178 99 -1 178 99 1 mossy_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 178 99 -1 180 99 0 stone replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 180 99 -38 180 99 -36 mossy_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 181 99 16 181 99 17 stone replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 181 99 -24 183 99 -22 gravel replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 224 99 15 225 99 17 gravel replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 177 99 -30 179 99 -30 gravel replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 166 99 -18 168 99 -17 cracked_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 172 99 13 172 99 13 mossy_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 186 99 -28 187 99 -26 gravel replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 213 99 -5 215 99 -5 cracked_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 194 99 9 195 99 11 stone replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 186 99 25 188 99 27 cracked_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 189 99 3 191 99 3 stone replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 169 99 4 169 99 5 gravel replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 177 99 -16 177 99 -16 gravel replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 204 99 -23 204 99 -22 gravel replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 202 99 30 203 99 32 cracked_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 213 99 -29 213 99 -29 stone replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 204 99 19 206 99 20 cracked_stone_bricks replace mossy_stone_bricks
execute if block 200 79 0 stone run fill 163 99 -4 164 99 -3 gravel replace mossy_stone_bricks
execute if block 200 79 0 stone run scoreboard players add #bstep bce_sys 1
