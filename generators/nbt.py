"""Minimal little-endian NBT (Bedrock) writer/reader. Types used by .mcstructure: byte,int,string,list,compound."""
import struct

END, BYTE, SHORT, INT, LONG, FLOAT, DOUBLE, BYTES, STRING, LIST, COMPOUND, INTS, LONGS = range(13)


class T:
    """Typed value wrapper for the writer: T(INT, 5), T(BYTE, 1), T(STRING,'x'), T(LIST,(elem_type,[...])), dict = compound."""
    def __init__(self, t, v):
        self.t, self.v = t, v


def _str(s):
    b = s.encode("utf-8")
    return struct.pack("<H", len(b)) + b


def _payload(t, v, out):
    if t == BYTE: out.append(struct.pack("<b", v))
    elif t == SHORT: out.append(struct.pack("<h", v))
    elif t == INT: out.append(struct.pack("<i", v))
    elif t == LONG: out.append(struct.pack("<q", v))
    elif t == FLOAT: out.append(struct.pack("<f", v))
    elif t == DOUBLE: out.append(struct.pack("<d", v))
    elif t == STRING: out.append(_str(v))
    elif t == BYTES: out.append(struct.pack("<i", len(v)) + bytes(v))
    elif t == INTS: out.append(struct.pack("<i", len(v)) + struct.pack("<%di" % len(v), *v))
    elif t == LONGS: out.append(struct.pack("<i", len(v)) + struct.pack("<%dq" % len(v), *v))
    elif t == LIST:
        et, items = v
        out.append(struct.pack("<bi", et, len(items)))
        if et == INT:
            out.append(struct.pack("<%di" % len(items), *items)) if items else None
        else:
            for it in items:
                _payload(et, it, out)
    elif t == COMPOUND:
        for k, val in v.items():
            if isinstance(val, dict):
                tt, vv = COMPOUND, val
            else:
                tt, vv = val.t, val.v
            out.append(struct.pack("<b", tt)); out.append(_str(k)); _payload(tt, vv, out)
        out.append(b"\x00")
    else:
        raise ValueError("unsupported tag %d" % t)


def dumps(root, name=""):
    out = [struct.pack("<b", COMPOUND), _str(name)]
    _payload(COMPOUND, root, out)
    return b"".join(out)


class _R:
    def __init__(self, b): self.b, self.i = b, 0
    def take(self, n):
        if self.i + n > len(self.b): raise ValueError("truncated NBT")
        v = self.b[self.i:self.i + n]; self.i += n; return v
    def u(self, fmt):
        n = struct.calcsize(fmt); return struct.unpack(fmt, self.take(n))[0]


def _read(r, t):
    if t == BYTE: return r.u("<b")
    if t == SHORT: return r.u("<h")
    if t == INT: return r.u("<i")
    if t == LONG: return r.u("<q")
    if t == FLOAT: return r.u("<f")
    if t == DOUBLE: return r.u("<d")
    if t == STRING: return r.take(r.u("<H")).decode("utf-8")
    if t == BYTES:
        n = r.u("<i"); return list(r.take(n))
    if t == INTS:
        n = r.u("<i"); return list(struct.unpack("<%di" % n, r.take(4 * n))) if n else []
    if t == LONGS:
        n = r.u("<i"); return list(struct.unpack("<%dq" % n, r.take(8 * n))) if n else []
    if t == LIST:
        et = r.u("<b"); n = r.u("<i")
        if et == INT:
            return list(struct.unpack("<%di" % n, r.take(4 * n))) if n else []
        return [_read(r, et) for _ in range(n)]
    if t == COMPOUND:
        d = {}
        while True:
            tt = r.u("<b")
            if tt == END: return d
            k = r.take(r.u("<H")).decode("utf-8")
            d[k] = _read(r, tt)
    raise ValueError("unsupported tag %d" % t)


def loads(b):
    r = _R(b)
    t = r.u("<b")
    assert t == COMPOUND, "root must be compound"
    r.take(r.u("<H"))
    root = _read(r, COMPOUND)
    if r.i != len(b): raise ValueError("trailing bytes")
    return root


# ---- typed round-trip (keeps byte/short/int/long distinctions) -----------------------------------------------
def _read_typed(r, t):
    if t in (BYTE, SHORT, INT, LONG, FLOAT, DOUBLE, STRING, BYTES, INTS, LONGS):
        return T(t, _read(r, t))
    if t == LIST:
        et = r.u("<b"); n = r.u("<i")
        items = [_read_typed(r, et) if et not in (COMPOUND,) else _read_typed(r, et) for _ in range(n)]
        return T(LIST, (et, [i.v if isinstance(i, T) else i for i in items]))
    if t == COMPOUND:
        d = {}
        while True:
            tt = r.u("<b")
            if tt == END: return d
            k = r.take(r.u("<H")).decode("utf-8")
            d[k] = _read_typed(r, tt)
    raise ValueError("unsupported tag %d" % t)


def loads_typed(b):
    r = _R(b)
    assert r.u("<b") == COMPOUND
    name = r.take(r.u("<H")).decode("utf-8")
    root = _read_typed(r, COMPOUND)
    if r.i != len(b): raise ValueError("trailing bytes")
    return root, name
