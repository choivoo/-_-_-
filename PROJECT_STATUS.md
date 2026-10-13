# PROJECT_STATUS — BCE 1.0 RC (RELEASE_CANDIDATE, 1.0 FINAL VERIFIED 미선언)
사유: GATE G(실기기) 미실행. 게이트 상세는 `GATES.md`.
상태 표기: COMPLETE(구현+검증) / IMPLEMENTED_UNTESTED(구현, 게임 미검증) / PARTIAL / BLOCKED / NOT_STARTED. “COMPLETE”는 이 환경에서 실제로 검증 가능한 도구류에만 사용합니다.

## 도구·파이프라인
| 항목 | 상태 | 근거 |
|---|---|---|
| 생성기(건축/명령/컷신/애니메이션/구조물/패키징), 빌드 파이프라인(13단계, 실패 시 중단) | COMPLETE | `./build.sh` 통과 |
| 정적 검사기, 시뮬레이터, 월드 QA, 성능 예산 | COMPLETE | 실행·통과 (모델/모사기 기준) |
| `.mcstructure` 작성기·검증기(NBT LE) | COMPLETE(파일 형식) / 게임 로드 미검증 | Bedrock Wiki 필드 대조, 왕복 일치 |
| 패키지 5종 | COMPLETE | 내부 구조 검사 |
| `.mcworld` | BLOCKED | 월드 세이브 생성 불가 |
## 엔진
| 중앙 스케줄러/상태 머신(0–14)/멱등 설치/복구 | IMPLEMENTED_UNTESTED | GAME_OVER(11)는 전용 상태 없음(사망 감지 불가) |
| 건축 시퀀서 2.0 (9상태, 청크 프로브, 검증, 일시정지/재개/복구, 진행도 UI) | IMPLEMENTED_UNTESTED | 시뮬레이터 시나리오 통과 |
## 월드
| 5개 구역 건축(LOD2–4 등록 22개, 랜드마크 7) | IMPLEMENTED_UNTESTED | 모델 QA 통과, 외관 미확인 |
| 노이즈 지형(언덕/고사목/연못) | IMPLEMENTED_UNTESTED | 구역 가장자리(|z|≥30) 한정 |
| 내부 자동 생성 | PARTIAL | 방/층/계단/가구(작업대·화로·책장·통·상자·연구대)는 있으나 침대·카펫·벽난로는 없음(블록 상태 의존) |
| 순수 커맨드 건축 TYPE A / 구조물 TYPE B | IMPLEMENTED_UNTESTED | 32개 단계 파일 / 26개 구조물 |
## 게임플레이
| 전투(콤보·회피·스태미나·스킬 5종) | IMPLEMENTED_UNTESTED | 입력은 핫바 선택 엣지. 터치 공격 자체는 훅 불가 |
| 적 AI 4종 + PATROL 포함 상태 머신 | IMPLEMENTED_UNTESTED | DEAD는 엔티티 소멸 |
| 보스 3페이즈 | IMPLEMENTED_UNTESTED | MODE A 체력은 스코어 장부(스킬 타격만 반영) — 제한 사항 명시 |
| 퀘스트 7, 체크포인트 5, 시작 컷신 3, 목적지 안내 | IMPLEMENTED_UNTESTED | |
## 연출/UI/MODE B
| 컷신 7종(JSON→함수, 이벤트 15종) | IMPLEMENTED_UNTESTED | |
| 한국어 UI(액션바 2페이지, 제목, 자막) | IMPLEMENTED_UNTESTED | 사망 안내 NOT_STARTED(불가) |
| 보스 모델/애니메이션 12종/컨트롤러/텍스처/서버 엔티티/파티클 | IMPLEMENTED_UNTESTED | 렌더링 미확인. 적 4종 커스텀 모델 NOT_STARTED |
| 고급 UI(HP바 등) | NOT_STARTED | 터치 UI 훼손 위험 |
| 멀티플레이 | PARTIAL | 개인 상태 분리, 월드 플래그·보스는 공유 |
| 실기기 20항목 | NOT_STARTED | |

## One-Click Play Edition status
Implemented + verified on real BDS 1.21.80.3 (headless client, `tools/e2e.py all` 14/14, `tools/e2e.py S` 5/5 on the shipped .mcworld).
NOT RUN: real iPad / Bedrock client import and play (TEST 10); `.mctemplate` import. Gate G remains NOT RUN.
