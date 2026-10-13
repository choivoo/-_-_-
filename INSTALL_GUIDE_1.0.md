# BCE 1.0 설치 가이드 (Android / iOS·iPadOS / Windows)
> 상태: **RELEASE_CANDIDATE** — 실기기 설치를 아직 해 보지 못했습니다. 아래 절차는 Bedrock의 일반적인 팩 가져오기 방식에 근거한 것이며 화면은 버전/기종마다 다를 수 있습니다.

## 어떤 파일을 쓰나
| 파일 | 용도 |
|---|---|
| `BCE_Enhanced_1.0.mcaddon` | **권장.** 행동 팩 + 리소스 팩 (보스 커스텀 모델 포함, MODE B 가능) |
| `BCE_Behavior_1.0.mcpack` | 행동 팩만 (MODE A: 바닐라 몹 보스). 구조물(.mcstructure) 26개 포함 |
| `BCE_Resources_1.0.mcpack` | 리소스 팩만 (보스 모델/애니메이션/파티클) |
| `BCE_Command_Only_1.0.zip` | 팩 없이 커맨드 블록으로 플레이하기 위한 명령 목록 + 건축 명령 목록 (TYPE A) |
| `BCE_1.0_Source.zip` | 생성기/데이터/테스트 전체 소스 |
`.mcworld` 는 없습니다 (실제 월드 세이브를 만들 수 없었음).

## Android
1. 휴대폰으로 `BCE_Enhanced_1.0.mcaddon` 다운로드.
2. 파일 관리자(내 파일)에서 길게 눌러 **Minecraft로 열기**. 가져오기 성공 메시지 확인.
3. Minecraft → 새 월드 → **치트 켜기** → 행동 팩: *BCE Behavior* 활성화, 리소스 팩: *BCE Resources* 활성화. (버전에 따라 “실험 기능” 안내가 나오면 켜서 시도.)
4. 월드 입장 → 채팅창에서 `/function bootstrap/install` (자동으로 관리자 태그 `bce_admin` 부여).
5. 화면 하단 진행도(액션바)가 100%가 될 때까지 대기. “청크 로딩 대기” 문구가 보이면 **표시된 구역 쪽으로 걸어가 주세요**. 실패 문구가 뜨면 `/function admin/build_recover`.
6. “건축 완료” 후 신전 제단 앞 **시작 패드**에 서면 오프닝 시작 (`/function game/start`도 가능).
7. MODE B 보스(커스텀 모델)를 쓰려면 `/function admin/mode_b` (기본은 MODE A).
8. 구조물 방식으로 짓고 싶다면 `/function admin/build_structures` (TYPE B, `structure load` 사용 — 미검증).

## iOS / iPadOS
파일 앱에서 `.mcaddon` 탭 → 공유 → **Minecraft**. 이후 Android 3~8과 동일.

## Windows Bedrock
`.mcaddon` 더블클릭 → Minecraft가 자동으로 가져옴. 이후 동일.

## 문제 해결
| 증상 | 해결 |
|---|---|
| `Unknown function` | 행동 팩 미적용 → 월드 설정에서 활성화 |
| 건축이 멈춤/실패 | `/function admin/build_status`, 해당 구역 근처로 이동, `/function admin/build_recover` |
| 컷신에 갇힘 | `/function cutscenes/force_end` (20틱마다 자동 안전장치도 동작) |
| 스킬이 안 나감 | 핫바에서 스킬 아이템을 **새로 선택**(칼 → 스킬 아이템). 퀘스트 2에서 아이템 지급 |
| 관리자 명령이 안 먹음 | `/tag @s add bce_admin` (OP/치트 필요) |
