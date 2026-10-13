# BEDROCK COMMAND ENGINE (BCE) 1.0 RC — 검은별의 성채 / The Blackstar Citadel

Minecraft **Bedrock** 전용, 명령어(mcfunction) 중심 액션 어드벤처 엔진 + 오리지널 데모 게임.
Java 데이터팩/NBT/모드/Script API는 사용하지 않습니다.

> ⚠️ **상태: RELEASE_CANDIDATE (FINAL VERIFIED 아님).** 생성·정적검사·시뮬레이터·월드 QA(복셀 모델)는 모두 통과했지만,
> **실제 Minecraft Bedrock(Android/iOS)에서 실행하지 못했습니다** (GATE G 미실행). 자세한 내용은
> [`PROJECT_STATUS.md`](PROJECT_STATUS.md), [`TEST_REPORT.md`](TEST_REPORT.md), 게이트 판정은 [`GATES.md`](GATES.md).

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
./build.sh     # 13단계. 어느 단계든 실패하면 중단(set -e). 성공해도 "실기기 테스트 통과"가 아닙니다.
```
배포물: `dist/BCE_1.0_FINAL/` (`BCE_Behavior_1.0.mcpack`, `BCE_Resources_1.0.mcpack`, `BCE_Enhanced_1.0.mcaddon`, `BCE_Command_Only_1.0.zip`, `BCE_1.0_Source.zip`, 설치 가이드, 테스트 보고서, `RELEASE_STATUS.txt`).
이전 RC1 산출물은 `dist/BCE_1.0_RC1/` 에 보존했습니다. (`.mcworld`는 의도적으로 없음: 실제 월드 세이브를 만들 수 없음.)

## 게임 시작 (플레이어)
1. 새 월드(치트 켜짐)에 `BCE_Enhanced_1.0.mcaddon` 적용 (행동 팩 + 리소스 팩). → [`INSTALL_GUIDE_1.0.md`](INSTALL_GUIDE_1.0.md)
2. 채팅에서 **`/function bootstrap/install`** (멱등, 호출자에게 `bce_admin` 태그 부여) → 맵 **자동 건축**(160단계, 틱당 1단계, 청크 로드 확인 후 진행, 액션바 진행도, 일시정지/복구 지원).
3. “건축 완료” 후 신전 제단 앞 시작 패드에 서면 오프닝 컷신 (`/function game/start` 도 가능).
4. 튜토리얼 → 퀘스트 7개 → 보스 → 엔딩.

### 건축 방식
| 방식 | 사용 | 진입점 |
|---|---|---|
| TYPE A (명령어) | `fill`/`setblock` 4,703줄, 단계별 자동 실행 | `bootstrap/install` / `admin/rebuild_all` / `admin/rebuild_z0..z4` |
| TYPE B (구조물) | `.mcstructure` 26개 타일(`structures/bce/`) + `structure load` | `admin/build_structures` (실게임 미검증) |
| 수동 | `src/pure_commands/construction/` 32개 단계 파일 + INDEX.md | 채팅/커맨드 블록 (`COMMAND_ONLY_GUIDE.md`) |

건축 시퀀서 상태(`#bsm`): READY, PREPARING, WAITING_FOR_CHUNK, BUILDING, VERIFYING, COMPLETED, PAUSED, FAILED, RECOVERING. 청크 대기 2분 초과 → FAILED(무한 대기 방지), 구역 끝마다 샘플 블록 검증.

### 조작 (모바일 터치)
기본 공격(칼)은 베드락 원래 터치 조작입니다. 추가 스킬은 **핫바에서 아이템을 새로 선택할 때 1회 발동**합니다 (같은 아이템을 계속 들고 있어도 반복 발동하지 않음. 칼로 돌아갔다가 다시 선택).
| 아이템 | 스킬 |
|---|---|
| 블레이즈 막대 | 3연속 베기 (1·2·3타, 3타는 스태미나 20 + 경직) |
| 깃털 / 토끼 발 / 부싯돌 / 벽돌 | 전방 / 후방 / 좌 / 우 회피 (스태미나 25, 무적 0.5초) |
| 네더의 별 | 충격파 (스태미나 30, 퀘스트 4 보상으로 해금) |
| 사과 | 회복 |
| 엔더의 눈 | **별빛 돌진** (스태미나 15, 안전한 전방 이동 + 타격) |
| 자수정 조각 | **검은별 참격** (스태미나 25, 전방 직선 10칸, 중복 피해 방지) |
| 불사의 토템 | **별의 심판** 궁극기 (스태미나 50, 쿨 30초, 준비→연출→피해→종료 4단계, 준비 중 무적) |
| 종이 | (컷신 중에만 지급) 선택하면 컷신 건너뛰기 |

HUD(액션바): 2초 “스태미나/회피/현재 임무” ↔ 2초 “회피·돌진·참격·심판 쿨타임(초)” 교대. **체력은 바닐라 하트**(명령어로 체력을 읽을 수 없음). 사망 안내는 **구현 불가**(사망 이벤트를 명령어로 감지할 수 없어 체크포인트 리스폰만 동작).

## 디버그/관리자 명령
`admin/*` 의 모든 줄은 `execute if entity @s[tag=bce_admin] run …` 로 보호됩니다(태그는 `bootstrap/install` 또는 `/tag @s add bce_admin` 으로 — 둘 다 OP/치트 필요). 진짜 보안 경계는 OP 권한입니다.
| 함수 | 용도 |
|---|---|
| `bootstrap/install` | 설치+자동 건축 (멱등) · `bootstrap/recover` 복구 · `bootstrap/uninstall` 정지 |
| `admin/rebuild_all`, `admin/rebuild_z0`…`z4` | 전체/구역 재건축 (건축물 재생성) |
| `admin/build_structures` | 구조물(TYPE B) 건축 |
| `admin/build_pause`, `admin/build_resume`, `admin/build_status`, `admin/build_recover` | 건축 중단/재개/상태/복구 |
| `admin/tp_z0`…`z4`, `admin/goto_start`, `admin/goto_cp1`…`cp5` | 이동 |
| `admin/set_quest_1`…`8` | 퀘스트 이동 |
| `admin/heal`, `admin/stamina`, `admin/combat_reset` | HP/스태미나 복구, 전투 상태 초기화 |
| `admin/spawn_e1`…`e4`, `admin/spawn_boss`, `admin/end_boss`, `admin/cleanup` | 적/보스 생성·종료·임시 엔티티 제거 |
| `admin/cutscene_opening|boss|death|ending|q4|q6|q7` | 컷신 시작 |
| `admin/mode_a`, `admin/mode_b` | 보스 모드 |
| `admin/reset_player`, `admin/reset_world_flags` | 테스트 데이터 초기화 |
| `debug/status` | 상태 출력 |
| 플레이어 공용 | `game/start`, `checkpoints/return`, `ui/shake_on|off`, `ui/quality_low|medium|high`, `cutscenes/force_end` |

## 데모 게임 흐름
오프닝 컷신 → 이동(점프) 튜토리얼 → 제단의 검(퀘2) → 훈련장 적 처치(퀘3) → [시작 컷신] 잿빛 마을(퀘4) → 가라앉은 유적 레버 퍼즐 ON·OFF·ON(퀘5, 지상 우회 불가) → [시작 컷신] 붕괴된 성벽 3단 전투+중간보스(퀘6) → [시작 컷신] 봉인된 문 → 검은별의 수호자 3페이즈(퀘7) → 엔딩. 각 퀘스트 완료 시 목적지 안내문과 빛기둥(끝 막대 기둥)이 표시됩니다.

## 건축 규모 (이 저장소의 실제 산출물)
- 5개 구역, 등록 건축물/랜드마크 22개 (LOD2 7 · LOD3 9 · LOD4 6), 랜드마크: 중앙 제단/원형 문양, 마을 시계탑·원형 분수대, 거대한 지하 문, 부서진 대형 성문, 성채 중앙 첨탑(≈Y+90), 붕괴하는 아레나.
- 건축 명령 4,703줄 / 160단계(+구조물 27단계) / 근사 블록 224만 / `.mcstructure` 26개(10.4 MB, 압축 후 팩 약 0.24 MB).
- 노이즈(Perlin+FBM+침식) 지형 언덕·고사목·연못, 원형 알고리즘(탑·분수·돔·첨탑), 박공/사방/급경사 지붕, 아치, 3층 건물.
- **월드 QA(복셀 모델)**: 스폰 안전, 게이트 순차 개방에 따른 도달성(우회 불가), 모든 등록 건물 입구·내부 도달성과 머리 위 여유 3칸 — 94개 점검 통과. *이 검사는 생성기가 만든 모델 기준이며 게임 안에서 확인한 것이 아닙니다.*

## 프로젝트 구조
```
generators/   layout.py(좌표 단일 소스), building_generator/, command_generator/, cutscene_generator/, animation_generator/, build_all.py, packs.py
src/data/     skills, enemies(+guardian_model), scenes(컷신 타임라인 JSON), buildings
src/behavior_pack  (생성됨) functions/ 447개, entities/, structures/bce/*.mcstructure(26), manifest.json
src/resource_pack  (생성됨) 모델·애니메이션·컨트롤러·텍스처(PNG)·파티클
src/pure_commands  (생성됨) 커맨드 블록용 평탄화 명령 목록
src/tests/    static/validate.py, integration/sim_test.py, performance/budget.py
dist/ reports/
```
수치(스태미나 비용, 피해, 쿨타임, 적 경고시간)는 `src/data/skills/skills.json`, `src/data/enemies/enemies.json` 에서 조정 후 `./build.sh`. 스태미나는 게임 중에도 `scoreboard players set #cost_dodge bce_sys 15` 처럼 실시간 조정 가능.

## 리소스팩 사용 여부
MODE A는 불필요. MODE B(커스텀 보스 모델/애니메이션)에만 필요. 고급 UI(HP바 등 HUD 개조)는 **터치 버튼을 가릴 위험 때문에 구현하지 않았습니다**.

## 실제 검증한 것 / 못한 것
- **검증됨(이 환경)**: JSON/manifest/UUID, 함수 참조·순환·길이·fill 한도·블록/사운드/파티클/명령어 목록, Java 전용 구문 부재, 관리자 함수 보호, 리소스팩 교차참조, `.mcstructure` 구조(NBT 파싱·크기·팔레트·인덱스·왕복 비교), 패키지 구조, **시뮬레이터** 시나리오(초기화/재초기화, 건축 시작·중단·재개·재시작 지속·청크 타임아웃·복구·검증 실패, 콤보/쿨타임/회피/스킬/심판, 적 AI 예고→타격, 보스 페이즈·사망·이탈 리셋, 퀘스트 보상 1회, 체크포인트, 컷신 종료·스킵·복구, 재접속 진행 유지), 월드 QA.
- **공식 문서와 대조한 것**: `/camera`(set/ease/pos/rot/facing/clear/fade) 구문 — Microsoft Learn; `.mcstructure` 필드 — Bedrock Wiki; 엔티티 이벤트 `queue_command` — bedrock.dev 문서.
- **미검증(실게임 필요)**: 팩 가져오기, 나머지 명령어 문법 수용, 건축 외관·청크 대기 동작, 구조물 로드, 전투 판정·AI·회피·무적, 컷신 연출, 보스전, 퀘스트·체크포인트, 저장/재접속, 모바일 화면, 성능(FPS). 사망 시나리오는 시뮬레이터로도 불가.
