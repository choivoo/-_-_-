# BUILD SEQUENCER 2.0 states _bsm: 0 READY 1 PREPARING 2 WAITING_FOR_CHUNK 3 BUILDING 4 VERIFYING 5 COMPLETED 6 PAUSED 7 FAILED 8 RECOVERING
scoreboard players operation _m10b bce_sys = _tick bce_sys
scoreboard players operation _m10b bce_sys %= _c10 bce_sys
execute if score _m10b bce_sys matches 0 run function build/progress_ui
execute unless score _bsm bce_sys matches 5..7 if score _bstep bce_sys = _bstop bce_sys run function build/finish
execute unless score _bsm bce_sys matches 5..7 unless score _bstep bce_sys = _bstop bce_sys run function build/dispatch
execute if score _bsm bce_sys matches 7 run function build/fail_ui
