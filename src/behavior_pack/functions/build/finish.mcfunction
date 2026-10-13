# COMPLETED
setworldspawn -7 100 0
scoreboard players set _built bce_sys 1
scoreboard players set _bsm bce_sys 5
execute if score _started bce_sys matches 0 run scoreboard players set _state bce_sys 4
execute if score _started bce_sys matches 1.. run scoreboard players set _state bce_sys 7
tickingarea remove_all
scoreboard players set _bshow bce_sys 0
title @a clear
tellraw @a {"rawtext":[{"text":"§a[BCE] 세계 복원 완료!"}]}
