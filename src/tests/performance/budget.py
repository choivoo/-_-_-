#!/usr/bin/env python3
"""Static command budget: how many command lines the scheduler EVALUATES per tick (upper bound, not measured fps)."""
import os, sys, json
ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", ".."))
F = os.path.join(ROOT, "src", "behavior_pack", "functions")
rd = lambda n: [l for l in open(os.path.join(F, n + ".mcfunction"), encoding="utf-8").read().splitlines() if l.strip() and not l.startswith("#")]
per_tick = ["core/tick", "core/run", "player/new_players", "player/input", "player/timers", "cutscenes/dispatch", "enemies/tick"]
slots = {"every5": ["core/every5", "player/stamina", "ui/hud"],
         "every10": ["core/every10", "game/start_check", "quests/check", "checkpoints/check", "world/puzzle_check", "world/wall_logic", "bosses/check_start", "world/citadel_door"],
         "every20": ["core/every20", "core/safety", "core/state_sync", "world/traps", "effects/ambient"]}
pt = sum(len(rd(n)) for n in per_tick)
sl = {k: sum(len(rd(n)) for n in v) for k, v in slots.items()}
avg = pt + sl["every5"] / 5 + sl["every10"] / 10 + sl["every20"] / 20
rep = {"idle_lines_per_tick": pt, "slot_lines": sl, "avg_lines_per_tick_idle": round(avg, 1),
       "ai_lines_per_active_enemy_per_2_ticks": len(rd("enemies/ai_one")) + len(rd("enemies/st_chase")),
       "boss_fight_extra_lines_per_tick": len(rd("bosses/tick")) + len(rd("bosses/fight")) + len(rd("bosses/watch")),
       "note": "static upper bound of evaluated lines; real cost depends on selectors/entities. NOT a measured FPS."}
os.makedirs(os.path.join(ROOT, "reports"), exist_ok=True)
json.dump(rep, open(os.path.join(ROOT, "reports", "performance_budget.json"), "w"), indent=1)
print(json.dumps(rep, indent=1))
assert avg < 150, "idle budget exceeded"
