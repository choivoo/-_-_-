"""Flatten function trees into plain command lists for command blocks (MODE A without a behavior pack)."""
import re

CALL = re.compile(r"^(?P<ctx>.*\brun )?function (?P<fn>[a-z0-9_/]+)$")


def flatten(files, entry, prefix="", depth=0, stack=()):
    if entry in stack:
        raise RuntimeError("recursion: " + " -> ".join(stack + (entry,)))
    if depth > 12:
        raise RuntimeError("call depth > 12 at " + entry)
    out = []
    for line in files[entry]:
        if line.startswith("#") or not line.strip():
            continue
        m = CALL.match(line)
        if m and m.group("fn") in files:
            ctx = m.group("ctx") or ""
            out += flatten(files, m.group("fn"), prefix + ctx, depth + 1, stack + (entry,))
        else:
            out.append((prefix + line).replace(" run execute ", " "))
    return out


def dedupe_keep_order(lines):
    seen, out = set(), []
    for l in lines:
        out.append(l)
    return out
