# zone 4 probe
scoreboard players set _bzone bce_sys 4
function build/ready_z4
scoreboard players set _bstage bce_sys 0
scoreboard players set _bzstart bce_sys 139
scoreboard players set _bsm bce_sys 2
tickingarea add 360 100 -44 460 100 44 bce_z4 true
setblock 360 79 -40 stone
setblock 360 79 -24 stone
setblock 360 79 -8 stone
setblock 360 79 8 stone
setblock 360 79 24 stone
setblock 360 79 40 stone
setblock 376 79 -40 stone
setblock 376 79 -24 stone
setblock 376 79 -8 stone
setblock 376 79 8 stone
setblock 376 79 24 stone
setblock 376 79 40 stone
setblock 392 79 -40 stone
setblock 392 79 -24 stone
setblock 392 79 -8 stone
setblock 392 79 8 stone
setblock 392 79 24 stone
setblock 392 79 40 stone
setblock 408 79 -40 stone
setblock 408 79 -24 stone
setblock 408 79 -8 stone
setblock 408 79 8 stone
setblock 408 79 24 stone
setblock 408 79 40 stone
setblock 424 79 -40 stone
setblock 424 79 -24 stone
setblock 424 79 -8 stone
setblock 424 79 8 stone
setblock 424 79 24 stone
setblock 424 79 40 stone
setblock 440 79 -40 stone
setblock 440 79 -24 stone
setblock 440 79 -8 stone
setblock 440 79 8 stone
setblock 440 79 24 stone
setblock 440 79 40 stone
setblock 456 79 -40 stone
setblock 456 79 -24 stone
setblock 456 79 -8 stone
setblock 456 79 8 stone
setblock 456 79 24 stone
setblock 456 79 40 stone
function build/ready_z4
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bwait bce_sys 0
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
