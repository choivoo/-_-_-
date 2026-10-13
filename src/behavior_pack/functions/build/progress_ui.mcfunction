# title/subtitle/actionbar progress every 10 ticks (no chat spam); _bshow=1 shows the big title
scoreboard players operation _bpctb bce_sys = _bstep bce_sys
scoreboard players operation _bpctb bce_sys -= _bstart bce_sys
scoreboard players operation _bpctb bce_sys *= _c100 bce_sys
scoreboard players operation _bden bce_sys = _bstop bce_sys
scoreboard players operation _bden bce_sys -= _bstart bce_sys
execute if score _bden bce_sys matches 1.. run scoreboard players operation _bpctb bce_sys /= _bden bce_sys
execute if score _bshow bce_sys matches 1 run titleraw @a times 0 25 0
execute if score _bshow bce_sys matches 1 run titleraw @a subtitle {"rawtext":[{"text":"§f세계를 복원하고 있습니다… "},{"score":{"name":"_bpctb","objective":"bce_sys"}},{"text":"%"}]}
execute if score _bshow bce_sys matches 1 run titleraw @a title {"rawtext":[{"text":"§e검은별의 성채"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 0 if score _bstage bce_sys matches 0 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 깨어남의 신전 · 지형·기초"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 0 if score _bstage bce_sys matches 1 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 깨어남의 신전 · 구조물 외형"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 0 if score _bstage bce_sys matches 2 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 깨어남의 신전 · 실내 공간"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 0 if score _bstage bce_sys matches 3 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 깨어남의 신전 · 세부 장식"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 0 if score _bstage bce_sys matches 4 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 깨어남의 신전 · 조명"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 0 if score _bstage bce_sys matches 5 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 깨어남의 신전 · 기능 블록"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 0 if score _bstage bce_sys matches 6 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 깨어남의 신전 · 엔티티 배치"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 0 if score _bstage bce_sys matches 7 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 깨어남의 신전 · 검증"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 1 if score _bstage bce_sys matches 0 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 잿빛 마을 · 지형·기초"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 1 if score _bstage bce_sys matches 1 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 잿빛 마을 · 구조물 외형"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 1 if score _bstage bce_sys matches 2 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 잿빛 마을 · 실내 공간"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 1 if score _bstage bce_sys matches 3 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 잿빛 마을 · 세부 장식"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 1 if score _bstage bce_sys matches 4 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 잿빛 마을 · 조명"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 1 if score _bstage bce_sys matches 5 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 잿빛 마을 · 기능 블록"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 1 if score _bstage bce_sys matches 6 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 잿빛 마을 · 엔티티 배치"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 1 if score _bstage bce_sys matches 7 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 잿빛 마을 · 검증"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 2 if score _bstage bce_sys matches 0 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 가라앉은 유적 · 지형·기초"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 2 if score _bstage bce_sys matches 1 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 가라앉은 유적 · 구조물 외형"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 2 if score _bstage bce_sys matches 2 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 가라앉은 유적 · 실내 공간"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 2 if score _bstage bce_sys matches 3 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 가라앉은 유적 · 세부 장식"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 2 if score _bstage bce_sys matches 4 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 가라앉은 유적 · 조명"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 2 if score _bstage bce_sys matches 5 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 가라앉은 유적 · 기능 블록"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 2 if score _bstage bce_sys matches 6 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 가라앉은 유적 · 엔티티 배치"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 2 if score _bstage bce_sys matches 7 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 가라앉은 유적 · 검증"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 3 if score _bstage bce_sys matches 0 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 붕괴된 성벽 · 지형·기초"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 3 if score _bstage bce_sys matches 1 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 붕괴된 성벽 · 구조물 외형"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 3 if score _bstage bce_sys matches 2 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 붕괴된 성벽 · 실내 공간"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 3 if score _bstage bce_sys matches 3 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 붕괴된 성벽 · 세부 장식"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 3 if score _bstage bce_sys matches 4 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 붕괴된 성벽 · 조명"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 3 if score _bstage bce_sys matches 5 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 붕괴된 성벽 · 기능 블록"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 3 if score _bstage bce_sys matches 6 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 붕괴된 성벽 · 엔티티 배치"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 3 if score _bstage bce_sys matches 7 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 붕괴된 성벽 · 검증"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 4 if score _bstage bce_sys matches 0 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 검은별의 성채 · 지형·기초"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 4 if score _bstage bce_sys matches 1 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 검은별의 성채 · 구조물 외형"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 4 if score _bstage bce_sys matches 2 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 검은별의 성채 · 실내 공간"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 4 if score _bstage bce_sys matches 3 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 검은별의 성채 · 세부 장식"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 4 if score _bstage bce_sys matches 4 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 검은별의 성채 · 조명"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 4 if score _bstage bce_sys matches 5 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 검은별의 성채 · 기능 블록"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 4 if score _bstage bce_sys matches 6 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 검은별의 성채 · 엔티티 배치"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 4 if score _bstage bce_sys matches 7 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 검은별의 성채 · 검증"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 5 if score _bstage bce_sys matches 0 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 별의 관측소 · 지형·기초"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 5 if score _bstage bce_sys matches 1 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 별의 관측소 · 구조물 외형"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 5 if score _bstage bce_sys matches 2 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 별의 관측소 · 실내 공간"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 5 if score _bstage bce_sys matches 3 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 별의 관측소 · 세부 장식"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 5 if score _bstage bce_sys matches 4 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 별의 관측소 · 조명"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 5 if score _bstage bce_sys matches 5 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 별의 관측소 · 기능 블록"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 5 if score _bstage bce_sys matches 6 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 별의 관측소 · 엔티티 배치"}]}
execute unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7 if score _bzone bce_sys matches 5 if score _bstage bce_sys matches 7 run titleraw @a actionbar {"rawtext":[{"text":"§7현재 작업: 별의 관측소 · 검증"}]}
execute if score _bsm bce_sys matches 2 run titleraw @a actionbar {"rawtext":[{"text":"§6청크 로딩 대기 중… 잠시만 기다려 주세요"}]}
execute if score _bsm bce_sys matches 6 run titleraw @a actionbar {"rawtext":[{"text":"§7건축 일시정지 (관리자)"}]}
