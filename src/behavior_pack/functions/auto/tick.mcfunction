# THE ONLY tick.json entry. Nothing heavy runs before a player exists (state 0) or before the objectives exist.
execute unless score _astate bce_sys matches 0..6 run function auto/detect_world
execute if score _astate bce_sys matches 0 if entity @a run function auto/first_join
execute if score _astate bce_sys matches 1..5 run function core/tick
execute if score _astate bce_sys matches 2 run function auto/building_tick
execute if score _astate bce_sys matches 4..5 run function auto/prepare_player
execute if score _astate bce_sys matches 6 run function auto/recovery
