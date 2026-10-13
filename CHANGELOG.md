
## 1.0 One-Click Play Edition
- `tick.json` calls only `auto/tick`; state machine in `_astate` (NOT_INITIALIZED..ERROR), no double init, no rebuild on rejoin.
- Sky observatory waiting room + loading UI (title/subtitle/actionbar with percent), per-chunk readiness, completion verification before play.
- Opening cutscene starts automatically, then tutorial -> sword quest; cutscene re-asserts camera AND input locks every 3 s (rejoin mid-cutscene).
- Fake player names `#x` -> `_x` (Bedrock parse error found on a real BDS).
- Shipped `BCE_1.0_One_Click_Play.mcworld` / `.mctemplate`: produced from a real BDS 1.21.80.3 save (pre-built, no first-run wait).
- Verified on real BDS with a headless client: E2E 14/14 and shipped-world 5/5 (`tools/e2e.py`). NOT verified: a real iPad (TEST 10 = NOT_RUN); `.mctemplate` import untested.
