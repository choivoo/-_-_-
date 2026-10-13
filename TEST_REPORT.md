# TEST_REPORT
**정적/시뮬레이터 통과 ≠ 실게임 통과.** 아래 표의 실게임 항목은 이 환경에 Minecraft가 없어 *한 번도 실행하지 못했습니다*.
재실행: `./build.sh` (결과는 `reports/*.json`).

## 1. 이 환경에서 실제로 실행한 검사 (결과)
| 검사 | 도구 | 결과 |
|---|---|---|
| JSON 21개 파싱, manifest 형식, UUID 중복 | `src/tests/static/validate.py` | 오류 0 |
| 함수 276개 / 명령 3,339줄: 선행 `/` 없음, 괄호 균형, 알려진 명령만 사용, Java 전용 구문 없음 | 〃 | 오류 0 |
| 함수 참조 존재·호출 순환 없음·함수당 ≤400줄·`fill` ≤32,768블록·스코어보드 선언 | 〃 | 오류 0 (경고 1: `build/progress` 미참조 — 의도된 보조 함수) |
| 블록/파티클/사운드 ID가 내장 목록에 있음 | 〃 | 블록 오류 0, 사운드·파티클 경고 0 (※ 목록은 내가 아는 공개 ID이며 게임 대조 전) |
| 리소스팩 교차참조(본↔애니메이션, 엔티티↔지오메트리/텍스처/렌더컨트롤러, BP↔RP 식별자), PNG 서명 | 〃 | 오류 0 |
| 패키지 압축 구조(.mcpack 루트 manifest, .mcaddon 두 폴더) | 〃 | 오류 0 |
| 스폰/체크포인트/웨이브 위치 안전성(발밑 단단·몸/머리 공기) | `build_all.py` | 실패 0 (생성기가 추적한 블록 기준) |
| 컷신 4종: 정확한 종료 틱, 카메라/입력 복구, 스킵 경로 | `sim_test.py`(스코어보드 모사) | 통과 |
| 보스: 페이즈 2→3→최후일격→사망 순서, 예고→타격 ≥12틱 | 〃 | 통과 (최소 12틱, 표본 79) |
| 설치 2회 실행 시 건축 1회, 건축 72단계 완주→MAIN_MENU | 〃 | 통과 |
| 입력 잠금은 컷신 시작에서만, 복구 경로 존재, 퀘스트 보상은 q→q+1 전이에만 | 〃 | 통과 |
| 정적 명령 평가량: idle 평균 54줄/틱(상한), AI 12줄/적/2틱 | `budget.py` | 예산 내 (FPS 아님) |

시뮬레이터 한계: 셀렉터·엔티티·공간 판정·실제 명령 문법은 모사하지 않음.

## 2. 게임 내 검증 20항목 (전부 미실행)
| # | 항목 | 상태 |
|---|---|---|
| 1 | 팩 가져오기 | NOT_RUN |
| 2 | 월드 생성 | NOT_RUN |
| 3 | 명령어 실행 | NOT_RUN |
| 4 | 초기화 | NOT_RUN |
| 5 | 자동 건축 | NOT_RUN |
| 6 | 건축 완료 | NOT_RUN |
| 7 | 플레이어 이동 | NOT_RUN |
| 8 | 공격 | NOT_RUN |
| 9 | 적 AI | NOT_RUN |
| 10 | 스태미나 | NOT_RUN |
| 11 | 회피 | NOT_RUN |
| 12 | 컷신 | NOT_RUN |
| 13 | 카메라 복원 | NOT_RUN |
| 14 | 보스 출현 | NOT_RUN |
| 15 | 보스 공격 | NOT_RUN |
| 16 | 보스 처치 | NOT_RUN |
| 17 | 퀘스트 완료 | NOT_RUN |
| 18 | 체크포인트 | NOT_RUN |
| 19 | 저장 후 재접속 | NOT_RUN |
| 20 | 모바일 화면 표시 | NOT_RUN |

테스트 절차 예: (4) `/function bootstrap/install` 후 `/function debug/status` 로 `#state=3`→`4` 확인. (9) `/function admin/spawn_e1` 후 접근 시 불꽃 파티클 경고 → 약 0.7초 뒤 피해, 회피(깃털)로 무적 확인. (13) 컷신 후 `/camera`가 풀려 있는지, 이동 가능한지. (14) `/function admin/set_quest_7` 후 성채 홀→아레나.

## 3. 알려진 위험(첫 실행 때 가장 먼저 확인)
1. 블록 상태 이름(`weirdo_direction`, `lever_direction`, `open_bit`, `pillar_axis`) — 틀리면 계단 방향/레버 퍼즐 불능.
2. `camera` / `inputpermission` 지원 버전.
3. 건축 프로브: 청크가 끝내 안 열리면 해당 구역 단계에서 멈춤 → 플레이어가 그 구역 근처로 이동, 또는 `admin/rebuild_zN`.
4. 보스 체력 장부(MODE A)는 **스킬 타격만** 반영합니다 (바닐라 터치 공격은 감지 불가). 칼로는 보스를 줄일 수 없음 → 튜토리얼에서 스킬 사용을 안내.
5. 무적: 리소스 효과 최소 지속 1초(저항 5) + 태그 0.5초 — 예고 있는 스크립트 피해만 정확히 0.5초.

## 4. 오류 복구 가이드
| 증상 | 원인 후보 | 파일 | 해결 | 재검증 |
|---|---|---|---|---|
| Unknown function | 행동 팩 미적용 | manifest | 월드 설정에서 팩 활성화 | `/function debug/status` |
| 건축이 안 끝남 | 청크 미로드 / setblock 실패 | `build/steps/sNNN` | 해당 구역으로 이동, `admin/rebuild_zN` | `debug/status`의 `건축 a/b` |
| 컷신 후 이동 불가 | 입력 권한 미복구 | `cutscenes/*/end` | `/function cutscenes/force_end` (core/safety가 20틱마다 자동 복구) | 이동 확인 |
| 스킬이 안 나감 | 핫바 엣지 감지 / q2 미완 | `player/input` | 칼로 돌아갔다가 다시 선택, `admin/set_quest_3` | actionbar |
| 보스 전투 꼬임 | 아레나 이탈 | `bosses/watch` | 5초 후 자동 리셋 또는 `admin/end_boss` | `#bstate=0` |
| 상태 이상(ERROR) | — | — | `/function bootstrap/recover` | `#state=7` |
