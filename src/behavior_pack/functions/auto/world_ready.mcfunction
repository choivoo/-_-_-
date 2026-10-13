# WORLD_READY -> INTRO_READY; temp entities cleaned, spawn moved to the temple altar
scoreboard players set _astate bce_sys 3
setworldspawn -7 100 0
tickingarea remove_all
kill @e[type=item]
kill @e[tag=bce_enemy]
effect @a clear
title @a clear
scoreboard players set _aretry bce_sys 0
scoreboard players set _await bce_sys 0
scoreboard players set _astate bce_sys 4
