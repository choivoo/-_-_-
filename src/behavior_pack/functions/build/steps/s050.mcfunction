# zone 1 ground 0
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 60 80 -40 99 98 -1 stone
execute if score _bready bce_sys matches 1 run fill 60 80 0 99 98 39 stone
execute if score _bready bce_sys matches 1 run fill 100 80 -40 139 98 -1 stone
execute if score _bready bce_sys matches 1 run fill 100 80 0 139 98 39 stone
execute if score _bready bce_sys matches 1 run fill 60 99 -40 139 99 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 60 100 -40 139 104 39 air
execute if score _bready bce_sys matches 1 run fill 60 105 -40 139 109 39 air
execute if score _bready bce_sys matches 1 run fill 60 110 -40 139 114 39 air
execute if score _bready bce_sys matches 1 run fill 60 115 -40 139 119 39 air
execute if score _bready bce_sys matches 1 run fill 60 120 -40 139 124 39 air
execute if score _bready bce_sys matches 1 run fill 60 125 -40 139 129 39 air
execute if score _bready bce_sys matches 1 run fill 60 130 -40 139 134 39 air
execute if score _bready bce_sys matches 1 run fill 60 135 -40 139 139 39 air
execute if score _bready bce_sys matches 1 run fill 60 99 -2 139 99 2 gravel
execute if score _bready bce_sys matches 1 run fill 98 99 -40 102 99 39 gravel
execute if score _bready bce_sys matches 1 run fill 91 99 -9 109 99 9 cobblestone
execute if score _bready bce_sys matches 1 run fill 92 99 -8 108 99 8 stone_bricks
execute if score _bready bce_sys matches 1 run fill 94 99 -6 106 99 6 polished_andesite
execute if score _bready bce_sys matches 1 run fill 119 99 -32 122 99 -30 dirt replace coarse_dirt
execute if score _bready bce_sys matches 1 run fill 135 99 -21 137 99 -20 dirt replace coarse_dirt
execute if score _bready bce_sys matches 1 run fill 130 99 5 132 99 8 podzol replace coarse_dirt
execute if score _bready bce_sys matches 1 run fill 88 99 -37 91 99 -36 podzol replace coarse_dirt
execute if score _bready bce_sys matches 1 run fill 66 99 -10 69 99 -10 dirt replace coarse_dirt
execute if score _bready bce_sys matches 1 run fill 129 99 -23 131 99 -20 stone replace coarse_dirt
execute if score _bready bce_sys matches 1 run fill 68 99 5 69 99 6 stone replace coarse_dirt
execute if score _bready bce_sys matches 1 run fill 121 99 -33 121 99 -31 podzol replace coarse_dirt
execute if score _bready bce_sys matches 1 run fill 100 99 34 100 99 34 podzol replace coarse_dirt
execute if score _bready bce_sys matches 1 run fill 75 99 -23 78 99 -22 dirt replace coarse_dirt
execute if score _bready bce_sys matches 1 run fill 87 99 31 87 99 31 podzol replace coarse_dirt
execute if score _bready bce_sys matches 1 run fill 80 99 -21 82 99 -20 podzol replace coarse_dirt
execute if score _bready bce_sys matches 1 run fill 131 99 34 132 99 35 podzol replace coarse_dirt
execute if score _bready bce_sys matches 1 run fill 118 99 2 118 99 4 podzol replace coarse_dirt
execute if score _bready bce_sys matches 1 run fill 81 99 11 83 99 14 stone replace coarse_dirt
execute if score _bready bce_sys matches 1 run fill 113 99 -20 114 99 -20 dirt replace coarse_dirt
execute if score _bready bce_sys matches 1 run fill 63 99 24 64 99 26 gravel replace coarse_dirt
execute if score _bready bce_sys matches 1 run fill 87 99 16 90 99 17 gravel replace coarse_dirt
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
