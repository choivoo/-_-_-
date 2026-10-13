# Q4 잿빛 마을에 도착하다 -> Q5
scoreboard players set @s bce_q 5
scoreboard players set #qflash bce_sys 40
titleraw @s title {"rawtext":[{"text":"§a퀘스트 완료"}]}
titleraw @s subtitle {"rawtext":[{"text":"잿빛 마을에 도착하다"}]}
playsound random.levelup @s ~ ~ ~ 0.8 1
particle minecraft:totem_particle ~ ~1 ~
clear @s nether_star
give @s nether_star
tellraw @s {"rawtext":[{"text":"§b[해금] §f네더의 별=충격파(스태미나 30)"}]}
tellraw @s {"rawtext":[{"text":"§e[다음 임무] §f유적의 장치를 작동하다"}]}
