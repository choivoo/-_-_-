# zone 2 shell 0
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill 164 100 -6 174 107 6 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 165 100 -5 173 107 5 air
execute if score _bready bce_sys matches 1 run fill 164 108 -6 174 108 6 stone_bricks
execute if score _bready bce_sys matches 1 run fill 174 100 -2 174 103 2 air
execute if score _bready bce_sys matches 1 run fill 164 100 -2 164 103 2 air
execute if score _bready bce_sys matches 1 run fill 167 108 -3 170 108 3 air
execute if score _bready bce_sys matches 1 run fill 188 100 -14 188 106 -14 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 188 100 -14 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 188 100 14 188 104 14 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 188 100 14 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 188 100 -26 188 106 -26 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 188 100 -26 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 188 100 26 188 107 26 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 188 100 26 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 208 100 -14 208 105 -14 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 208 100 -14 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 208 100 14 208 103 14 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 208 100 14 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 208 100 -26 208 103 -26 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 208 100 -26 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 208 100 26 208 104 26 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 208 100 26 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 222 100 -14 222 106 -14 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 222 100 -14 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 222 100 14 222 103 14 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 222 100 14 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 222 100 -26 222 104 -26 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 222 100 -26 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 222 100 26 222 102 26 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 222 100 26 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 230 100 -14 230 104 -14 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 230 100 -14 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 230 100 14 230 102 14 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 230 100 14 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 230 100 -26 230 102 -26 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 230 100 -26 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
