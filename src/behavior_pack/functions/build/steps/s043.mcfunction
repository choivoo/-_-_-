# zone 0 detail 5
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run setblock 0 107 -19 soul_lantern
execute if score _bready bce_sys matches 1 run fill 5 103 -19 7 111 -19 air
execute if score _bready bce_sys matches 1 run fill 5 103 -19 7 103 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 6 107 -19 soul_lantern
execute if score _bready bce_sys matches 1 run setblock -14 115 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -12 115 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -10 115 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -8 115 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -6 115 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -4 115 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -2 115 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 0 115 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 2 115 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 4 115 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 6 115 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 8 115 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 10 115 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 12 115 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 14 115 -19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill -7 103 19 -5 111 19 air
execute if score _bready bce_sys matches 1 run fill -7 103 19 -5 103 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -6 107 19 soul_lantern
execute if score _bready bce_sys matches 1 run fill -1 103 19 1 111 19 air
execute if score _bready bce_sys matches 1 run fill -1 103 19 1 103 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 0 107 19 soul_lantern
execute if score _bready bce_sys matches 1 run fill 5 103 19 7 111 19 air
execute if score _bready bce_sys matches 1 run fill 5 103 19 7 103 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 6 107 19 soul_lantern
execute if score _bready bce_sys matches 1 run setblock -14 115 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -12 115 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -10 115 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -8 115 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -6 115 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -4 115 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -2 115 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 0 115 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
