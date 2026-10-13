# zone 2 light 0
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 4
execute if score _bready bce_sys matches 1 run setblock 185 90 5 lantern
execute if score _bready bce_sys matches 1 run setblock 190 90 5 lantern
execute if score _bready bce_sys matches 1 run setblock 195 90 5 lantern
execute if score _bready bce_sys matches 1 run setblock 200 90 5 lantern
execute if score _bready bce_sys matches 1 run setblock 205 90 5 lantern
execute if score _bready bce_sys matches 1 run setblock 210 90 10 lantern
execute if score _bready bce_sys matches 1 run setblock 215 90 10 lantern
execute if score _bready bce_sys matches 1 run setblock 220 90 10 lantern
execute if score _bready bce_sys matches 1 run setblock 225 90 10 lantern
execute if score _bready bce_sys matches 1 run setblock 188 94 0 sea_lantern
execute if score _bready bce_sys matches 1 run setblock 224 95 0 sea_lantern
execute if score _bready bce_sys matches 1 run fill 190 87 6 190 93 6 end_rod
execute if score _bready bce_sys matches 1 run setblock 190 94 6 sea_lantern
execute if score _bready bce_sys matches 1 run fill 236 100 4 236 112 4 end_rod
execute if score _bready bce_sys matches 1 run setblock 236 113 4 sea_lantern
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
