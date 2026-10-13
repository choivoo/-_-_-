# tb zone 2 probe
scoreboard players set _bzone bce_sys 2
function build/ready_z2
scoreboard players set _bstage bce_sys 0
scoreboard players set _bzstart bce_sys 191
scoreboard players set _bsm bce_sys 2
tickingarea add 160 100 -44 260 100 44 bce_z2 true
setblock 168 79 -40 stone
setblock 168 79 -24 stone
setblock 168 79 -8 stone
setblock 168 79 8 stone
setblock 168 79 24 stone
setblock 168 79 40 stone
setblock 184 79 -40 stone
setblock 184 79 -24 stone
setblock 184 79 -8 stone
setblock 184 79 8 stone
setblock 184 79 24 stone
setblock 184 79 40 stone
setblock 200 79 -40 stone
setblock 200 79 -24 stone
setblock 200 79 -8 stone
setblock 200 79 8 stone
setblock 200 79 24 stone
setblock 200 79 40 stone
setblock 216 79 -40 stone
setblock 216 79 -24 stone
setblock 216 79 -8 stone
setblock 216 79 8 stone
setblock 216 79 24 stone
setblock 216 79 40 stone
setblock 232 79 -40 stone
setblock 232 79 -24 stone
setblock 232 79 -8 stone
setblock 232 79 8 stone
setblock 232 79 24 stone
setblock 232 79 40 stone
setblock 248 79 -40 stone
setblock 248 79 -24 stone
setblock 248 79 -8 stone
setblock 248 79 8 stone
setblock 248 79 24 stone
setblock 248 79 40 stone
setblock 264 79 -40 stone
setblock 264 79 -24 stone
setblock 264 79 -8 stone
setblock 264 79 8 stone
setblock 264 79 24 stone
setblock 264 79 40 stone
function build/ready_z2
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bwait bce_sys 0
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
