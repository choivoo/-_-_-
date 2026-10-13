# zone 2 interior 1
scoreboard players set #bzone bce_sys 2
execute unless block 200 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 200 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 200 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 200 79 0 stone run scoreboard players set #bstage bce_sys 2
execute if block 200 79 0 stone run fill 209 81 -6 216 86 6 water
execute if block 200 79 0 stone run fill 217 86 -6 230 86 6 stone_bricks
execute if block 200 79 0 stone run fill 217 87 -12 230 95 12 air
execute if block 200 79 0 stone run fill 217 86 -12 230 86 12 mossy_stone_bricks
execute if block 200 79 0 stone run fill 226 87 -1 226 90 1 air
execute if block 200 79 0 stone run fill 226 86 -1 226 86 1 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 200 79 0 stone run fill 227 88 -1 227 91 1 air
execute if block 200 79 0 stone run fill 227 87 -1 227 87 1 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 200 79 0 stone run fill 228 89 -1 228 92 1 air
execute if block 200 79 0 stone run fill 228 88 -1 228 88 1 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 200 79 0 stone run fill 229 90 -1 229 93 1 air
execute if block 200 79 0 stone run fill 229 89 -1 229 89 1 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 200 79 0 stone run fill 230 91 -1 230 94 1 air
execute if block 200 79 0 stone run fill 230 90 -1 230 90 1 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 200 79 0 stone run fill 231 92 -1 231 95 1 air
execute if block 200 79 0 stone run fill 231 91 -1 231 91 1 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 200 79 0 stone run fill 232 93 -1 232 96 1 air
execute if block 200 79 0 stone run fill 232 92 -1 232 92 1 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 200 79 0 stone run fill 233 94 -1 233 97 1 air
execute if block 200 79 0 stone run fill 233 93 -1 233 93 1 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 200 79 0 stone run fill 234 95 -1 234 98 1 air
execute if block 200 79 0 stone run fill 234 94 -1 234 94 1 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 200 79 0 stone run fill 235 96 -1 235 99 1 air
execute if block 200 79 0 stone run fill 235 95 -1 235 95 1 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 200 79 0 stone run fill 236 97 -1 236 100 1 air
execute if block 200 79 0 stone run fill 236 96 -1 236 96 1 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 200 79 0 stone run fill 237 98 -1 237 101 1 air
execute if block 200 79 0 stone run fill 237 97 -1 237 97 1 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 200 79 0 stone run fill 238 99 -1 238 102 1 air
execute if block 200 79 0 stone run fill 238 98 -1 238 98 1 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 200 79 0 stone run fill 239 100 -1 239 103 1 air
execute if block 200 79 0 stone run fill 239 99 -1 239 99 1 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 200 79 0 stone run fill 218 87 13 225 91 19 air
execute if block 200 79 0 stone run fill 218 86 13 225 86 19 polished_andesite
execute if block 200 79 0 stone run fill 220 87 12 220 89 12 cracked_stone_bricks
execute if block 200 79 0 stone run scoreboard players add #bstep bce_sys 1
