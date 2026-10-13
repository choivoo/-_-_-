# ADMIN: explicit full restart of the auto system (rebuilds the world)
execute if entity @s[tag=bce_admin] run execute if entity @s[tag=bce_admin] run scoreboard players set _astate bce_sys 0
execute if entity @s[tag=bce_admin] run execute if entity @s[tag=bce_admin] run scoreboard players set _state bce_sys 0
execute if entity @s[tag=bce_admin] run execute if entity @s[tag=bce_admin] run tellraw @s {"rawtext":[{"text":"§c[관리자] 자동 초기화를 처음부터 다시 실행합니다(재건축)"}]}
