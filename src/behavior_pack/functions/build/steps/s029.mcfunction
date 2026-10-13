# zone 1 probe
scoreboard players set #bzone bce_sys 1
scoreboard players set #bstage bce_sys 0
scoreboard players set #bzstart bce_sys 29
scoreboard players set #bsm bce_sys 2
tellraw @a {"rawtext":[{"text":"§e[BCE] 구역 2/5 건설 시작: 잿빛 마을"}]}
tickingarea add circle 100 100 0 4 bce_z1
setblock 100 79 0 stone
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bwait bce_sys 0
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
