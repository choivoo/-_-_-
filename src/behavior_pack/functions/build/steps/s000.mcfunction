# zone 0 probe (waits for chunks)
tellraw @a {"rawtext":[{"text":"§e[BCE] 구역 1/5 건설 중: 깨어남의 신전"}]}
tickingarea add circle 0 100 0 4 bce_z0
setblock 0 99 0 stone
execute if block 0 99 0 stone run scoreboard players add #bstep bce_sys 1
