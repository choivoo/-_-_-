"""Manifests, lang files, particle, pure-command flattening, packaging."""
import os, sys, json, uuid, zipfile, shutil
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from common import *
from command_generator import pure

NS = uuid.UUID("b1ac7574-0000-4c17-9e57-bedrc0de0001".replace("bedrc0de", "bedc0de0")) if False else uuid.UUID("6f1c2f7e-3a52-4a8e-9a55-0b1ac75700e1")
U = lambda name: str(uuid.uuid5(NS, name))
VERSION = [1, 0, 0]
MIN_ENGINE = [1, 20, 80]


def manifests():
    bp = {"format_version": 2, "header": {"name": "BCE Behavior — 검은별의 성채 v1.0",
          "description": "Bedrock Command Engine: 함수 기반 액션 어드벤처 엔진", "uuid": U("bp-header"), "version": VERSION,
          "min_engine_version": MIN_ENGINE},
          "modules": [{"type": "data", "description": "BCE functions + entities", "uuid": U("bp-module"), "version": VERSION}]}
    rp = {"format_version": 2, "header": {"name": "BCE Resources — 검은별의 성채 v1.0",
          "description": "MODE B: 보스 모델/애니메이션/파티클 (순수 커맨드 모드에서는 불필요)", "uuid": U("rp-header"), "version": VERSION,
          "min_engine_version": MIN_ENGINE},
          "modules": [{"type": "resources", "description": "BCE models + animations", "uuid": U("rp-module"), "version": VERSION}]}
    write_json(os.path.join(BP, "manifest.json"), bp)
    write_json(os.path.join(RP, "manifest.json"), rp)


def lang():
    os.makedirs(os.path.join(RP, "texts"), exist_ok=True)
    write_json(os.path.join(RP, "texts", "languages.json"), ["ko_KR", "en_US"])
    ko = "entity.bce:citadel_guardian.name=검은별의 수호자\nitem.spawn_egg.entity.bce:citadel_guardian.name=검은별의 수호자 생성 알\n"
    en = "entity.bce:citadel_guardian.name=Guardian of the Blackstar\nitem.spawn_egg.entity.bce:citadel_guardian.name=Guardian of the Blackstar Spawn Egg\n"
    for n, t in (("ko_KR", ko), ("en_US", en)):
        open(os.path.join(RP, "texts", n + ".lang"), "w", encoding="utf-8").write(t)
    # BP lang too
    os.makedirs(os.path.join(BP, "texts"), exist_ok=True)
    write_json(os.path.join(BP, "texts", "languages.json"), ["ko_KR", "en_US"])
    for n, t in (("ko_KR", ko), ("en_US", en)):
        open(os.path.join(BP, "texts", n + ".lang"), "w", encoding="utf-8").write(t)


def particle():
    p = {"format_version": "1.10.0", "particle_effect": {
        "description": {"identifier": "bce:warning_ring", "basic_render_parameters": {"material": "particles_alpha", "texture": "textures/particle/particles"}},
        "components": {
            "minecraft:emitter_rate_instant": {"num_particles": 24},
            "minecraft:emitter_lifetime_once": {"active_time": 0.1},
            "minecraft:emitter_shape_disc": {"offset": [0, 0.1, 0], "radius": 4.5, "plane_normal": [0, 1, 0], "direction": "outwards"},
            "minecraft:particle_lifetime_expression": {"max_lifetime": 0.8},
            "minecraft:particle_initial_speed": 0,
            "minecraft:particle_appearance_billboard": {"size": [0.12, 0.12], "facing_camera_mode": "lookat_xyz",
                                                       "uv": {"texture_width": 128, "texture_height": 128, "uv": [0, 0], "uv_size": [8, 8]}},
            "minecraft:particle_appearance_tinting": {"color": [1.0, 0.25, 0.2, 1.0]}}}}
    write_json(os.path.join(RP, "particles", "bce_warning_ring.particle.json"), p)


def pure_commands():
    files = {}
    for root, _, fs in os.walk(FUNCS):
        for f in fs:
            if f.endswith(".mcfunction"):
                rel = os.path.relpath(os.path.join(root, f), FUNCS)[:-len(".mcfunction")].replace(os.sep, "/")
                files[rel] = open(os.path.join(root, f), encoding="utf-8").read().splitlines()
    out_dir = os.path.join(SRC, "pure_commands")
    for sub in ('bootstrap', 'command_blocks', 'combat', 'gameplay', 'cutscenes'):
        shutil.rmtree(os.path.join(out_dir, sub), ignore_errors=True)
    M = lambda n: "execute if score _m%d bce_sys matches 0 run " % n
    sched = ["scoreboard players add _tick bce_sys 1"]
    for n in (5, 10, 20):
        sched += ["scoreboard players operation _m%d bce_sys = _tick bce_sys" % n, "scoreboard players operation _m%d bce_sys %%= _c%d bce_sys" % (n, n)]
    groups = {
        "bootstrap/01_install": ([("bootstrap/objectives", ""), ("bootstrap/gamerules", ""), ("bootstrap/constants", "")], []),
        "command_blocks/A_essential_loop": ([("player/new_players", ""), ("player/input", ""), ("player/timers", ""), ("player/stamina", M(5)), ("ui/hud", M(5))], sched),
        "combat/B_enemy_ai": ([("enemies/tick", "")], []),
        "gameplay/C_quests_checkpoints_world": ([(e, M(10)) for e in ["quests/check", "checkpoints/check", "world/puzzle_check", "world/wall_logic", "world/citadel_door", "game/start_check"]] + [("world/traps", M(20))], []),
        "combat/D_boss": ([("bosses/check_start", M(10)), ("bosses/tick", "")], []),
        "cutscenes/E_cutscene_dispatch": ([("cutscenes/dispatch", "")], []),
    }
    summary = {}
    for path, (entries, extra) in groups.items():
        lines = list(extra)
        for e, pre in entries:
            lines += pure.flatten(files, e, pre)
        d = os.path.join(out_dir, os.path.dirname(path))
        os.makedirs(d, exist_ok=True)
        head = ["# BCE pure-command export: %s" % path, "# 1st line = REPEATING command block (always active). all others = CHAIN blocks (always active, unconditional), placed in order.",
                "# One command per line. Total: %d" % len(lines), ""]
        for i, l in enumerate(lines, 1):
            head.append("%04d  %s" % (i, l))
        with open(os.path.join(out_dir, path + ".txt"), "w", encoding="utf-8") as f:
            f.write("\n".join(head) + "\n")
        summary[path] = len(lines)
    # individually-callable pieces needing a trigger (impulse) -----------------
    # cutscene start/skip etc. are included inside the flattened loops; the builder is NOT flattened (too large).
    write_json(os.path.join(ROOT, "reports", "pure_command_counts.json"), summary)
    return summary


def zipdir(zf, src, arc_root=""):
    for root, _, fs in os.walk(src):
        for f in sorted(fs):
            full = os.path.join(root, f)
            arc = os.path.join(arc_root, os.path.relpath(full, src)).replace(os.sep, "/")
            zf.write(full, arc)


def package():
    final = os.path.join(ROOT, "dist", "BCE_1.0_FINAL")
    shutil.rmtree(final, ignore_errors=True)
    os.makedirs(final)
    docs = ["COMMAND_ONLY_GUIDE.md", "COMPATIBILITY.md", "PROJECT_STATUS.md", "README.md", "INSTALL_ANDROID.md", "INSTALL_IOS.md", "TEST_REPORT.md", "CHANGELOG.md"]
    with zipfile.ZipFile(os.path.join(final, "BCE_Behavior_1.0.mcpack"), "w", zipfile.ZIP_DEFLATED, compresslevel=9) as z:
        zipdir(z, BP)
    with zipfile.ZipFile(os.path.join(final, "BCE_Resources_1.0.mcpack"), "w", zipfile.ZIP_DEFLATED) as z:
        zipdir(z, RP)
    with zipfile.ZipFile(os.path.join(final, "BCE_Enhanced_1.0.mcaddon"), "w", zipfile.ZIP_DEFLATED, compresslevel=9) as z:
        zipdir(z, BP, "BCE_Behavior")
        zipdir(z, RP, "BCE_Resources")
    with zipfile.ZipFile(os.path.join(final, "BCE_Command_Only_1.0.zip"), "w", zipfile.ZIP_DEFLATED) as z:
        zipdir(z, os.path.join(SRC, "pure_commands"), "BCE_Command_Only")
        for d in ("COMMAND_ONLY_GUIDE.md", "COMPATIBILITY.md"):
            z.write(os.path.join(ROOT, d), "BCE_Command_Only/" + d)
    with zipfile.ZipFile(os.path.join(final, "BCE_1.0_Source.zip"), "w", zipfile.ZIP_DEFLATED, compresslevel=9) as z:
        for top in ("generators", "src", "reports"):
            for root, dirs, fs in os.walk(os.path.join(ROOT, top)):
                dirs[:] = [d for d in dirs if d != "__pycache__"]
                for f in sorted(fs):
                    full = os.path.join(root, f)
                    z.write(full, "BCE_1.0_Source/" + os.path.relpath(full, ROOT).replace(os.sep, "/"))
        for d in docs + ["build.sh"]:
            z.write(os.path.join(ROOT, d), "BCE_1.0_Source/" + d)
    shutil.copy(os.path.join(ROOT, "INSTALL_GUIDE_1.0.md"), os.path.join(final, "BCE_1.0_Install_Guide.md"))
    shutil.copy(os.path.join(ROOT, "TEST_REPORT.md"), os.path.join(final, "BCE_1.0_Test_Report.md"))
    open(os.path.join(final, "RELEASE_STATUS.txt"), "w", encoding="utf-8").write(
        "STATUS: RELEASE_CANDIDATE (not 'FINAL VERIFIED')\nGATE G (real-device Android/iOS Bedrock test) has NOT been executed.\n"
        "No .mcworld is included: no real Bedrock world save could be generated in this environment.\n"
        "Folder name follows the project spec; see BCE_1.0_Test_Report.md for what was and was not verified.\n")
    return sorted(os.listdir(final))


def package_oneclick():
    """dist/BCE_1.0_OneClick: the mcaddon/source/guide/report. The .mcworld/.mctemplate are added by tools/make_world.py (real BDS-built world)."""
    out = os.path.join(ROOT, "dist", "BCE_1.0_OneClick")
    os.makedirs(out, exist_ok=True)
    for f in os.listdir(out):
        if f.endswith((".mcaddon", ".md")) or f in ("BCE_1.0_AutoStart_Source.zip",):
            os.remove(os.path.join(out, f))
    with zipfile.ZipFile(os.path.join(out, "BCE_Enhanced_1.0_AutoStart.mcaddon"), "w", zipfile.ZIP_DEFLATED, compresslevel=9) as z:
        zipdir(z, BP, "BCE_Behavior")
        zipdir(z, RP, "BCE_Resources")
    docs = ["COMMAND_ONLY_GUIDE.md", "COMPATIBILITY.md", "PROJECT_STATUS.md", "README.md", "INSTALL_GUIDE_1.0.md", "INSTALL_IPAD.md", "AUTOSTART_TEST_REPORT.md", "TEST_REPORT.md", "CHANGELOG.md", "GATES.md"]
    with zipfile.ZipFile(os.path.join(out, "BCE_1.0_AutoStart_Source.zip"), "w", zipfile.ZIP_DEFLATED, compresslevel=9) as z:
        for top in ("generators", "src", "reports", "tools"):
            for root, dirs, fs in os.walk(os.path.join(ROOT, top)):
                dirs[:] = [d for d in dirs if d != "__pycache__"]
                for f in sorted(fs):
                    full = os.path.join(root, f)
                    z.write(full, "BCE_1.0_AutoStart_Source/" + os.path.relpath(full, ROOT).replace(os.sep, "/"))
        for d in docs + ["build.sh"]:
            if os.path.exists(os.path.join(ROOT, d)):
                z.write(os.path.join(ROOT, d), "BCE_1.0_AutoStart_Source/" + d)
    shutil.copy(os.path.join(ROOT, "INSTALL_IPAD.md"), os.path.join(out, "BCE_1.0_iPad_Install_Guide.md"))
    shutil.copy(os.path.join(ROOT, "AUTOSTART_TEST_REPORT.md"), os.path.join(out, "BCE_1.0_AutoStart_Test_Report.md"))
    return sorted(os.listdir(out))


if __name__ == "__main__":
    manifests(); lang(); particle()
    pure_commands()
    print(package())
    if os.path.exists(os.path.join(ROOT, 'INSTALL_IPAD.md')) and os.path.exists(os.path.join(ROOT, 'AUTOSTART_TEST_REPORT.md')):
        print(package_oneclick())
