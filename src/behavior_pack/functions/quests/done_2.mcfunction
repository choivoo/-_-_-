# Q2 검을 획득하다 -> Q3
scoreboard players set @s bce_q 3
scoreboard players set _qflash bce_sys 40
titleraw @s title {"rawtext":[{"text":"§a퀘스트 완료"}]}
titleraw @s subtitle {"rawtext":[{"text":"검을 획득하다"}]}
playsound random.levelup @s ~ ~ ~ 0.8 1
particle minecraft:totem_particle ~ ~1 ~
clear @s iron_sword
clear @s blaze_rod
clear @s feather
clear @s rabbit_foot
clear @s flint
clear @s brick
clear @s apple
give @s iron_sword
give @s blaze_rod
give @s feather
give @s rabbit_foot
give @s flint
give @s brick
give @s apple 3
tellraw @s {"rawtext":[{"text":"§b[조작] §f블레이즈 막대=연속 베기(3타) / 깃털=전방 회피 / 토끼 발=후방 회피 / 부싯돌=좌 / 벽돌=우 / 사과=회복"}]}
tellraw @s {"rawtext":[{"text":"§b[조작] §f스킬은 핫바에서 해당 아이템을 '새로 선택'할 때 1회 발동합니다. 칼로 돌아갔다가 다시 선택하세요."}]}
tellraw @s {"rawtext":[{"text":"§e[다음 임무] §f첫 적을 처치하다"}]}
tellraw @s {"rawtext":[{"text":"§e[목적지] §f동쪽 훈련장으로 가서 적을 처치하세요."}]}
