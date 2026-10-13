# zone 0 detail 5
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 0 79 0 stone run setblock 0 115 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 2 115 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 4 115 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 6 115 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 8 115 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 10 115 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 12 115 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 14 115 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -7 103 19 -5 111 19 air
execute if block 0 79 0 stone run fill -7 103 19 -5 103 19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -6 107 19 soul_lantern
execute if block 0 79 0 stone run fill -1 103 19 1 111 19 air
execute if block 0 79 0 stone run fill -1 103 19 1 103 19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 0 107 19 soul_lantern
execute if block 0 79 0 stone run fill 5 103 19 7 111 19 air
execute if block 0 79 0 stone run fill 5 103 19 7 103 19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 6 107 19 soul_lantern
execute if block 0 79 0 stone run setblock -14 115 19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -12 115 19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -10 115 19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -8 115 19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -6 115 19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -4 115 19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -2 115 19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 0 115 19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 2 115 19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 4 115 19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 6 115 19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 8 115 19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 10 115 19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 12 115 19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 14 115 19 chiseled_stone_bricks
execute if block 0 79 0 stone run fill 18 100 -6 18 101 -6 stone_bricks
execute if block 0 79 0 stone run fill 18 102 -6 18 103 -6 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 18 104 -6 lantern
execute if block 0 79 0 stone run fill 17 100 -6 19 100 -6 polished_andesite
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
