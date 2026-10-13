# zone 3 light 0
scoreboard players set _bzone bce_sys 3
function build/ready_z3
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 4
execute if score _bready bce_sys matches 1 run setblock 297 103 -36 lantern
execute if score _bready bce_sys matches 1 run setblock 297 103 -24 lantern
execute if score _bready bce_sys matches 1 run setblock 297 103 -12 lantern
execute if score _bready bce_sys matches 1 run setblock 297 103 0 lantern
execute if score _bready bce_sys matches 1 run setblock 297 103 12 lantern
execute if score _bready bce_sys matches 1 run setblock 297 103 24 lantern
execute if score _bready bce_sys matches 1 run setblock 297 103 36 lantern
execute if score _bready bce_sys matches 1 run setblock 324 105 -20 lantern
execute if score _bready bce_sys matches 1 run setblock 324 105 20 lantern
execute if score _bready bce_sys matches 1 run setblock 328 105 -20 lantern
execute if score _bready bce_sys matches 1 run setblock 328 105 20 lantern
execute if score _bready bce_sys matches 1 run setblock 332 105 -20 lantern
execute if score _bready bce_sys matches 1 run setblock 332 105 20 lantern
execute if score _bready bce_sys matches 1 run setblock 336 105 -20 lantern
execute if score _bready bce_sys matches 1 run setblock 336 105 20 lantern
execute if score _bready bce_sys matches 1 run fill 333 100 6 333 112 6 end_rod
execute if score _bready bce_sys matches 1 run setblock 333 113 6 sea_lantern
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
