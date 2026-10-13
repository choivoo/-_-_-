# bstate: 0 idle 1 intro 2 fight 3 dying 4 done. fallbacks keep the state machine from sticking
execute if score #bstate bce_sys matches 2 run function bosses/fight
execute if score #bstate bce_sys matches 2 run function bosses/watch
execute if score #bstate bce_sys matches 1 run function bosses/watch_intro
execute if score #bstate bce_sys matches 3 unless entity @a[tag=bce_cs] run function bosses/victory_world
