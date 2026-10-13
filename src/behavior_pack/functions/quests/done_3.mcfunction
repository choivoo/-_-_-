# Q3 첫 적을 처치하다 -> Q4
scoreboard players set @s bce_q 4
scoreboard players set _qflash bce_sys 40
titleraw @s title {"rawtext":[{"text":"§a퀘스트 완료"}]}
titleraw @s subtitle {"rawtext":[{"text":"첫 적을 처치하다"}]}
playsound random.levelup @s ~ ~ ~ 0.8 1
particle minecraft:totem_particle ~ ~1 ~
give @s arrow 8
scoreboard players set @s bce_ps 3
tellraw @s {"rawtext":[{"text":"§e[다음 임무] §f잿빛 마을에 도착하다"}]}
tellraw @s {"rawtext":[{"text":"§e[목적지] §f동쪽 다리를 건너 잿빛 마을(입구 x≈66)로 가세요. 빛기둥이 표시합니다."}]}
function cutscenes/q4_intro/start
