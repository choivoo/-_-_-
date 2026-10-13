# RECOVERING: restart at the beginning of the failed zone (completed zones are not repeated)
scoreboard players set _bsm bce_sys 8
scoreboard players set _berr bce_sys 0
scoreboard players set _bwait bce_sys 0
scoreboard players operation _bstep bce_sys = _bzstart bce_sys
scoreboard players set _bsm bce_sys 1
scoreboard players set _state bce_sys 3
tellraw @a {"rawtext":[{"text":"§e[BCE] 복원 복구: 실패한 구역을 처음부터 다시 건축합니다."}]}
