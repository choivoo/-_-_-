# zone 0 interior 3
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 2
execute if block 0 79 0 stone run fill -2 99 7 2 99 7 deepslate_tiles
execute if block 0 79 0 stone run fill -2 99 -6 2 99 -6 polished_diorite
execute if block 0 79 0 stone run fill -4 99 -5 4 99 -5 polished_diorite
execute if block 0 79 0 stone run fill -5 99 -4 5 99 -4 polished_diorite
execute if block 0 79 0 stone run fill -5 99 -3 5 99 -3 polished_diorite
execute if block 0 79 0 stone run fill -6 99 -2 6 99 -2 polished_diorite
execute if block 0 79 0 stone run fill -6 99 -1 6 99 -1 polished_diorite
execute if block 0 79 0 stone run fill -6 99 0 6 99 0 polished_diorite
execute if block 0 79 0 stone run fill -6 99 1 6 99 1 polished_diorite
execute if block 0 79 0 stone run fill -6 99 2 6 99 2 polished_diorite
execute if block 0 79 0 stone run fill -5 99 3 5 99 3 polished_diorite
execute if block 0 79 0 stone run fill -5 99 4 5 99 4 polished_diorite
execute if block 0 79 0 stone run fill -4 99 5 4 99 5 polished_diorite
execute if block 0 79 0 stone run fill -2 99 6 2 99 6 polished_diorite
execute if block 0 79 0 stone run fill -2 99 -4 2 99 -4 deepslate_tiles
execute if block 0 79 0 stone run fill -3 99 -3 3 99 -3 deepslate_tiles
execute if block 0 79 0 stone run fill -4 99 -2 4 99 -2 deepslate_tiles
execute if block 0 79 0 stone run fill -4 99 -1 4 99 -1 deepslate_tiles
execute if block 0 79 0 stone run fill -4 99 0 4 99 0 deepslate_tiles
execute if block 0 79 0 stone run fill -4 99 1 4 99 1 deepslate_tiles
execute if block 0 79 0 stone run fill -4 99 2 4 99 2 deepslate_tiles
execute if block 0 79 0 stone run fill -3 99 3 3 99 3 deepslate_tiles
execute if block 0 79 0 stone run fill -2 99 4 2 99 4 deepslate_tiles
execute if block 0 79 0 stone run fill -1 99 -3 1 99 -3 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -2 99 -2 2 99 -2 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -3 99 -1 3 99 -1 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -3 99 0 3 99 0 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -3 99 1 3 99 1 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -2 99 2 2 99 2 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -1 99 3 1 99 3 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -1 99 -1 1 99 -1 gilded_blackstone
execute if block 0 79 0 stone run fill -1 99 0 1 99 0 gilded_blackstone
execute if block 0 79 0 stone run fill -1 99 1 1 99 1 gilded_blackstone
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
