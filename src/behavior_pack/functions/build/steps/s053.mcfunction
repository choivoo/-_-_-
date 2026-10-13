# zone 1 interior 2
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 2
execute if block 100 79 0 stone run fill 87 104 18 87 104 21 air
execute if block 100 79 0 stone run fill 90 100 17 90 101 17 air
execute if block 100 79 0 stone run fill 88 102 17 88 103 17 glass_pane
execute if block 100 79 0 stone run fill 88 102 25 88 103 25 glass_pane
execute if block 100 79 0 stone run fill 86 102 19 86 103 19 glass_pane
execute if block 100 79 0 stone run fill 94 102 19 94 103 19 glass_pane
execute if block 100 79 0 stone run fill 86 102 22 86 103 22 glass_pane
execute if block 100 79 0 stone run fill 94 102 22 94 103 22 glass_pane
execute if block 100 79 0 stone run fill 88 107 17 88 108 17 glass_pane
execute if block 100 79 0 stone run fill 88 107 25 88 108 25 glass_pane
execute if block 100 79 0 stone run fill 91 107 17 91 108 17 glass_pane
execute if block 100 79 0 stone run fill 91 107 25 91 108 25 glass_pane
execute if block 100 79 0 stone run fill 86 107 19 86 108 19 glass_pane
execute if block 100 79 0 stone run fill 94 107 19 94 108 19 glass_pane
execute if block 100 79 0 stone run fill 86 107 22 86 108 22 glass_pane
execute if block 100 79 0 stone run fill 94 107 22 94 108 22 glass_pane
execute if block 100 79 0 stone run fill 107 100 18 115 104 24 air
execute if block 100 79 0 stone run fill 107 99 18 115 99 24 oak_planks
execute if block 100 79 0 stone run fill 111 100 17 111 101 17 air
execute if block 100 79 0 stone run fill 108 102 17 108 103 17 glass_pane
execute if block 100 79 0 stone run fill 108 102 25 108 103 25 glass_pane
execute if block 100 79 0 stone run fill 114 102 17 114 103 17 glass_pane
execute if block 100 79 0 stone run fill 114 102 25 114 103 25 glass_pane
execute if block 100 79 0 stone run fill 106 102 19 106 103 19 glass_pane
execute if block 100 79 0 stone run fill 116 102 19 116 103 19 glass_pane
execute if block 100 79 0 stone run fill 106 102 22 106 103 22 glass_pane
execute if block 100 79 0 stone run fill 116 102 22 116 103 22 glass_pane
execute if block 100 79 0 stone run fill 121 100 18 127 104 23 air
execute if block 100 79 0 stone run fill 121 99 18 127 99 23 oak_planks
execute if block 100 79 0 stone run fill 124 100 17 124 101 17 air
execute if block 100 79 0 stone run fill 122 102 17 122 103 17 glass_pane
execute if block 100 79 0 stone run fill 122 102 24 122 103 24 glass_pane
execute if block 100 79 0 stone run fill 120 102 19 120 103 19 glass_pane
execute if block 100 79 0 stone run fill 128 102 19 128 103 19 glass_pane
execute if block 100 79 0 stone run fill 120 102 22 120 103 22 glass_pane
execute if block 100 79 0 stone run fill 128 102 22 128 103 22 glass_pane
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
