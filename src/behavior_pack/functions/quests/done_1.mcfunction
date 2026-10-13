# Q1 신전에서 깨어나다 -> Q2
scoreboard players set @s bce_q 2
scoreboard players set _qflash bce_sys 40
titleraw @s title {"rawtext":[{"text":"§a퀘스트 완료"}]}
titleraw @s subtitle {"rawtext":[{"text":"신전에서 깨어나다"}]}
playsound random.levelup @s ~ ~ ~ 0.8 1
particle minecraft:totem_particle ~ ~1 ~
effect @s regeneration 3 1 true
tellraw @s {"rawtext":[{"text":"§e[다음 임무] §f검을 획득하다"}]}
tellraw @s {"rawtext":[{"text":"§e[목적지] §f신전 문 밖 북쪽의 무기 선반(빛기둥)에서 검을 집으세요."}]}
