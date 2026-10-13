# COMPLETED
setworldspawn -7 100 0
scoreboard players set #built bce_sys 1
scoreboard players set #bsm bce_sys 5
execute if score #started bce_sys matches 0 run scoreboard players set #state bce_sys 4
execute if score #started bce_sys matches 1.. run scoreboard players set #state bce_sys 7
tickingarea remove_all
tellraw @a {"rawtext":[{"text":"§a[BCE] 건축 완료! 신전 시작 패드(제단 앞)에 서면 오프닝이 시작됩니다."}]}
