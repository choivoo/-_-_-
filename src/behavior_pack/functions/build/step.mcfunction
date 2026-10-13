# BUILD SEQUENCER 2.0 states #bsm: 0 READY 1 PREPARING 2 WAITING_FOR_CHUNK 3 BUILDING 4 VERIFYING 5 COMPLETED 6 PAUSED 7 FAILED 8 RECOVERING
scoreboard players operation #m10b bce_sys = #tick bce_sys
scoreboard players operation #m10b bce_sys %= #c10 bce_sys
execute if score #m10b bce_sys matches 0 run function build/progress_ui
execute unless score #bsm bce_sys matches 5..7 if score #bstep bce_sys = #bstop bce_sys run function build/finish
execute unless score #bsm bce_sys matches 5..7 unless score #bstep bce_sys = #bstop bce_sys run function build/dispatch
execute if score #bsm bce_sys matches 7 run function build/fail_ui
