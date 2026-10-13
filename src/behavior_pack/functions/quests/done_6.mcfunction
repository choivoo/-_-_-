# Q6 성벽을 돌파하다 -> Q7
scoreboard players set @s bce_q 7
scoreboard players set #qflash bce_sys 40
titleraw @s title {"rawtext":[{"text":"§a퀘스트 완료"}]}
titleraw @s subtitle {"rawtext":[{"text":"성벽을 돌파하다"}]}
playsound random.levelup @s ~ ~ ~ 0.8 1
particle minecraft:totem_particle ~ ~1 ~
give @s golden_apple 2
effect @s health_boost 60 1 true
tellraw @s {"rawtext":[{"text":"§e[다음 임무] §f검은별의 수호자를 쓰러뜨리다"}]}
