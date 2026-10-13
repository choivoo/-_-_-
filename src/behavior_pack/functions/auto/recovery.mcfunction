# ERROR state: the world is never re-initialised or rebuilt automatically (that could destroy a built world)
scoreboard players operation _m20b bce_sys = _tick bce_sys
scoreboard players operation _m20b bce_sys %= _c200 bce_sys
execute if score _m20b bce_sys matches 0 run titleraw @a actionbar {"rawtext":[{"text":"§c세계 복원 오류 — 월드를 다시 열어 주세요"}]}
