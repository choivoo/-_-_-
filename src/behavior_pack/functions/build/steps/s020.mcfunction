# zone 0 detail 2
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 0 79 0 stone run fill 8 99 5 8 99 7 cracked_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill -5 99 15 -5 99 16 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run fill 6 99 5 6 99 6 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run fill 4 99 -5 6 99 -5 cracked_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill 12 99 -4 12 99 -3 mossy_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill 11 99 -4 11 99 -2 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run fill -9 99 9 -7 99 10 mossy_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill -11 99 11 -10 99 13 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run fill -10 99 -8 -10 99 -8 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run fill 1 99 -6 1 99 -5 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run fill -9 99 13 -9 99 14 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run fill 4 99 6 5 99 6 cracked_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill 5 99 5 5 99 5 cracked_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill 4 99 -16 5 99 -15 cracked_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill -3 99 14 -1 99 14 cracked_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill -6 99 -5 -6 99 -5 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run fill 8 99 -3 10 99 -3 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run fill 8 99 15 8 99 15 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run fill 12 99 10 12 99 10 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run fill 0 99 2 1 99 4 mossy_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill -7 99 -3 -5 99 -1 mossy_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill -5 99 -8 -4 99 -6 cracked_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill 9 99 3 9 99 3 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run fill -4 99 -12 -2 99 -11 mossy_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill 8 99 15 10 99 16 cracked_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill 12 99 12 12 99 12 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run fill -3 99 11 -2 99 11 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run fill 3 99 -14 3 99 -14 mossy_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill 5 99 -11 5 99 -11 cracked_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill -1 99 -3 -1 99 -2 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run fill -9 99 -16 -7 99 -15 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run fill -6 99 -5 -5 99 -4 cracked_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill 5 99 -8 5 99 -7 mossy_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill -1 99 5 0 99 6 mossy_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run fill 6 99 1 8 99 2 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run fill -11 99 11 -11 99 12 cracked_stone_bricks replace polished_diorite
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
