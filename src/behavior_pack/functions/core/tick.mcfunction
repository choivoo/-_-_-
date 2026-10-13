# tick.json dispatcher. Does nothing while state is 0..2 (not installed/initialising).
scoreboard players add _tick bce_sys 1
execute if score _state bce_sys matches 3 run function build/step
execute if score _state bce_sys matches 4..12 run function core/run
