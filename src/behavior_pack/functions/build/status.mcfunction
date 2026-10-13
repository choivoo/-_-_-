tellraw @s {"rawtext":[{"text":"§e[건축] 단계 "},{"score":{"name":"#bstep","objective":"bce_sys"}},{"text":"/"},{"score":{"name":"#bstop","objective":"bce_sys"}},{"text":" 구역 "},{"score":{"name":"#bzone","objective":"bce_sys"}},{"text":" 오류코드 "},{"score":{"name":"#berr","objective":"bce_sys"}}]}
execute if score #bsm bce_sys matches 0 run tellraw @s {"rawtext":[{"text":"§e[건축] 상태: READY"}]}
execute if score #bsm bce_sys matches 1 run tellraw @s {"rawtext":[{"text":"§e[건축] 상태: PREPARING"}]}
execute if score #bsm bce_sys matches 2 run tellraw @s {"rawtext":[{"text":"§e[건축] 상태: WAITING_FOR_CHUNK"}]}
execute if score #bsm bce_sys matches 3 run tellraw @s {"rawtext":[{"text":"§e[건축] 상태: BUILDING"}]}
execute if score #bsm bce_sys matches 4 run tellraw @s {"rawtext":[{"text":"§e[건축] 상태: VERIFYING"}]}
execute if score #bsm bce_sys matches 5 run tellraw @s {"rawtext":[{"text":"§e[건축] 상태: COMPLETED"}]}
execute if score #bsm bce_sys matches 6 run tellraw @s {"rawtext":[{"text":"§e[건축] 상태: PAUSED"}]}
execute if score #bsm bce_sys matches 7 run tellraw @s {"rawtext":[{"text":"§e[건축] 상태: FAILED"}]}
execute if score #bsm bce_sys matches 8 run tellraw @s {"rawtext":[{"text":"§e[건축] 상태: RECOVERING"}]}
