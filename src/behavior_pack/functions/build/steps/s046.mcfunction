# zone 0 light 0
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 4
execute if score _bready bce_sys matches 1 run setblock -10 109 -16 lantern
execute if score _bready bce_sys matches 1 run setblock -10 109 16 lantern
execute if score _bready bce_sys matches 1 run setblock 0 109 -16 lantern
execute if score _bready bce_sys matches 1 run setblock 0 109 16 lantern
execute if score _bready bce_sys matches 1 run setblock 10 109 -16 lantern
execute if score _bready bce_sys matches 1 run setblock 10 109 16 lantern
execute if score _bready bce_sys matches 1 run setblock -10 101 -10 lantern
execute if score _bready bce_sys matches 1 run setblock -10 101 10 lantern
execute if score _bready bce_sys matches 1 run setblock 10 101 -10 lantern
execute if score _bready bce_sys matches 1 run setblock 10 101 10 lantern
execute if score _bready bce_sys matches 1 run setblock -8 103 0 soul_lantern
execute if score _bready bce_sys matches 1 run fill 17 100 5 17 112 5 end_rod
execute if score _bready bce_sys matches 1 run setblock 17 113 5 sea_lantern
execute if score _bready bce_sys matches 1 run fill 24 100 -7 24 112 -7 end_rod
execute if score _bready bce_sys matches 1 run setblock 24 113 -7 sea_lantern
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
