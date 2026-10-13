# RECOVERING: restart at the beginning of the failed zone (completed zones are not repeated)
scoreboard players set #bsm bce_sys 8
scoreboard players set #berr bce_sys 0
scoreboard players set #bwait bce_sys 0
scoreboard players operation #bstep bce_sys = #bzstart bce_sys
scoreboard players set #bsm bce_sys 1
scoreboard players set #state bce_sys 3
tellraw @a {"rawtext":[{"text":"§e[BCE] 건축 복구: 실패한 구역을 처음부터 다시 건축합니다."}]}
