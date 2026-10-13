# zone 4 light 0
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 4
execute if score _bready bce_sys matches 1 run setblock 367 101 -6 soul_lantern
execute if score _bready bce_sys matches 1 run setblock 367 101 6 soul_lantern
execute if score _bready bce_sys matches 1 run setblock 370 101 -6 soul_lantern
execute if score _bready bce_sys matches 1 run setblock 370 101 6 soul_lantern
execute if score _bready bce_sys matches 1 run setblock 381 99 0 sea_lantern
execute if score _bready bce_sys matches 1 run setblock 386 99 0 sea_lantern
execute if score _bready bce_sys matches 1 run setblock 391 99 0 sea_lantern
execute if score _bready bce_sys matches 1 run setblock 396 99 0 sea_lantern
execute if score _bready bce_sys matches 1 run fill 394 100 6 394 112 6 end_rod
execute if score _bready bce_sys matches 1 run setblock 394 113 6 sea_lantern
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
