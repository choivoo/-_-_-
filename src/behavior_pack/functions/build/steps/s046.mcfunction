# zone 3 probe (waits for chunks)
tellraw @a {"rawtext":[{"text":"§e[BCE] 구역 4/5 건설 중: 붕괴된 성벽"}]}
tickingarea add circle 300 100 0 4 bce_z3
setblock 300 99 0 stone
execute if block 300 99 0 stone run scoreboard players add #bstep bce_sys 1
