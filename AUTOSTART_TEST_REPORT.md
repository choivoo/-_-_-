# BCE 1.0 One-Click — AutoStart Test Report

> 생성: `tools/report.py` (reports/*.json 기준). **iPad 실기기 테스트(TEST 10)는 NOT_RUN** 입니다.
> ‘실제 서버 E2E’ = 실제 Bedrock Dedicated Server 1.21.80.3 + 헤드리스 플레이어(명령 입력 없음, 콘솔은 관측/보행 대용 `/tp`에만 사용).

## 엔진 측 검증
| 항목 | 결과 |
|---|---|
| BDS 1.21.80.3가 행동 팩을 로드, 함수 파싱 오류 | 로드됨 (문제 0건) |
| 정적 검사 | 오류 0 / 경고 0 |
| 리소스 팩 | BDS는 리소스 팩을 파싱하지 않음 → 서버 측 검증 불가 (클라이언트가 최초 로드 시 검증) |

## 서버 E2E (애드온 → 새 월드 → 자동 시작)
| 테스트 | 결과 | 비고 |
|---|---|---|
| TEST 00 새 월드에는 BCE 상태 없음 | PASS | 0 |
| TEST 01 최초 입장 → 자동 초기화(1회) | PASS | [(1, 0, None), (6, 2, 30), (10, 2, 91), (15, 2, 152), (19, 5, 180)] |
| TEST 02 명령어 없이 자동 건축 | PASS | [(10, 2, 91), (15, 2, 152), (19, 5, 180)] |
| TEST 03 건축 완료 검증 → 시작 위치 | PASS | ([1, 1, 1, 1, 1], 5) |
| 로딩 UI(타이틀/자막/액션바 %) | PASS | ['', '{"rawtext":[{"text":"§f세계를 복원하고 있습니다…"}]} ', '{"rawtext":[{"text":"§e검은별의 성채"}]} '] |
| TEST 04 오프닝 컷신 자동 실행 | PASS | (11, [(15.1, 4), (15.1, 6), (45.1, 2), (45.1, 0)]) |
| T04b the opening really plays for its full length (>= 25 s between lock and release; 30 s scripted) | PASS | (15.1, 45.1) |
| TEST 05 튜토리얼/첫 퀘스트 자동 활성화 | PASS | (1, ['{"rawtext":[{"text":"§e회피 "},{"text":"0"},{"text":" §b돌진 "},{"text":"0"},{"text":" §d참격 "},{"text":"0"}, |
| 컷신 후 카메라·입력 복구 | PASS | ([4, 6, 2, 0], 1) |
| 신전을 벗어나면 퀘스트 2(검) 활성화 (/tp로 보행 대체) | PASS | 2 |
| TEST 06 재접속: 건축 중복 없음 | PASS | ((180, 5, 2, 2), (180, 5, 2, 2), 0) |
| TEST 07 컷신 중 재접속 | PASS | (True, 1, True, 5, [4, 6, 2, 0]) |
| TEST 08 건축 중 월드 종료 → 재개 | PASS | (66, 119, [1, 1, 1, 1, 1]) |
| TEST 09 명령어 미사용 | PASS | client.js has no chat/command path |

## 서버 E2E (배포 .mcworld)
| 테스트 | 결과 | 비고 |
|---|---|---|
| S01 shipped world loads on BDS with persisted state (no build needed) | PASS | (4, 180, [1, 1, 1, 1, 1]) |
| S02 first join: no build runs, straight to the opening | PASS | (1, 180) |
| S03 opening cutscene plays automatically | PASS | 4 |
| S04 opening ends, quest 1 active, input free | PASS | ([6, 2, 0], 1) |
| S05 re-join the shipped world: nothing rebuilt, no second opening | PASS | ((180, 5, 1, 2), (180, 5, 1, 2)) |

## TEST 10 — iPad 호환성
**NOT_RUN** — 실제 iPad에서 .mcworld 가져오기/실행을 하지 못했습니다. 월드는 BDS 1.21.80.3(Linux)이 만든 정식 세이브입니다.
