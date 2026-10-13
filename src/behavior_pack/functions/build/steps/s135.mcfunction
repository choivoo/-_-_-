# zone 3 detail 7
scoreboard players set _bzone bce_sys 3
function build/ready_z3
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run fill 328 100 32 332 100 32 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 329 100 33 331 100 33 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 329 101 28 331 101 28 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 328 101 29 332 101 29 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 328 101 30 332 101 30 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 328 101 31 332 101 31 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 329 101 32 331 101 32 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 329 102 29 331 102 29 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 329 102 30 331 102 30 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 329 102 31 331 102 31 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 276 100 -14 276 101 -6 oak_fence
execute if score _bready bce_sys matches 1 run fill 276 100 -14 276 102 -14 spruce_log
execute if score _bready bce_sys matches 1 run fill 276 100 -10 276 102 -10 spruce_log
execute if score _bready bce_sys matches 1 run fill 276 100 -6 276 102 -6 spruce_log
execute if score _bready bce_sys matches 1 run fill 276 100 6 276 101 14 oak_fence
execute if score _bready bce_sys matches 1 run fill 276 100 6 276 102 6 spruce_log
execute if score _bready bce_sys matches 1 run fill 276 100 10 276 102 10 spruce_log
execute if score _bready bce_sys matches 1 run fill 276 100 14 276 102 14 spruce_log
execute if score _bready bce_sys matches 1 run fill 288 100 -20 288 101 -12 oak_fence
execute if score _bready bce_sys matches 1 run fill 288 100 -20 288 102 -20 spruce_log
execute if score _bready bce_sys matches 1 run fill 288 100 -16 288 102 -16 spruce_log
execute if score _bready bce_sys matches 1 run fill 288 100 -12 288 102 -12 spruce_log
execute if score _bready bce_sys matches 1 run fill 288 100 12 288 101 20 oak_fence
execute if score _bready bce_sys matches 1 run fill 288 100 12 288 102 12 spruce_log
execute if score _bready bce_sys matches 1 run fill 288 100 16 288 102 16 spruce_log
execute if score _bready bce_sys matches 1 run fill 288 100 20 288 102 20 spruce_log
execute if score _bready bce_sys matches 1 run fill 322 100 -10 322 101 -10 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 322 102 -10 lantern
execute if score _bready bce_sys matches 1 run fill 322 100 10 322 101 10 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 322 102 10 lantern
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
