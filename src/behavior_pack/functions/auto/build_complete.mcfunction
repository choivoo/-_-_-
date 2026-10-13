# PLAY_READY only if the temple, village, ruins, wall and citadel (incl. quest objects, start position and boss arena floor) were verified
scoreboard players set _acheck bce_sys 0
execute if score _zok0 bce_sys matches 1 run scoreboard players add _acheck bce_sys 1
execute if score _zok1 bce_sys matches 1 run scoreboard players add _acheck bce_sys 1
execute if score _zok2 bce_sys matches 1 run scoreboard players add _acheck bce_sys 1
execute if score _zok3 bce_sys matches 1 run scoreboard players add _acheck bce_sys 1
execute if score _zok4 bce_sys matches 1 run scoreboard players add _acheck bce_sys 1
execute if score _acheck bce_sys matches 5 run function auto/world_ready
execute unless score _acheck bce_sys matches 5 run function auto/to_error
