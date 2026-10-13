# zone 1 detail 1
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 100 79 0 stone run setblock 121 100 23 furnace
execute if block 100 79 0 stone run fill 140 99 -2 159 99 2 polished_andesite
execute if block 100 79 0 stone run fill 140 99 -3 159 99 -3 stone_bricks
execute if block 100 79 0 stone run fill 140 99 3 159 99 3 stone_bricks
execute if block 100 79 0 stone run fill 140 100 -3 159 100 -3 iron_bars
execute if block 100 79 0 stone run fill 140 100 3 159 100 3 iron_bars
execute if block 100 79 0 stone run fill 142 88 -3 142 98 -3 stone_bricks
execute if block 100 79 0 stone run fill 142 88 3 142 98 3 stone_bricks
execute if block 100 79 0 stone run fill 142 101 -3 142 102 -3 stone_bricks
execute if block 100 79 0 stone run fill 142 101 3 142 102 3 stone_bricks
execute if block 100 79 0 stone run setblock 142 103 -3 lantern
execute if block 100 79 0 stone run setblock 142 103 3 lantern
execute if block 100 79 0 stone run fill 148 88 -3 148 98 -3 stone_bricks
execute if block 100 79 0 stone run fill 148 88 3 148 98 3 stone_bricks
execute if block 100 79 0 stone run fill 148 101 -3 148 102 -3 stone_bricks
execute if block 100 79 0 stone run fill 148 101 3 148 102 3 stone_bricks
execute if block 100 79 0 stone run setblock 148 103 -3 lantern
execute if block 100 79 0 stone run setblock 148 103 3 lantern
execute if block 100 79 0 stone run fill 154 88 -3 154 98 -3 stone_bricks
execute if block 100 79 0 stone run fill 154 88 3 154 98 3 stone_bricks
execute if block 100 79 0 stone run fill 154 101 -3 154 102 -3 stone_bricks
execute if block 100 79 0 stone run fill 154 101 3 154 102 3 stone_bricks
execute if block 100 79 0 stone run setblock 154 103 -3 lantern
execute if block 100 79 0 stone run setblock 154 103 3 lantern
execute if block 100 79 0 stone run fill 114 120 -12 118 120 -8 spruce_planks
execute if block 100 79 0 stone run setblock 114 116 -13 stone_bricks
execute if block 100 79 0 stone run setblock 114 117 -13 white_concrete
execute if block 100 79 0 stone run setblock 114 118 -13 white_concrete
execute if block 100 79 0 stone run setblock 114 119 -13 white_concrete
execute if block 100 79 0 stone run setblock 114 120 -13 stone_bricks
execute if block 100 79 0 stone run setblock 115 116 -13 white_concrete
execute if block 100 79 0 stone run setblock 115 117 -13 white_concrete
execute if block 100 79 0 stone run setblock 115 118 -13 white_concrete
execute if block 100 79 0 stone run setblock 115 119 -13 white_concrete
execute if block 100 79 0 stone run setblock 115 120 -13 white_concrete
execute if block 100 79 0 stone run setblock 116 116 -13 white_concrete
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
