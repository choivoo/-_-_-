# zone 1 light 1
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 4
execute if score _bready bce_sys matches 1 run fill 82 100 -5 82 102 -5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 82 103 -5 lantern
execute if score _bready bce_sys matches 1 run fill 82 100 5 82 102 5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 82 103 5 lantern
execute if score _bready bce_sys matches 1 run fill 91 100 -5 91 102 -5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 91 103 -5 lantern
execute if score _bready bce_sys matches 1 run fill 91 100 5 91 102 5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 91 103 5 lantern
execute if score _bready bce_sys matches 1 run fill 100 100 -5 100 102 -5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 100 103 -5 lantern
execute if score _bready bce_sys matches 1 run fill 100 100 5 100 102 5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 100 103 5 lantern
execute if score _bready bce_sys matches 1 run fill 109 100 -5 109 102 -5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 109 103 -5 lantern
execute if score _bready bce_sys matches 1 run fill 109 100 5 109 102 5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 109 103 5 lantern
execute if score _bready bce_sys matches 1 run fill 118 100 -5 118 102 -5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 118 103 -5 lantern
execute if score _bready bce_sys matches 1 run fill 118 100 5 118 102 5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 118 103 5 lantern
execute if score _bready bce_sys matches 1 run fill 127 100 -5 127 102 -5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 127 103 -5 lantern
execute if score _bready bce_sys matches 1 run fill 127 100 5 127 102 5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 127 103 5 lantern
execute if score _bready bce_sys matches 1 run fill 136 100 -5 136 102 -5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 136 103 -5 lantern
execute if score _bready bce_sys matches 1 run fill 136 100 5 136 102 5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 136 103 5 lantern
execute if score _bready bce_sys matches 1 run setblock 116 101 -6 lantern
execute if score _bready bce_sys matches 1 run fill 66 100 4 66 112 4 end_rod
execute if score _bready bce_sys matches 1 run setblock 66 113 4 sea_lantern
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
