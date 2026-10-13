execute if entity @s[tag=bce_admin] run kill @e[tag=bce_enemy]
execute if entity @s[tag=bce_admin] run kill @e[type=arrow]
execute if entity @s[tag=bce_admin] run kill @e[type=item]
execute if entity @s[tag=bce_admin] run tellraw @a {"rawtext":[{"text":"§7[BCE] 임시 엔티티를 정리했습니다."}]}
