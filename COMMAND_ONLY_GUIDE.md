# 순수 커맨드 모드 (팩 없이 커맨드 블록만)
**제한**: 베드락은 커맨드 블록 명령을 자동으로 넣는 방법이 없습니다(자바 NBT 불가). 따라서 모든 명령을 **직접 입력**해야 합니다.
**건축(TYPE A)**: `construction/` 폴더에 구역·단계별 32개 파일(총 4,799줄, `INDEX.md`에 명령 수/블록 수/좌표)이 있습니다. 파일 순서대로, 각 구역 시작 전에 `/tickingarea add circle <cx> 100 0 4 bce_zN` 로 구역을 로드한 뒤 채팅에 붙여넣거나 커맨드 블록에 입력합니다(전부 수동 입력은 현실적으로 매우 번거롭습니다). 같은 파일을 다시 실행해도 결과는 같습니다(멱등, entity 단계 제외). **TYPE B(구조물)** 는 행동 팩의 `.mcstructure` 파일이 필요하므로 순수 명령어만으로 설치되지 않습니다. 가장 쉬운 방법: ① 행동 팩으로 `bootstrap/install` 건축 → ② 완료 후 팩 제거, 아래 커맨드 블록으로 플레이.
커스텀 모델/텍스처가 필요한 MODE B 요소(커스텀 보스)는 순수 모드에서 사용할 수 없고, 보스는 바닐라 위더 스켈레톤입니다.

## 순서
1. `src/pure_commands/bootstrap/01_install.txt` 의 명령을 **채팅에서 순서대로 실행** (스코어보드, 게임룰, 상수). 이후 `/scoreboard players set _state bce_sys 7`, `_built 1`, `_started 0`, `_yard 0`, `_wall 0`, `_puzzle 0`, `_door 0`, `_bdead 0`, `_bridge 99`.
2. 위치 하나에 **반복(Repeating) 커맨드 블록**(항상 활성, 레드스톤 불필요)을 놓고 `command_blocks/A_essential_loop.txt` 의 1번 명령 입력. 이어서 **체인(Chain) 커맨드 블록**(항상 활성)을 뒤쪽 방향으로 이어 붙이며 2번부터 순서대로 입력. 파일마다 같은 방법으로 별도 반복 블록 하나씩:
   `combat/B_enemy_ai.txt`, `gameplay/C_quests_checkpoints_world.txt`, `combat/D_boss.txt`, `cutscenes/E_cutscene_dispatch.txt`.
3. 규모: A=397, B=116, C=270, D=606, E=219 명령 (`reports/pure_command_counts.json`). 최소 구성은 **A만** (전투/HUD).
4. 컷신/보스/퀘스트 시작 함수는 트리거되는 위치에 **인라인 전개**되어 목록에 들어 있습니다. 관리자용 테스트 함수(`admin/*`)와 건축 단계는 포함되지 않습니다.
5. 한 틱에 수백 개 평가는 모바일에 무겁습니다. 파일 A만 쓰고 나머지는 필요한 때만 켜세요.
