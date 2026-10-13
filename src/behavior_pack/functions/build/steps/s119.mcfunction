# zone 3 probe
scoreboard players set _bzone bce_sys 3
function build/ready_z3
scoreboard players set _bstage bce_sys 0
scoreboard players set _bzstart bce_sys 119
scoreboard players set _bsm bce_sys 2
tickingarea add 260 100 -44 360 100 44 bce_z3 true
setblock 264 79 -40 stone
setblock 264 79 -24 stone
setblock 264 79 -8 stone
setblock 264 79 8 stone
setblock 264 79 24 stone
setblock 264 79 40 stone
setblock 280 79 -40 stone
setblock 280 79 -24 stone
setblock 280 79 -8 stone
setblock 280 79 8 stone
setblock 280 79 24 stone
setblock 280 79 40 stone
setblock 296 79 -40 stone
setblock 296 79 -24 stone
setblock 296 79 -8 stone
setblock 296 79 8 stone
setblock 296 79 24 stone
setblock 296 79 40 stone
setblock 312 79 -40 stone
setblock 312 79 -24 stone
setblock 312 79 -8 stone
setblock 312 79 8 stone
setblock 312 79 24 stone
setblock 312 79 40 stone
setblock 328 79 -40 stone
setblock 328 79 -24 stone
setblock 328 79 -8 stone
setblock 328 79 8 stone
setblock 328 79 24 stone
setblock 328 79 40 stone
setblock 344 79 -40 stone
setblock 344 79 -24 stone
setblock 344 79 -8 stone
setblock 344 79 8 stone
setblock 344 79 24 stone
setblock 344 79 40 stone
setblock 360 79 -40 stone
setblock 360 79 -24 stone
setblock 360 79 -8 stone
setblock 360 79 8 stone
setblock 360 79 24 stone
setblock 360 79 40 stone
function build/ready_z3
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bwait bce_sys 0
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
