# ERROR(14) recovery: /function bootstrap/recover
scoreboard players set #state bce_sys 2
kill @e[tag=bce_enemy]
kill @e[tag=bce_boss]
scoreboard players set #bstate bce_sys 0
execute as @a[tag=bce_cs] run function cutscenes/force_end
execute if score #built bce_sys matches 1 run scoreboard players set #state bce_sys 7
tellraw @a {"rawtext":[{"text":"§e[BCE] 오류 복구를 실행했습니다."}]}
