# runs once: INITIALIZING -> READY -> WORLD_BUILDING
scoreboard players set #state bce_sys 1
scoreboard players set #built bce_sys 0
scoreboard players set #yard bce_sys 0
scoreboard players set #wall bce_sys 0
scoreboard players set #puzzle bce_sys 0
scoreboard players set #door bce_sys 0
scoreboard players set #bdead bce_sys 0
scoreboard players set #bridge bce_sys 99
scoreboard players set #state bce_sys 2
tellraw @a {"rawtext":[{"text":"§e[BCE] 초기화 완료. 월드 자동 건축을 시작합니다. (지켜보세요)"}]}
function build/start
