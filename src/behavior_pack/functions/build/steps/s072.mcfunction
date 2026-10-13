# zone 1 interior 1
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 2
execute if score _bready bce_sys matches 1 run fill 110 100 -18 110 101 -18 air
execute if score _bready bce_sys matches 1 run fill 108 102 -25 108 103 -25 glass_pane
execute if score _bready bce_sys matches 1 run fill 108 102 -18 108 103 -18 glass_pane
execute if score _bready bce_sys matches 1 run fill 106 102 -23 106 103 -23 glass_pane
execute if score _bready bce_sys matches 1 run fill 114 102 -23 114 103 -23 glass_pane
execute if score _bready bce_sys matches 1 run fill 106 102 -20 106 103 -20 glass_pane
execute if score _bready bce_sys matches 1 run fill 114 102 -20 114 103 -20 glass_pane
execute if score _bready bce_sys matches 1 run fill 119 100 -26 129 104 -19 air
execute if score _bready bce_sys matches 1 run fill 119 99 -26 129 99 -19 oak_planks
execute if score _bready bce_sys matches 1 run fill 124 100 -18 124 101 -18 air
execute if score _bready bce_sys matches 1 run fill 120 102 -27 120 103 -27 glass_pane
execute if score _bready bce_sys matches 1 run fill 120 102 -18 120 103 -18 glass_pane
execute if score _bready bce_sys matches 1 run fill 126 102 -27 126 103 -27 glass_pane
execute if score _bready bce_sys matches 1 run fill 126 102 -18 126 103 -18 glass_pane
execute if score _bready bce_sys matches 1 run fill 118 102 -25 118 103 -25 glass_pane
execute if score _bready bce_sys matches 1 run fill 130 102 -25 130 103 -25 glass_pane
execute if score _bready bce_sys matches 1 run fill 118 102 -22 118 103 -22 glass_pane
execute if score _bready bce_sys matches 1 run fill 130 102 -22 130 103 -22 glass_pane
execute if score _bready bce_sys matches 1 run fill 73 100 18 81 104 24 air
execute if score _bready bce_sys matches 1 run fill 73 99 18 81 99 24 oak_planks
execute if score _bready bce_sys matches 1 run fill 77 100 17 77 101 17 air
execute if score _bready bce_sys matches 1 run fill 74 102 17 74 103 17 glass_pane
execute if score _bready bce_sys matches 1 run fill 74 102 25 74 103 25 glass_pane
execute if score _bready bce_sys matches 1 run fill 80 102 17 80 103 17 glass_pane
execute if score _bready bce_sys matches 1 run fill 80 102 25 80 103 25 glass_pane
execute if score _bready bce_sys matches 1 run fill 72 102 19 72 103 19 glass_pane
execute if score _bready bce_sys matches 1 run fill 82 102 19 82 103 19 glass_pane
execute if score _bready bce_sys matches 1 run fill 72 102 22 72 103 22 glass_pane
execute if score _bready bce_sys matches 1 run fill 82 102 22 82 103 22 glass_pane
execute if score _bready bce_sys matches 1 run fill 87 100 18 93 109 24 air
execute if score _bready bce_sys matches 1 run fill 87 99 18 93 99 24 oak_planks
execute if score _bready bce_sys matches 1 run fill 87 104 18 93 104 24 oak_planks
execute if score _bready bce_sys matches 1 run setblock 87 100 18 oak_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run setblock 87 101 19 oak_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run setblock 87 102 20 oak_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run setblock 87 103 21 oak_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
