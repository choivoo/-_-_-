# zone 1 interior 0
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 2
execute if block 100 79 0 stone run fill 73 100 -25 81 104 -19 air
execute if block 100 79 0 stone run fill 73 99 -25 81 99 -19 oak_planks
execute if block 100 79 0 stone run fill 77 100 -18 77 101 -18 air
execute if block 100 79 0 stone run fill 74 102 -26 74 103 -26 glass_pane
execute if block 100 79 0 stone run fill 74 102 -18 74 103 -18 glass_pane
execute if block 100 79 0 stone run fill 80 102 -26 80 103 -26 glass_pane
execute if block 100 79 0 stone run fill 80 102 -18 80 103 -18 glass_pane
execute if block 100 79 0 stone run fill 72 102 -24 72 103 -24 glass_pane
execute if block 100 79 0 stone run fill 82 102 -24 82 103 -24 glass_pane
execute if block 100 79 0 stone run fill 72 102 -21 72 103 -21 glass_pane
execute if block 100 79 0 stone run fill 82 102 -21 82 103 -21 glass_pane
execute if block 100 79 0 stone run fill 87 100 -24 93 109 -19 air
execute if block 100 79 0 stone run fill 87 99 -24 93 99 -19 oak_planks
execute if block 100 79 0 stone run fill 87 104 -24 93 104 -19 oak_planks
execute if block 100 79 0 stone run setblock 87 100 -24 oak_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 100 79 0 stone run setblock 87 101 -23 oak_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 100 79 0 stone run setblock 87 102 -22 oak_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 100 79 0 stone run setblock 87 103 -21 oak_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 87 104 -24 87 104 -21 air
execute if block 100 79 0 stone run fill 90 100 -18 90 101 -18 air
execute if block 100 79 0 stone run fill 88 102 -25 88 103 -25 glass_pane
execute if block 100 79 0 stone run fill 88 102 -18 88 103 -18 glass_pane
execute if block 100 79 0 stone run fill 86 102 -23 86 103 -23 glass_pane
execute if block 100 79 0 stone run fill 94 102 -23 94 103 -23 glass_pane
execute if block 100 79 0 stone run fill 86 102 -20 86 103 -20 glass_pane
execute if block 100 79 0 stone run fill 94 102 -20 94 103 -20 glass_pane
execute if block 100 79 0 stone run fill 88 107 -25 88 108 -25 glass_pane
execute if block 100 79 0 stone run fill 88 107 -18 88 108 -18 glass_pane
execute if block 100 79 0 stone run fill 91 107 -25 91 108 -25 glass_pane
execute if block 100 79 0 stone run fill 91 107 -18 91 108 -18 glass_pane
execute if block 100 79 0 stone run fill 86 107 -23 86 108 -23 glass_pane
execute if block 100 79 0 stone run fill 94 107 -23 94 108 -23 glass_pane
execute if block 100 79 0 stone run fill 86 107 -20 86 108 -20 glass_pane
execute if block 100 79 0 stone run fill 94 107 -20 94 108 -20 glass_pane
execute if block 100 79 0 stone run fill 107 100 -24 113 104 -19 air
execute if block 100 79 0 stone run fill 107 99 -24 113 99 -19 oak_planks
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
