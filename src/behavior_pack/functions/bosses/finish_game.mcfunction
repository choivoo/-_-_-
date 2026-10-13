# end of ending cutscene (as player)
execute as @s run stopsound @s
tellraw @s {"rawtext":[{"text":"§6[완료] 검은별의 성채를 클리어했습니다. 플레이해 주셔서 감사합니다!"}]}
scoreboard players set #state bce_sys 12
time set 18000
