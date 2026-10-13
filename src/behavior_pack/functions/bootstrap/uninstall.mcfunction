# stop the engine (keeps scores & map)
scoreboard players set _state bce_sys 13
kill @e[tag=bce_enemy]
kill @e[tag=bce_boss]
execute as @a[tag=bce_cs] run function cutscenes/force_end
tickingarea remove_all
scoreboard players set _state bce_sys 0
tellraw @a {"rawtext":[{"text":"§e[BCE] 엔진을 정지했습니다 (RESETTING->UNINITIALIZED). 맵 블록은 남아 있습니다."}]}
