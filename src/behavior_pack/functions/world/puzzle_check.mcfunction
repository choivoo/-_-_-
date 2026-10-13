# solution (on,off,on) matches the lamp hint wall; checked every 10 ticks
execute if score #puzzle bce_sys matches 0 if block 188 87 -5 lever ["open_bit"=true] if block 188 87 0 lever ["open_bit"=false] if block 188 87 5 lever ["open_bit"=true] run function world/puzzle_solve
