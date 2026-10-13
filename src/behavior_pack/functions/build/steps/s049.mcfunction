# zone 1 probe
scoreboard players set _bzone bce_sys 1
function build/ready_z1
scoreboard players set _bstage bce_sys 0
scoreboard players set _bzstart bce_sys 49
scoreboard players set _bsm bce_sys 2
tickingarea add 60 100 -44 160 100 44 bce_z1 true
setblock 56 79 -40 stone
setblock 56 79 -24 stone
setblock 56 79 -8 stone
setblock 56 79 8 stone
setblock 56 79 24 stone
setblock 56 79 40 stone
setblock 72 79 -40 stone
setblock 72 79 -24 stone
setblock 72 79 -8 stone
setblock 72 79 8 stone
setblock 72 79 24 stone
setblock 72 79 40 stone
setblock 88 79 -40 stone
setblock 88 79 -24 stone
setblock 88 79 -8 stone
setblock 88 79 8 stone
setblock 88 79 24 stone
setblock 88 79 40 stone
setblock 104 79 -40 stone
setblock 104 79 -24 stone
setblock 104 79 -8 stone
setblock 104 79 8 stone
setblock 104 79 24 stone
setblock 104 79 40 stone
setblock 120 79 -40 stone
setblock 120 79 -24 stone
setblock 120 79 -8 stone
setblock 120 79 8 stone
setblock 120 79 24 stone
setblock 120 79 40 stone
setblock 136 79 -40 stone
setblock 136 79 -24 stone
setblock 136 79 -8 stone
setblock 136 79 8 stone
setblock 136 79 24 stone
setblock 136 79 40 stone
setblock 152 79 -40 stone
setblock 152 79 -24 stone
setblock 152 79 -8 stone
setblock 152 79 8 stone
setblock 152 79 24 stone
setblock 152 79 40 stone
setblock 168 79 -40 stone
setblock 168 79 -24 stone
setblock 168 79 -8 stone
setblock 168 79 8 stone
setblock 168 79 24 stone
setblock 168 79 40 stone
function build/ready_z1
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bwait bce_sys 0
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
