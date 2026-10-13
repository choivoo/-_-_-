# 2-level dispatch on a SNAPSHOT (_bcur) so exactly one step runs per tick
scoreboard players operation _bcur bce_sys = _bstep bce_sys
execute if score _bcur bce_sys matches 0..9 run function build/d00
execute if score _bcur bce_sys matches 10..19 run function build/d01
execute if score _bcur bce_sys matches 20..29 run function build/d02
execute if score _bcur bce_sys matches 30..39 run function build/d03
execute if score _bcur bce_sys matches 40..49 run function build/d04
execute if score _bcur bce_sys matches 50..59 run function build/d05
execute if score _bcur bce_sys matches 60..69 run function build/d06
execute if score _bcur bce_sys matches 70..79 run function build/d07
execute if score _bcur bce_sys matches 80..89 run function build/d08
execute if score _bcur bce_sys matches 90..99 run function build/d09
execute if score _bcur bce_sys matches 100..109 run function build/d10
execute if score _bcur bce_sys matches 110..119 run function build/d11
execute if score _bcur bce_sys matches 120..129 run function build/d12
execute if score _bcur bce_sys matches 130..139 run function build/d13
execute if score _bcur bce_sys matches 140..149 run function build/d14
execute if score _bcur bce_sys matches 150..159 run function build/d15
execute if score _bcur bce_sys matches 160..169 run function build/d16
execute if score _bcur bce_sys matches 170..179 run function build/d17
execute if score _bcur bce_sys matches 180..189 run function build/d18
execute if score _bcur bce_sys matches 190..199 run function build/d19
execute if score _bcur bce_sys matches 200..209 run function build/d20
