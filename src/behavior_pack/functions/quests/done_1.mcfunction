# Q1 신전에서 깨어나다 -> Q2
scoreboard players set @s bce_q 2
scoreboard players set #qflash bce_sys 40
titleraw @s title {"rawtext":[{"text":"§a퀘스트 완료"}]}
titleraw @s subtitle {"rawtext":[{"text":"신전에서 깨어나다"}]}
playsound random.levelup @s ~ ~ ~ 0.8 1
particle minecraft:totem_particle ~ ~1 ~
effect @s regeneration 3 1 true
tellraw @s {"rawtext":[{"text":"§e[다음 임무] §f검을 획득하다"}]}
