# PROJECT_STATUS — 1.0 공식 완료 **미선언**
사유: 핵심 게임플레이 항목이 실게임 미검증(IMPLEMENTED_UNTESTED)이며, 일부 요구 산출물이 미구현입니다.

상태 표기: COMPLETE(구현+검증) / IMPLEMENTED_UNTESTED / PARTIAL / BLOCKED / NOT_STARTED

## 엔진
| 항목 | 상태 | 근거 |
|---|---|---|
| 중앙 명령어 시스템 | IMPLEMENTED_UNTESTED | `core/tick → core/run`, 5/10/20틱 슬롯. 시뮬레이터로 설치·건축 시퀀서 통과 |
| 초기화(멱등) | IMPLEMENTED_UNTESTED | `bootstrap/install`; 시뮬레이터: 2회 실행해도 건축 1회 |
| 상태 관리 0–14 | PARTIAL | 0–10,12,13(uninstall),14(recover 진입)는 사용. 11 GAME_OVER는 사망 시 체크포인트 리스폰(바닐라)으로 대체—전용 상태 없음 |
| 오류 복구 | IMPLEMENTED_UNTESTED | `bootstrap/recover`, `cutscenes/force_end`, `core/safety` |
## 월드
| 신전/마을/유적/성벽/성채+아레나 건축 | IMPLEMENTED_UNTESTED | 명령어 생성·fill 한도·알려진 블록명 검사 통과. **외관은 눈으로 확인하지 못함** |
| 자동 건축 시퀀서 | IMPLEMENTED_UNTESTED | 청크 프로브, 틱 영역 1개씩 사용/해제 |
| `.mcstructure` | NOT_STARTED | 유효한 NBT 구조물 생성기를 만들지 않음. 모든 건축은 fill/setblock |
| `.mcworld` | BLOCKED | 실제 월드 세이브 생성 불가 → 파일을 만들지 않음 |
## 게임플레이
| 이동/튜토리얼 | IMPLEMENTED_UNTESTED | 점프 허들, 오프닝 후 q1 |
| 전투(콤보·회피·스태미나·무적) | IMPLEMENTED_UNTESTED | 입력은 핫바 선택 엣지 감지. **바닐라 터치 공격 자체에는 훅이 없음**(감지 불가) |
| 적 AI 4종 | PARTIAL | 바닐라 몹 + 명령어 상태 머신, 약화 255로 바닐라 근접피해 제거 후 예고→피해. 유적 감시자(원거리)는 위치 이동만 스크립트. 커스텀 모델 없음 |
| 퀘스트 1–7, 체크포인트 5 | IMPLEMENTED_UNTESTED | 월드 플래그(웨이브/퍼즐)는 서버 공유 |
| 보스 3페이즈, 예고 ≥12틱 | IMPLEMENTED_UNTESTED | 시뮬레이터: 페이즈 순서·사망·예고 간격 확인 |
| 엔딩 도달 | IMPLEMENTED_UNTESTED | 시뮬레이터로 컷신 체인만 확인 |
## 연출
| 오프닝(5장면)/보스 등장/처치/엔딩 | IMPLEMENTED_UNTESTED | 시뮬레이터: 모든 컷신이 정확히 종료 틱에 끝나고 카메라·입력 복구, 스킵 경로 복구 확인 |
| 쓰러진 주인공 포즈 | PARTIAL | 포즈 변경 명령 미검증 → 카메라 구도로 대체 |
| 파티클/사운드/흔들림(끄기 가능) | IMPLEMENTED_UNTESTED | ID는 공개 목록 기준(검증기 whitelist); 일부는 경고 대상 |
## MODE B
| 지오메트리·애니메이션 12종·컨트롤러·텍스처·엔티티 정의 | IMPLEMENTED_UNTESTED | 본/참조/텍스처 교차 검증 통과, **렌더링 미확인** |
| 커스텀 파티클 | IMPLEMENTED_UNTESTED | 파일만 있고 함수에서 호출하지 않음 |
| 커스텀 사운드/고급 UI | NOT_STARTED | 터치 UI 훼손 위험, 저작권 있는 음원 없음 |
## 기타
| 퀘스트 UI(HP는 하트), 품질 LOW/MED/HIGH | IMPLEMENTED_UNTESTED | 파티클 수만 변경, 규칙 동일 |
| 멀티플레이 | PARTIAL | 스태미나/쿨타임/퀘스트/카메라/컷신은 플레이어별. 웨이브·퍼즐·보스는 공유(보스 공동 체력, 처치 시 퀘7 보유자 전원 진행) |
| 순수 커맨드 패키지 | PARTIAL | 전투/AI/퀘스트/보스/컷신 루프는 평탄화 제공. **건축은 포함하지 않음**(→ BP로 한 번 건축 후 팩 제거 가능) |
| 원본 ZIP 분석 | NOT_STARTED | 파일이 제공되지 않음 |
| 실기기 테스트 20항목 | NOT_STARTED | TEST_REPORT |
