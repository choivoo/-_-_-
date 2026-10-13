# zone 0 detail 4
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run fill 21 101 -11 21 102 -11 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 21 103 -11 lantern
execute if score _bready bce_sys matches 1 run fill 23 101 -11 23 102 -11 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 23 103 -11 lantern
execute if score _bready bce_sys matches 1 run fill 21 101 -9 21 102 -9 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 21 103 -9 lantern
execute if score _bready bce_sys matches 1 run fill 23 101 -9 23 102 -9 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 23 103 -9 lantern
execute if score _bready bce_sys matches 1 run fill 40 99 -2 59 99 2 polished_andesite
execute if score _bready bce_sys matches 1 run fill 40 99 -3 59 99 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 40 99 3 59 99 3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 40 100 -3 59 100 -3 iron_bars
execute if score _bready bce_sys matches 1 run fill 40 100 3 59 100 3 iron_bars
execute if score _bready bce_sys matches 1 run fill 42 88 -3 42 98 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 42 88 3 42 98 3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 42 101 -3 42 102 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 42 101 3 42 102 3 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 42 103 -3 lantern
execute if score _bready bce_sys matches 1 run setblock 42 103 3 lantern
execute if score _bready bce_sys matches 1 run fill 48 88 -3 48 98 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 48 88 3 48 98 3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 48 101 -3 48 102 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 48 101 3 48 102 3 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 48 103 -3 lantern
execute if score _bready bce_sys matches 1 run setblock 48 103 3 lantern
execute if score _bready bce_sys matches 1 run fill 54 88 -3 54 98 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 54 88 3 54 98 3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 54 101 -3 54 102 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 54 101 3 54 102 3 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 54 103 -3 lantern
execute if score _bready bce_sys matches 1 run setblock 54 103 3 lantern
execute if score _bready bce_sys matches 1 run fill -7 103 -19 -5 111 -19 air
execute if score _bready bce_sys matches 1 run fill -7 103 -19 -5 103 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -6 107 -19 soul_lantern
execute if score _bready bce_sys matches 1 run fill -1 103 -19 1 111 -19 air
execute if score _bready bce_sys matches 1 run fill -1 103 -19 1 103 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
