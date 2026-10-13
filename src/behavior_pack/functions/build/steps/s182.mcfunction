# tb zone 4 probe
scoreboard players set #bzone bce_sys 4
scoreboard players set #bstage bce_sys 0
scoreboard players set #bzstart bce_sys 182
scoreboard players set #bsm bce_sys 2
tellraw @a {"rawtext":[{"text":"§e[BCE] 구역 5/5 건설 시작: 검은별의 성채"}]}
tickingarea add circle 400 100 0 4 bce_z4
setblock 400 79 0 stone
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bwait bce_sys 0
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
