# zone 4 probe (waits for chunks)
tellraw @a {"rawtext":[{"text":"§e[BCE] 구역 5/5 건설 중: 검은별의 성채"}]}
tickingarea add circle 400 100 0 4 bce_z4
setblock 400 99 0 stone
execute if block 400 99 0 stone run scoreboard players add #bstep bce_sys 1
