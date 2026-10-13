# zone 2 probe
scoreboard players set #bzone bce_sys 2
scoreboard players set #bstage bce_sys 0
scoreboard players set #bzstart bce_sys 69
scoreboard players set #bsm bce_sys 2
tellraw @a {"rawtext":[{"text":"§e[BCE] 구역 3/5 건설 시작: 가라앉은 유적"}]}
tickingarea add circle 200 100 0 4 bce_z2
setblock 200 79 0 stone
execute if block 200 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 200 79 0 stone run scoreboard players set #bwait bce_sys 0
execute if block 200 79 0 stone run scoreboard players add #bstep bce_sys 1
execute unless block 200 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
