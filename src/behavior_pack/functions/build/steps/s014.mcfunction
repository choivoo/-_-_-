# zone 1 probe (waits for chunks)
tellraw @a {"rawtext":[{"text":"§e[BCE] 구역 2/5 건설 중: 잿빛 마을"}]}
tickingarea add circle 100 100 0 4 bce_z1
setblock 100 99 0 stone
execute if block 100 99 0 stone run scoreboard players add #bstep bce_sys 1
