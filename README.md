# BEDROCK COMMAND ENGINE (BCE) 1.0 — 검은별의 성채 / The Blackstar Citadel

Minecraft **Bedrock** 전용, 명령어(mcfunction) 중심 액션 어드벤처 엔진 + 오리지널 데모 게임.
Java 데이터팩/NBT/모드/Script API는 사용하지 않습니다.

> ⚠️ **상태: 1.0 공식 완료를 선언하지 않습니다.** 모든 파일은 생성·정적검사·소형 시뮬레이터 검사를 통과했지만,
> **실제 Minecraft Bedrock에서 실행해 보지 못했습니다** (이 개발 환경에는 게임이 없음). 자세한 내용은
> [`PROJECT_STATUS.md`](PROJECT_STATUS.md), [`TEST_REPORT.md`](TEST_REPORT.md).

참고 자료 `커맨드 대소동.zip`은 작업 공간에 **없었으므로 분석하지 않았고**, 본 프로젝트는 명세와 베드락 공개 사양만으로 독립 구현했습니다.

## 개발 대상 베드락 버전
- 목표: Bedrock **1.20.80 이상** (manifest `min_engine_version [1,20,80]`), 최신 안정판 기준 문법.
- 이 값은 사용한 명령어(`camera`, `camerashake`, `inputpermission`, `damage`, `execute` 신문법, `titleraw`)의 도입 시점을 근거로 한 **추정**이며 실기기 검증 전입니다. → [`COMPATIBILITY.md`](COMPATIBILITY.md)

## 두 가지 모드
| | MODE A (기본) | MODE B (선택) |
|---|---|---|
| 필요 | Behavior Pack(함수) *또는* 커맨드 블록 | Behavior + Resource Pack |
| 보스 | 바닐라 위더 스켈레톤 + 스코어보드 체력 장부 | 커스텀 엔티티 `bce:citadel_guardian` (모델·애니메이션 12종) |
| 전환 | `/function admin/mode_a` | `/function admin/mode_b` |

게임 규칙·상태 구조는 두 모드가 동일합니다. 리소스팩이 없어도 MODE A는 동작하도록 설계했습니다.

## 빌드 / 실행 방법 (개발자)
```
./build.sh          # 생성기 → 팩 → 정적검사 → 시뮬레이터 → 성능 예산
```
결과물: `dist/BCE_Behavior.mcpack`, `BCE_Resources.mcpack`, `BCE_Enhanced.mcaddon`, `BCE_Command_Only.zip`.
(`BCE_1.0.mcworld`는 **의도적으로 만들지 않았습니다**: 실제 월드 세이브를 생성할 수 없어 가짜 파일이 되기 때문.)

## 게임 시작 (플레이어)
1. 새 월드(치트 켜짐, 실험 기능은 `COMPATIBILITY.md` 참고)에 `BCE_Enhanced.mcaddon`을 가져와 행동 팩(+리소스 팩) 적용.
2. 월드에 들어가 채팅창(또는 명령 블록)에서 **`/function bootstrap/install`** — 스코어보드·게임룰·**맵 자동 건축**(72단계, 틱당 1단계, 청크 로드 확인 후 진행)이 시작됩니다. 몇 분 걸립니다.
3. “건축 완료” 메시지 후 **신전 제단 앞 시작 패드**에 서면 오프닝 컷신이 자동 시작 (`/function game/start` 로도 시작).
4. 이후 튜토리얼 → 7개 퀘스트 → 보스 → 엔딩.

재실행해도 안전합니다(멱등). 전체/구역 재건축: `/function admin/rebuild_all`, `admin/rebuild_z0..z4`.

### 조작 (모바일 터치)
기본 공격(칼)은 베드락 원래 터치 조작입니다. 추가 스킬은 **핫바에서 아이템을 새로 선택할 때 1회 발동**합니다 (같은 아이템을 계속 들고 있어도 반복 발동하지 않음. 칼로 돌아갔다가 다시 선택).
| 아이템 | 스킬 |
|---|---|
| 블레이즈 막대 | 3연속 베기 (1·2·3타, 3타는 스태미나 20 + 경직) |
| 깃털 / 토끼 발 / 부싯돌 / 벽돌 | 전방 / 후방 / 좌 / 우 회피 (스태미나 25, 무적 0.5초) |
| 네더의 별 | 충격파 (스태미나 30, 퀘스트 4 보상으로 해금) |
| 사과 | 회복 |
| 종이 | (컷신 중에만 지급) 선택하면 컷신 건너뛰기 |

HUD는 액션바 한 줄: `ST(스태미나) 회피(쿨타임 틱) 현재임무`. **체력은 바닐라 하트**를 사용합니다(명령어로는 체력을 읽을 수 없음).

## 디버그/관리자 명령 (치트 필요, 일반 플레이어용 아님)
| 함수 | 용도 |
|---|---|
| `bootstrap/install` | 초기화+자동 건축 (멱등) |
| `bootstrap/recover` | ERROR 상태/꼬임 복구 |
| `bootstrap/uninstall` | 엔진 정지 |
| `admin/rebuild_all`, `admin/rebuild_z0`…`z4` | 전체/구역 재건축 |
| `admin/tp_z0`…`z4`, `admin/goto_start`, `admin/goto_cp1`…`cp5` | 이동 |
| `admin/set_quest_1`…`8` | 퀘스트 단계 설정 (실행자 기준) |
| `admin/heal`, `admin/stamina` | HP/스태미나 복구 |
| `admin/spawn_e1`…`e4` | 적 소환 (잿빛 망자/그림자 추적자/유적 감시자/성채 수호병) |
| `admin/spawn_boss`, `admin/end_boss` | 보스 즉시 시작/종료 |
| `admin/cutscene_opening|boss|death|ending` | 컷신 테스트 |
| `admin/mode_a`, `admin/mode_b` | 보스 모드 전환 |
| `admin/cleanup` | 임시 엔티티 정리 |
| `admin/reset_player`, `admin/reset_world_flags` | 테스트 데이터 초기화 |
| `debug/status` | 상태 출력 (`/execute as @s run function debug/status`) |
| 플레이어 공용 | `game/start`, `checkpoints/return`, `ui/shake_on|off`, `ui/quality_low|medium|high`, `cutscenes/force_end`(컷신에 갇힘) |

## 데모 게임 흐름
오프닝 컷신 → 이동(점프) 튜토리얼 → 제단의 검(퀘2) → 훈련장 적 처치(퀘3) → 잿빛 마을(퀘4) → 가라앉은 유적 레버 퍼즐 ON·OFF·ON(퀘5) → 붕괴된 성벽 3단 전투+중간보스(퀘6) → 봉인된 문 → 검은별의 수호자 3페이즈(퀘7) → 엔딩.

## 프로젝트 구조
```
generators/   layout.py(좌표 단일 소스), building_generator/, command_generator/, cutscene_generator/, animation_generator/, build_all.py, packs.py
src/data/     skills, enemies(+guardian_model), scenes(컷신 타임라인 JSON), buildings
src/behavior_pack  (생성됨) functions/ 276개, entities/, manifest.json
src/resource_pack  (생성됨) 모델·애니메이션·컨트롤러·텍스처(PNG)·파티클
src/pure_commands  (생성됨) 커맨드 블록용 평탄화 명령 목록
src/tests/    static/validate.py, integration/sim_test.py, performance/budget.py
dist/ reports/
```
수치(스태미나 비용, 피해, 쿨타임, 적 경고시간)는 `src/data/skills/skills.json`, `src/data/enemies/enemies.json` 에서 조정 후 `./build.sh`. 스태미나는 게임 중에도 `scoreboard players set #cost_dodge bce_sys 15` 처럼 실시간 조정 가능.

## 리소스팩 사용 여부
MODE A는 불필요. MODE B(커스텀 보스 모델/애니메이션)에만 필요. 고급 UI(HP바 등 HUD 개조)는 **터치 버튼을 가릴 위험 때문에 구현하지 않았습니다**.

## 실제 검증한 것 / 못한 것
- 검증됨(이 환경에서 실행): JSON 파싱, manifest/UUID, 함수 참조·순환·길이·fill 한도·알려진 블록/사운드/파티클 목록 검사, Java 전용 구문 부재, 리소스팩 상호 참조(본/애니메이션/텍스처), 패키지 구조, 컷신/보스 타임라인·초기화 멱등성·건축 시퀀서의 **시뮬레이터** 실행(마인크래프트 아님), 스폰 지점 안전성(생성기가 추적한 블록 기준).
- **미검증(실게임 필요)**: 팩 가져오기, 명령어 문법 수용 여부, 자동 건축 결과 외관, 청크 로딩 대기, 전투 판정·AI·회피·무적, 컷신 카메라 연출, 보스전, 퀘스트·체크포인트, 재접속, 모바일 화면 표시, 성능(FPS). → `TEST_REPORT.md`의 20개 체크리스트는 전부 NOT_RUN.
