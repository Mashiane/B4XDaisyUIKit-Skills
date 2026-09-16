#!/usr/bin/env python3
"""Extract the canonical B4XDaisyUIKit API from the packaged .bas source modules.

Usage:
    python extract.py --src C:\\path\\to\\B4A --out work\\components.json

Reads every B4XDaisy*.bas class module plus every B4XPage*.bas demo in the
library source folder and produces a machine-readable corpus:

    {
      "generated": ISO-8601 UTC,
      "source": {"dir": ..., "modules": N, "demos": N},
      "components": {
        "B4XDaisyToast": {
          "designerProperties": [{key, displayName, type, default, list, description}],
          "events": [{name, params}],
          "methods": [{name, params: [{name, type}], returns}],
          "fields": [{name, type}],
          "demos": ["B4XPageToast.bas", ...]
        }
      }
    }

Extraction is mechanical: #Event, #DesignerProperty, Public Sub signatures and
Public fields only. Nothing is inferred from demos, prose, or other components.
"""

import argparse
import json
import re
import sys
from datetime import datetime, timezone
from pathlib import Path

RE_EVENT = re.compile(r"^#Event:\s*([A-Za-z_]\w*)\s*(?:\((.*)\))?\s*$")
RE_DP = re.compile(r"^#DesignerProperty:\s*(.+)$")
RE_TYPE = re.compile(r"^\s*Type\s+([A-Za-z_]\w*)\s*\((.*)\)\s*$")
RE_METHOD = re.compile(
    r"^\s*Public\s+Sub\s+([A-Za-z_]\w*)\s*(?:\(([^)]*)\))?\s*(?:As\s+([\w.\[\]]+))?\s*$"
)
RE_FIELD = re.compile(r"^\s*Public\s+([A-Za-z_]\w*)\s+As\s+([\w.]+)\s*$")
RE_DEMO_REF = re.compile(r"\b(B4XDaisy[A-Za-z0-9_]+)\b")
RE_COMMENT = re.compile(r"^\s*'")


def normalize_for_checksum(text):
    """Normalized form for drift checksums: strip comments/blank lines,
    collapse whitespace. Comment-only edits must not register as drift
    (SYNC-TRUTH-TOOL.md section 6)."""
    lines = []
    for line in text.splitlines():
        if RE_COMMENT.match(line):
            continue
        s = re.sub(r"\s+", " ", line).strip()
        if s:
            lines.append(s)
    return "\n".join(lines) + "\n"


def sha256_text(text):
    import hashlib
    return hashlib.sha256(text.encode("utf-8")).hexdigest()


def split_params(raw, strip_prefix=True):
    """Split a B4A parameter list into [(name, type)]. Hungarian prefixes are
    stripped (oCallback -> Callback) to match the canonical corpus style.
    Type-struct fields must keep their exact names (strip_prefix=False)."""
    params = []
    if not raw or not raw.strip():
        return params
    for part in raw.split(","):
        part = part.strip()
        if not part:
            continue
        m = re.match(r"([A-Za-z_]\w*)(?:\s+As\s+([\w.\[\]]+))?", part)
        if not m:
            continue
        name, typ = m.group(1), m.group(2) or "Object"
        if strip_prefix and len(name) >= 2 and name[0].islower() and name[1].isupper():
            name = name[1:]  # strip hungarian prefix
        params.append({"name": name, "type": typ})
    return params


def parse_designer_property(raw):
    """Parse the attribute payload of one #DesignerProperty line."""
    fields = {}

    def grab(key, text):
        m = re.search(rf"\b{key}:\s*", text)
        return m

    def value_from(text, start, keys):
        end = len(text)
        for k in keys:
            m = re.search(rf",\s*{k}:\s*", text[start:])
            if m:
                end = min(end, start + m.start())
        return text[start:end].strip()

    mk = grab("Key", raw)
    md = grab("DisplayName", raw)
    mt = grab("FieldType", raw)
    if not (mk and md and mt):
        return None
    key = raw[mk.end():].split(",")[0].strip()
    display = raw[md.end():].split(",")[0].strip()
    ftype = raw[mt.end():].split(",")[0].strip()
    default, allowed, desc = "", "", ""
    mv = grab("DefaultValue", raw)
    if mv:
        default = value_from(raw, mv.end(), ["List", "Description"])
    ml = grab("List", raw)
    if ml:
        allowed = value_from(raw, ml.end(), ["Description"])
    mp = grab("Description", raw)
    if mp:
        desc = raw[mp.end():].strip()
    return {
        "key": key,
        "displayName": display,
        "type": ftype,
        "default": default,
        "list": allowed,
        "description": desc,
    }


def parse_class_module(path):
    """Parse one B4XDaisy*.bas class module into its API facts."""
    data = {
        "designerProperties": [],
        "events": [],
        "methods": [],
        "fields": [],
        "types": [],
    }
    in_globals = False
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        m = RE_EVENT.match(line)
        if m:
            data["events"].append({"name": m.group(1), "params": split_params(m.group(2))})
            continue
        m = RE_DP.match(line)
        if m:
            prop = parse_designer_property(m.group(1))
            if prop:
                data["designerProperties"].append(prop)
            continue
        m = RE_TYPE.match(line)
        if m:
            data["types"].append({"name": m.group(1), "fields": split_params(m.group(2), strip_prefix=False)})
            continue
        stripped = line.strip()
        if stripped == "Sub Class_Globals":
            in_globals = True
            continue
        if in_globals and stripped == "End Sub":
            in_globals = False
            continue
        m = RE_METHOD.match(line)
        if m:
            data["methods"].append(
                {
                    "name": m.group(1),
                    "params": split_params(m.group(2)),
                    "returns": m.group(3) or "",
                }
            )
            continue
        if in_globals:
            m = RE_FIELD.match(line)
            if m:
                data["fields"].append({"name": m.group(1), "type": m.group(2)})
    return data


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--src", required=True, help="Library source folder containing B4A *.bas modules")
    ap.add_argument("--out", required=True, help="Output path for components.json")
    args = ap.parse_args()

    src = Path(args.src)
    if not src.is_dir():
        sys.exit(f"ERROR: source folder not found: {src}")

    classes = sorted(src.glob("B4XDaisy*.bas"))
    demos = sorted(src.glob("B4XPage*.bas"))
    if not classes:
        sys.exit(f"ERROR: no B4XDaisy*.bas modules in {src}")

    # Demo usage: direct class-name references only (no inference).
    usage = {}
    for demo in demos:
        text = demo.read_text(encoding="utf-8", errors="replace")
        for m in RE_DEMO_REF.finditer(text):
            usage.setdefault(m.group(1), set()).add(demo.name)

    components = {}
    for path in classes:
        name = path.stem
        raw = path.read_text(encoding="utf-8", errors="replace")
        data = parse_class_module(path)
        data["demos"] = sorted(usage.get(name, []))
        data["checksum"] = sha256_text(normalize_for_checksum(raw))
        # Per-member checksums: hash each declaration line's normalized form
        # so one changed method does not invalidate siblings (SYNC-TRUTH §6).
        members = {}
        for line in raw.splitlines():
            s = normalize_for_checksum(line).strip()
            if not s:
                continue
            m = RE_METHOD.match(line) or RE_EVENT.match(line) or RE_DP.match(line)
            if m:
                key = s.split("(")[0].split(":")[0].strip()[:80]
                members.setdefault(key, sha256_text(s))
        data["member_checksums"] = members
        components[name] = data

    out = {
        "generated": datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M UTC"),
        "library_version": "",
        "source": {"dir": str(src), "modules": len(classes), "demos": len(demos)},
        "components": components,
    }
    out_path = Path(args.out)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(json.dumps(out, indent=2), encoding="utf-8")

    n_props = sum(len(c["designerProperties"]) for c in components.values())
    n_events = sum(len(c["events"]) for c in components.values())
    n_methods = sum(len(c["methods"]) for c in components.values())
    n_demos = sum(1 for c in components.values() if c["demos"])
    print(f"Extracted {len(components)} modules from {src}")
    print(f"  designer properties: {n_props}")
    print(f"  events:              {n_events}")
    print(f"  public methods:      {n_methods}")
    print(f"  demonstrated:        {n_demos} / {len(components)}")
    print(f"Wrote {out_path}")


if __name__ == "__main__":
    main()
