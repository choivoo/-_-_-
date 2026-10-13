# zone 2 probe (waits for chunks)
tellraw @a {"rawtext":[{"text":"§e[BCE] 구역 3/5 건설 중: 가라앉은 유적"}]}
tickingarea add circle 200 100 0 4 bce_z2
setblock 200 99 0 stone
execute if block 200 99 0 stone run scoreboard players add #bstep bce_sys 1
