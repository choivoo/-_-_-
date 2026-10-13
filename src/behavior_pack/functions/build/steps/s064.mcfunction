# zone 1 light 1
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 4
execute if block 100 79 0 stone run fill 82 100 -5 82 102 -5 oak_fence
execute if block 100 79 0 stone run setblock 82 103 -5 lantern
execute if block 100 79 0 stone run fill 82 100 5 82 102 5 oak_fence
execute if block 100 79 0 stone run setblock 82 103 5 lantern
execute if block 100 79 0 stone run fill 91 100 -5 91 102 -5 oak_fence
execute if block 100 79 0 stone run setblock 91 103 -5 lantern
execute if block 100 79 0 stone run fill 91 100 5 91 102 5 oak_fence
execute if block 100 79 0 stone run setblock 91 103 5 lantern
execute if block 100 79 0 stone run fill 100 100 -5 100 102 -5 oak_fence
execute if block 100 79 0 stone run setblock 100 103 -5 lantern
execute if block 100 79 0 stone run fill 100 100 5 100 102 5 oak_fence
execute if block 100 79 0 stone run setblock 100 103 5 lantern
execute if block 100 79 0 stone run fill 109 100 -5 109 102 -5 oak_fence
execute if block 100 79 0 stone run setblock 109 103 -5 lantern
execute if block 100 79 0 stone run fill 109 100 5 109 102 5 oak_fence
execute if block 100 79 0 stone run setblock 109 103 5 lantern
execute if block 100 79 0 stone run fill 118 100 -5 118 102 -5 oak_fence
execute if block 100 79 0 stone run setblock 118 103 -5 lantern
execute if block 100 79 0 stone run fill 118 100 5 118 102 5 oak_fence
execute if block 100 79 0 stone run setblock 118 103 5 lantern
execute if block 100 79 0 stone run fill 127 100 -5 127 102 -5 oak_fence
execute if block 100 79 0 stone run setblock 127 103 -5 lantern
execute if block 100 79 0 stone run fill 127 100 5 127 102 5 oak_fence
execute if block 100 79 0 stone run setblock 127 103 5 lantern
execute if block 100 79 0 stone run fill 136 100 -5 136 102 -5 oak_fence
execute if block 100 79 0 stone run setblock 136 103 -5 lantern
execute if block 100 79 0 stone run fill 136 100 5 136 102 5 oak_fence
execute if block 100 79 0 stone run setblock 136 103 5 lantern
execute if block 100 79 0 stone run setblock 116 101 -6 lantern
execute if block 100 79 0 stone run fill 66 100 4 66 112 4 end_rod
execute if block 100 79 0 stone run setblock 66 113 4 sea_lantern
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
