# zone 0 detail 4
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 0 79 0 stone run fill 40 100 -3 59 100 -3 iron_bars
execute if block 0 79 0 stone run fill 40 100 3 59 100 3 iron_bars
execute if block 0 79 0 stone run fill 42 88 -3 42 98 -3 stone_bricks
execute if block 0 79 0 stone run fill 42 88 3 42 98 3 stone_bricks
execute if block 0 79 0 stone run fill 42 101 -3 42 102 -3 stone_bricks
execute if block 0 79 0 stone run fill 42 101 3 42 102 3 stone_bricks
execute if block 0 79 0 stone run setblock 42 103 -3 lantern
execute if block 0 79 0 stone run setblock 42 103 3 lantern
execute if block 0 79 0 stone run fill 48 88 -3 48 98 -3 stone_bricks
execute if block 0 79 0 stone run fill 48 88 3 48 98 3 stone_bricks
execute if block 0 79 0 stone run fill 48 101 -3 48 102 -3 stone_bricks
execute if block 0 79 0 stone run fill 48 101 3 48 102 3 stone_bricks
execute if block 0 79 0 stone run setblock 48 103 -3 lantern
execute if block 0 79 0 stone run setblock 48 103 3 lantern
execute if block 0 79 0 stone run fill 54 88 -3 54 98 -3 stone_bricks
execute if block 0 79 0 stone run fill 54 88 3 54 98 3 stone_bricks
execute if block 0 79 0 stone run fill 54 101 -3 54 102 -3 stone_bricks
execute if block 0 79 0 stone run fill 54 101 3 54 102 3 stone_bricks
execute if block 0 79 0 stone run setblock 54 103 -3 lantern
execute if block 0 79 0 stone run setblock 54 103 3 lantern
execute if block 0 79 0 stone run fill -7 103 -19 -5 111 -19 air
execute if block 0 79 0 stone run fill -7 103 -19 -5 103 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -6 107 -19 soul_lantern
execute if block 0 79 0 stone run fill -1 103 -19 1 111 -19 air
execute if block 0 79 0 stone run fill -1 103 -19 1 103 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 0 107 -19 soul_lantern
execute if block 0 79 0 stone run fill 5 103 -19 7 111 -19 air
execute if block 0 79 0 stone run fill 5 103 -19 7 103 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 6 107 -19 soul_lantern
execute if block 0 79 0 stone run setblock -14 115 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -12 115 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -10 115 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -8 115 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -6 115 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -4 115 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -2 115 -19 chiseled_stone_bricks
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
