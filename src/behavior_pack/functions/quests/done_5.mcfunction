# Q5 유적의 장치를 작동하다 -> Q6
scoreboard players set @s bce_q 6
scoreboard players set #qflash bce_sys 40
titleraw @s title {"rawtext":[{"text":"§a퀘스트 완료"}]}
titleraw @s subtitle {"rawtext":[{"text":"유적의 장치를 작동하다"}]}
playsound random.levelup @s ~ ~ ~ 0.8 1
particle minecraft:totem_particle ~ ~1 ~
give @s golden_apple 2
tellraw @s {"rawtext":[{"text":"§e[다음 임무] §f성벽을 돌파하다"}]}
tellraw @s {"rawtext":[{"text":"§e[목적지] §f붕괴된 성벽(x≈260~340)의 적을 모두 처치하고 성문을 통과하세요."}]}
function cutscenes/q6_intro/start
