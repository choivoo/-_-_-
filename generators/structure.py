""".mcstructure writer / reader / validator (format per wiki.bedrock.dev/nbt/mcstructure)."""
import re
import nbt
from nbt import T

BLOCK_VERSION = 18168865       # 1.21.60.33 per Bedrock wiki
STATE_RE = re.compile(r'"([a-z0-9_:]+)"=("[^"]*"|true|false|-?\d+)')


def parse_block(s):
    name = s.split(" [")[0].split("[")[0].strip()
    states = {}
    for k, v in STATE_RE.findall(s):
        if v in ("true", "false"): states[k] = T(nbt.BYTE, 1 if v == "true" else 0)
        elif v.startswith('"'): states[k] = T(nbt.STRING, v.strip('"'))
        else: states[k] = T(nbt.INT, int(v))
    return "minecraft:" + name, states


def write(path, size, origin, blocks):
    """blocks: iterable (len x*y*z) of full block strings in X-major, then Y, then Z (z fastest)."""
    sx, sy, sz = size
    pal, idx, layer = [], {}, []
    for b in blocks:
        if b not in idx:
            idx[b] = len(pal); pal.append(b)
        layer.append(idx[b])
    assert len(layer) == sx * sy * sz, "block count != volume"
    palette = []
    for b in pal:
        n, st = parse_block(b)
        palette.append({"name": T(nbt.STRING, n), "states": st, "version": T(nbt.INT, BLOCK_VERSION)})
    root = {
        "format_version": T(nbt.INT, 1),
        "size": T(nbt.LIST, (nbt.INT, [sx, sy, sz])),
        "structure": {
            "block_indices": T(nbt.LIST, (nbt.LIST, [(nbt.INT, layer), (nbt.INT, [-1] * len(layer))])),
            "entities": T(nbt.LIST, (nbt.COMPOUND, [])),
            "palette": {"default": {"block_palette": T(nbt.LIST, (nbt.COMPOUND, palette)), "block_position_data": {}}},
        },
        "structure_world_origin": T(nbt.LIST, (nbt.INT, list(origin))),
    }
    data = nbt.dumps(root)
    with open(path, "wb") as f:
        f.write(data)
    return len(data), len(pal)


def validate(path, expect_size=None):
    """Returns list of problems (empty == structurally valid)."""
    errs = []
    try:
        root = nbt.loads(open(path, "rb").read())
    except Exception as e:
        return ["NBT parse failed: %s" % e]
    for k in ("format_version", "size", "structure", "structure_world_origin"):
        if k not in root: errs.append("missing root field " + k)
    if errs: return errs
    sx, sy, sz = root["size"]
    if root["format_version"] != 1: errs.append("format_version != 1")
    if expect_size and tuple(root["size"]) != tuple(expect_size): errs.append("size mismatch")
    st = root["structure"]
    layers = st["block_indices"]
    if len(layers) != 2 or len(layers[0]) != len(layers[1]): errs.append("block_indices must be two equal-length layers")
    if len(layers[0]) != sx * sy * sz: errs.append("layer length %d != volume %d" % (len(layers[0]), sx * sy * sz))
    pal = st["palette"]["default"]["block_palette"]
    for i, p in enumerate(pal):
        if not p["name"].startswith("minecraft:"): errs.append("palette[%d] bad name" % i)
        if "states" not in p or "version" not in p: errs.append("palette[%d] missing states/version" % i)
    if layers[0] and (max(layers[0]) >= len(pal) or min(layers[0]) < -1): errs.append("palette index out of range")
    if len(root["structure_world_origin"]) != 3: errs.append("bad origin")
    return errs


def read_blocks(path):
    """-> (size, [full-name+states string per cell]) for round-trip checks."""
    root = nbt.loads(open(path, "rb").read())
    pal = root["structure"]["palette"]["default"]["block_palette"]
    names = []
    for p in pal:
        st = ",".join('"%s"=%s' % (k, ("true" if v else "false") if False else v) for k, v in sorted(p["states"].items()))
        names.append((p["name"], tuple(sorted(p["states"].items()))))
    layer = root["structure"]["block_indices"][0]
    return tuple(root["size"]), [names[i] if i >= 0 else None for i in layer]
