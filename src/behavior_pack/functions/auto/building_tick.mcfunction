# while building: players are invulnerable, failures retry automatically, completion is detected
execute if score _state bce_sys matches 4.. run function auto/build_complete
execute if score _bsm bce_sys matches 7 run function auto/recovery_build
scoreboard players operation _m20a bce_sys = _tick bce_sys
scoreboard players operation _m20a bce_sys %= _c20 bce_sys
execute if score _m20a bce_sys matches 0 run effect @a resistance 3 255 true
execute if score _m20a bce_sys matches 0 run effect @a saturation 3 5 true
