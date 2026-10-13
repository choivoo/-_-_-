# zone 0 detail 3
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 0 79 0 stone run fill 12 99 -1 12 99 -1 polished_andesite replace polished_diorite
execute if block 0 79 0 stone run setblock -9 112 -16 web
execute if block 0 79 0 stone run setblock -7 112 16 web
execute if block 0 79 0 stone run setblock -2 112 16 web
execute if block 0 79 0 stone run setblock -12 112 -16 web
execute if block 0 79 0 stone run setblock 10 112 16 web
execute if block 0 79 0 stone run setblock -9 112 16 web
execute if block 0 79 0 stone run setblock 5 112 16 web
execute if block 0 79 0 stone run setblock -12 112 -16 web
execute if block 0 79 0 stone run setblock 1 112 16 web
execute if block 0 79 0 stone run setblock 9 112 16 web
execute if block 0 79 0 stone run fill 19 100 -13 37 100 -13 stone_bricks
execute if block 0 79 0 stone run fill 19 100 13 37 100 13 stone_bricks
execute if block 0 79 0 stone run fill 37 100 -13 37 100 -4 stone_bricks
execute if block 0 79 0 stone run fill 37 100 4 37 100 13 stone_bricks
execute if block 0 79 0 stone run fill 19 101 -13 19 103 -13 stone_bricks
execute if block 0 79 0 stone run setblock 19 104 -13 lantern
execute if block 0 79 0 stone run fill 19 101 13 19 103 13 stone_bricks
execute if block 0 79 0 stone run setblock 19 104 13 lantern
execute if block 0 79 0 stone run fill 37 101 -13 37 103 -13 stone_bricks
execute if block 0 79 0 stone run setblock 37 104 -13 lantern
execute if block 0 79 0 stone run fill 37 101 13 37 103 13 stone_bricks
execute if block 0 79 0 stone run setblock 37 104 13 lantern
execute if block 0 79 0 stone run fill 37 101 -4 37 103 -4 stone_bricks
execute if block 0 79 0 stone run setblock 37 104 -4 lantern
execute if block 0 79 0 stone run fill 37 101 4 37 103 4 stone_bricks
execute if block 0 79 0 stone run setblock 37 104 4 lantern
execute if block 0 79 0 stone run setblock 28 100 -8 hay_block
execute if block 0 79 0 stone run setblock 28 101 -8 hay_block
execute if block 0 79 0 stone run setblock 28 100 8 hay_block
execute if block 0 79 0 stone run setblock 28 101 8 hay_block
execute if block 0 79 0 stone run setblock 30 100 -12 fletching_table
execute if block 0 79 0 stone run setblock 30 100 12 fletching_table
execute if block 0 79 0 stone run fill 40 99 -2 59 99 2 polished_andesite
execute if block 0 79 0 stone run fill 40 99 -3 59 99 -3 stone_bricks
execute if block 0 79 0 stone run fill 40 99 3 59 99 3 stone_bricks
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
