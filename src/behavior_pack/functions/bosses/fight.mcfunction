# pattern timeline per phase; each attack = WARN (>=12 ticks) -> HIT -> recover (facing resumes)
scoreboard players add #btimer bce_sys 1
execute if score #binv bce_sys matches 1.. run scoreboard players remove #binv bce_sys 1
execute if score #btrack bce_sys matches 1 as @e[tag=bce_boss] at @s run tp @s ~ ~ ~ facing @p[tag=bce_ctl,tag=!bce_cs]
execute if score #bphase bce_sys matches 1 if score #bhp bce_sys matches ..650 run function bosses/to_phase2
execute if score #bphase bce_sys matches 2 if score #bhp bce_sys matches ..300 run function bosses/to_phase3
execute if score #bfin bce_sys matches 0 if score #bhp bce_sys matches ..100 run function bosses/final_start
execute if score #bfin bce_sys matches 1 run function bosses/final_tick
scoreboard players operation #bpct bce_sys = #bhp bce_sys
scoreboard players operation #bpct bce_sys /= #c10 bce_sys
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 1 if score #btimer bce_sys matches 20 run function bosses/w_slash
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 1 if score #btimer bce_sys matches 40 run function bosses/h_slash
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 1 if score #btimer bce_sys matches 45 run function bosses/track
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 1 if score #btimer bce_sys matches 70 run function bosses/w_charge
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 1 if score #btimer bce_sys matches 95 run function bosses/h_charge
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 1 if score #btimer bce_sys matches 100 run function bosses/track
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 1 if score #btimer bce_sys matches 125 run function bosses/w_slam
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 1 if score #btimer bce_sys matches 150 run function bosses/h_slam
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 1 if score #btimer bce_sys matches 158 run function bosses/track
execute if score #bphase bce_sys matches 1 if score #btimer bce_sys matches 180.. run scoreboard players set #btimer bce_sys 0
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 2 if score #btimer bce_sys matches 10 run function bosses/w_slash
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 2 if score #btimer bce_sys matches 24 run function bosses/h_slash
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 2 if score #btimer bce_sys matches 30 run function bosses/track
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 2 if score #btimer bce_sys matches 40 run function bosses/tp_behind
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 2 if score #btimer bce_sys matches 46 run function bosses/w_slash
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 2 if score #btimer bce_sys matches 58 run function bosses/h_slash
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 2 if score #btimer bce_sys matches 62 run function bosses/track
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 2 if score #btimer bce_sys matches 75 run function bosses/w_slam
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 2 if score #btimer bce_sys matches 95 run function bosses/h_slam
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 2 if score #btimer bce_sys matches 100 run function bosses/track
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 2 if score #btimer bce_sys matches 105 run function bosses/w_charge
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 2 if score #btimer bce_sys matches 122 run function bosses/h_charge
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 2 if score #btimer bce_sys matches 127 run function bosses/track
execute if score #bphase bce_sys matches 2 if score #btimer bce_sys matches 130.. run scoreboard players set #btimer bce_sys 0
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 3 if score #btimer bce_sys matches 8 run function bosses/w_quad
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 3 if score #btimer bce_sys matches 36 run function bosses/h_quad
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 3 if score #btimer bce_sys matches 40 run function bosses/track
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 3 if score #btimer bce_sys matches 44 run function bosses/w_slash
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 3 if score #btimer bce_sys matches 58 run function bosses/h_slash
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 3 if score #btimer bce_sys matches 62 run function bosses/track
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 3 if score #btimer bce_sys matches 70 run function bosses/w_slam
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 3 if score #btimer bce_sys matches 88 run function bosses/h_slam
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 3 if score #btimer bce_sys matches 92 run function bosses/track
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 3 if score #btimer bce_sys matches 94 run function bosses/w_charge
execute if score #binv bce_sys matches 0 if score #bphase bce_sys matches 3 if score #btimer bce_sys matches 108 run function bosses/h_charge
execute if score #bphase bce_sys matches 3 if score #btimer bce_sys matches 110.. run scoreboard players set #btimer bce_sys 0
execute if score #bhp bce_sys matches ..0 run function bosses/death
