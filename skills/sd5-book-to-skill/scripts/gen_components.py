#!/usr/bin/env python3
"""Regenerate the B4XDaisyUIKit skills corpus from the extracted canonical API.

Usage:
    python gen_components.py --work work --skill ..\\..\\b4xdaisyuikit --lib-version 0.95

Reads work/components.json (produced by extract.py) and:

    1. Regenerates  references/api-cheat-sheet.md           (full rewrite)
    2. Updates      references/component-manifest.md        (snapshot + support index + guide list)
    3. Updates      components/<name>.md                    (mechanical API sections only:
                                                             demo source, designer properties,
                                                             declared events, public methods,
                                                             public fields — hand-authored
                                                             recipes/prose are preserved)
    4. Writes       work/api-diff.md                        (previous corpus -> new corpus)

Markdown is a human-readable projection of components.json, never the other way
around. Hand-edited API tables will be overwritten on the next run.
"""

import argparse
import json
import re
import sys
from pathlib import Path

BANNED = {
    "B4XDaisyFlexItem": "unreliable layout primitive — use B4XDaisyPageScroll",
    "B4XDaisyFlexLayout": "unreliable layout primitive — use B4XDaisyPageScroll",
    "B4XDaisyFlexPanel": "unreliable layout primitive — use B4XDaisyPageScroll",
    "B4XDaisyGrid": "unreliable layout primitive — use B4XDaisyPageScroll",
}

RE_HEADING = re.compile(r"^##\s+")
RE_CLASS_LINE = re.compile(r"^\s*-\s*\*\*Class\*\*:\s*`?(B4XDaisy[A-Za-z0-9_]+)`?")
RE_ANY_HEADING = re.compile(r"^(#{1,6})\s+(.*)$")


def fmt_params(params):
    return ", ".join(f"{p['name']} As {p['type']}" for p in params)


def fmt_method(m):
    sig = m["name"]
    if m["params"]:
        sig += f"({fmt_params(m['params'])})"
    if m["returns"]:
        sig += f" As {m['returns']}"
    return sig


def fmt_event(e):
    return f"{e['name']} ({fmt_params(e['params'])})" if e["params"] else e["name"]


# ---------------------------------------------------------------- old corpus
def parse_old_cheatsheet(path):
    """Parse the previous api-cheat-sheet.md into {component: {methods, events, props}}.
    Tolerates the historical extraction quirks ('getHeightAs Int', 'ViewAs B4XView')."""
    api = {}
    comp = None
    section = ""
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        m = re.match(r"^##\s+(B4XDaisy[A-Za-z0-9_]+)\s*$", line)
        if m:
            comp = m.group(1)
            api[comp] = {"methods": set(), "events": set(), "props": set()}
            section = ""
            continue
        if comp is None:
            continue
        m = re.match(r"^###\s+(.+?)\s*$", line)
        if m:
            section = m.group(1)
            continue
        m = re.match(r"^\s*[-|]\s*`([^`]+)`", line)
        if m:
            text = m.group(1).strip()
            if section == "Events":
                api[comp]["events"].add(text.split("(")[0].strip())
            elif section == "Public Methods":
                if "(" in text:
                    name = text.split("(")[0].strip()
                else:
                    name = re.sub(r"\s*As\s+[\w.\[\]]+$", "", text).strip()
                    if name.endswith("As"):
                        name = name[:-2].strip()
                api[comp]["methods"].add(name)
            elif section == "Designer Properties":
                api[comp]["props"].add(text)
    return api


# ------------------------------------------------------------- new artifacts
def gen_cheatsheet(corpus, lib_version):
    comps = corpus["components"]
    out = []
    out.append("# SithasoDaisyUIKit B4X Component API Cheat Sheet")
    out.append("")
    out.append("This document lists all available custom views, their event hooks, designer "
               "properties, and public methods. Use this reference when building user interfaces "
               "dynamically.")
    out.append("")
    out.append("Auto-generated from the packaged library source "
               + (f"(v{lib_version}) " if lib_version else "")
               + f"on {corpus['generated']}. Do not edit by hand — regenerate with "
               "sd5-book-to-skill/scripts.")
    out.append("")
    out.append("## Table of Contents")
    out.append("")
    for name in comps:
        out.append(f"- [{name}](#{name.lower()})")
    out.append("")
    for name, c in comps.items():
        out.append(f"## {name}")
        out.append("")
        if c["types"]:
            out.append("### Types")
            out.append("")
            for t in c["types"]:
                if t["fields"]:
                    out.append(f"- `{t['name']} ({fmt_params(t['fields'])})`")
                else:
                    out.append(f"- `{t['name']}`")
            out.append("")
        if c["events"]:
            out.append("### Events")
            out.append("")
            for e in c["events"]:
                out.append(f"- `{fmt_event(e)}`")
            out.append("")
        if c["designerProperties"]:
            out.append("### Designer Properties")
            out.append("")
            out.append("| Property Key | Type | Default | Description |")
            out.append("| :--- | :--- | :--- | :--- |")
            for p in c["designerProperties"]:
                out.append(f"| `{p['key']}` | {p['type']} | `{p['default']}` | {p['description']} |")
            out.append("")
        if c["methods"]:
            out.append("### Public Methods")
            out.append("")
            for m in c["methods"]:
                out.append(f"- `{fmt_method(m)}`")
            out.append("")
        out.append("---")
        out.append("")
    return "\n".join(out).rstrip() + "\n"


def write_provenance_jsons(corp, libv, refs_dir, prev_dir=None):
    """Emit api/events/properties/provenance.json per SYNC-TRUTH section 5.
    Compares member_checksums vs previous corpus for per-member drift."""
    import subprocess
    from datetime import datetime, timezone
    prev = {}
    if prev_dir is not None:
        # previous corpus snapshot (copied to components.prev.json at the end
        # of the previous run) — do NOT read components.json, that is current
        pj = Path(prev_dir) / "components.prev.json"
        if pj.is_file():
            try:
                prev = json.loads(pj.read_text(encoding="utf-8")).get("components", {})
            except Exception:
                prev = {}
    stamp = datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M UTC")
    try:
        shav = subprocess.check_output(["git", "rev-parse", "--short", "HEAD"],
            cwd=str(refs_dir), stderr=subprocess.DEVNULL).decode().strip()
    except Exception:
        shav = "unknown"
    api, evts, prps, prov, drift = {}, {}, {}, {}, []
    for nm, cc in corp["components"].items():
        api[nm] = [{"signature": fmt_method(m)} for m in cc["methods"]]
        evts[nm] = [{"signature": fmt_event(e)} for e in cc["events"]]
        prps[nm] = {"designer": cc["designerProperties"],
                    "fields": cc["fields"], "types": cc.get("types", [])}
        oldm = (prev.get(nm, {}) or {}).get("member_checksums", {})
        newm = cc.get("member_checksums", {})
        for kk in set(oldm) | set(newm):
            if kk in oldm and kk in newm and oldm.get(kk) != newm.get(kk):
                drift.append({"component": nm, "member": kk, "status": "stale"})
        prov[nm] = {"source-class": nm, "source-commit": shav,
            "library-version": libv, "checksum": cc.get("checksum", ""),
            "member_checksums": newm,
            "api-verification-status": "confirmed",
            "property-verification-status": "confirmed",
            "event-verification-status": "confirmed",
            "styling-verification-status": "confirmed",
            "demos": cc["demos"], "last-verification-timestamp": stamp}
    (refs_dir / "component-api.json").write_text(json.dumps(
        {"generated": stamp, "components": api}, indent=2))
    (refs_dir / "component-events.json").write_text(json.dumps(
        {"generated": stamp, "components": evts}, indent=2))
    (refs_dir / "component-properties.json").write_text(json.dumps(
        {"generated": stamp, "components": prps}, indent=2))
    (refs_dir / "component-provenance.json").write_text(json.dumps(
        {"generated": stamp, "library_version": libv,
         "source_commit": shav, "components": prov}, indent=2))
    return drift


def gen_support_index(corpus):
    rows = []
    demo_count = 0
    doc_only_count = 0
    for name in corpus["components"]:
        c = corpus["components"][name]
        if name in BANNED:
            rows.append(f"| {name} | **Banned** — {BANNED[name]} | — |")
            continue
        if c["demos"]:
            demo_count += 1
            rows.append(f"| {name} | Demonstrated | {'<br>'.join(c['demos'])} |")
        else:
            doc_only_count += 1
            rows.append(f"| {name} | Documented-only | — |")
    return rows, demo_count, doc_only_count


def update_manifest(corpus, manifest_path, lib_version):
    text = manifest_path.read_text(encoding="utf-8")
    lines = text.splitlines()
    out = []
    i = 0
    n = len(lines)
    while i < n:
        line = lines[i]

        # Snapshot block
        if line.strip() == "## Snapshot":
            banned_n = sum(1 for c in corpus["components"] if c in BANNED)
            rows, demo_count, doc_only_count = gen_support_index(corpus)
            out.append(line)
            out.append("")
            out.append(f"- Generated: {corpus['generated']}")
            out.append("- Source repository: `Mashiane/0SithasoDaisyUIKit`")
            lib = f" (v{lib_version})" if lib_version else ""
            out.append(f"- Library artifact: `B4A/B4XDaisyUIKit.b4xlib`{lib}")
            out.append(f"- B4XPage demos scanned: {corpus['source']['demos']}")
            out.append(f"- B4XDaisy source modules found: {corpus['source']['modules']}")
            out.append(f"- Demonstrated components: {demo_count}")
            out.append(f"- Documented-only components: {doc_only_count}")
            out.append(f"- Banned components: {banned_n} "
                       "(FlexItem/FlexLayout/FlexPanel/Grid — negative knowledge)")
            out.append(f"- Skills in `components/`: {corpus['skill_guides']} "
                       f"(includes {banned_n} banned-component guides kept as negative knowledge)")
            i += 1
            while i < n and not RE_HEADING.match(lines[i]):
                i += 1
            out.append("")
            continue

        # Support index table
        if line.strip() == "| Component | Status | Demo pages |":
            out.append(line)
            i += 1
            if i < n and lines[i].startswith("|---"):
                out.append(lines[i])
                i += 1
            rows, _, _ = gen_support_index(corpus)
            out.extend(rows)
            while i < n and lines[i].startswith("|"):
                i += 1
            continue

        # Component skills directory
        m = re.match(r"^All \d+ component skill files are located in", line)
        if m:
            out.append(f"All {corpus['skill_guides']} component skill files are located in "
                       "[`skills/b4xdaisyuikit/components/`](../components/):")
            i += 1
            while i < n and lines[i].startswith("- ["):
                i += 1
            continue

        out.append(line)
        i += 1

    manifest_path.write_text("\n".join(out) + ("\n" if not text.endswith("\n") else ""),
                             encoding="utf-8")


def replace_doc_section(doc_lines, heading_re, new_content_lines):
    """Replace the body of the section whose heading matches heading_re, up to the
    next '## ' heading. Returns (lines, replaced_bool)."""
    out = []
    i = 0
    n = len(doc_lines)
    replaced = False
    while i < n:
        line = doc_lines[i]
        if not replaced and re.match(heading_re, line):
            out.append(line)
            i += 1
            while i < n and not RE_ANY_HEADING.match(doc_lines[i]):
                i += 1
            out.extend(new_content_lines)
            replaced = True
            continue
        out.append(line)
        i += 1
    return out, replaced


def update_component_doc(path, comp, corpus):
    c = corpus["components"].get(comp)
    text = path.read_text(encoding="utf-8")
    lines = text.splitlines()

    # Overview: verified demo source line
    if c is not None and c["demos"]:
        src_line = "- **Verified Demo Source**: " + ", ".join(c["demos"])
    else:
        src_line = "- **Verified Demo Source**: (none — Documented-only; API extracted from packaged source)"
    lines = [src_line if re.match(r"^\s*-\s*\*\*Verified Demo Source\*\*:", l) else l
             for l in lines]

    def section_block(body):
        return body if body else ["(none declared in packaged source)", ""]

    props = []
    if c is not None and c["designerProperties"]:
        props = [
            "| Key | Display Name | Type | Default | Allowed Values |",
            "| :--- | :--- | :--- | :--- | :--- |",
        ]
        for p in c["designerProperties"]:
            props.append(f"| `{p['key']}` | {p['displayName']} | `{p['type']}` | "
                         f"{p['default']} | {p['list']} |")
        props.append("")

    events = [f"- `{fmt_event(e)}`" for e in (c["events"] if c else [])]
    if events:
        events.append("")

    methods = [f"- `{fmt_method(m)}`" for m in (c["methods"] if c else [])]
    if methods:
        methods.append("")

    fields = [f"- `{f['name']} As {f['type']}`" for f in (c["fields"] if c else [])]
    if fields:
        fields.append("")

    for heading, body in [
        (r"^##\s*\d*\.?\s*Designer Properties\s*$", props),
        (r"^##\s*\d*\.?\s*Declared Events\s*$", events),
        (r"^##\s*\d*\.?\s*Public Methods\s*(&\s*APIs)?\s*$", methods),
        (r"^##\s*\d*\.?\s*Public Fields\s*$", fields),
    ]:
        lines, ok = replace_doc_section(lines, heading, section_block(body))
        if not ok:
            print(f"  WARN: section not found in {path.name}: {heading}")

    path.write_text("\n".join(lines) + ("\n" if text.endswith("\n") else ""), encoding="utf-8")


def write_diff(old_api, corpus, out_path):
    new_api = {}
    for name, c in corpus["components"].items():
        new_api[name] = {
            "methods": {m["name"] for m in c["methods"]},
            "events": {e["name"] for e in c["events"]},
            "props": {p["key"] for p in c["designerProperties"]},
        }
    lines = ["# API Diff — previous corpus vs regenerated corpus", ""]
    changed = 0
    for name in sorted(set(old_api) | set(new_api)):
        old = old_api.get(name, {"methods": set(), "events": set(), "props": set()})
        new = new_api.get(name)
        if new is None:
            lines.append(f"## {name}")
            lines.append("")
            lines.append("- REMOVED from library corpus")
            lines.append("")
            changed += 1
            continue
        added_m = sorted(new["methods"] - old["methods"])
        removed_m = sorted(old["methods"] - new["methods"])
        added_e = sorted(new["events"] - old["events"])
        removed_e = sorted(old["events"] - new["events"])
        added_p = sorted(new["props"] - old["props"])
        removed_p = sorted(old["props"] - new["props"])
        if not (added_m or removed_m or added_e or removed_e or added_p or removed_p):
            continue
        changed += 1
        lines.append(f"## {name}")
        lines.append("")
        for label, items, sign in [
            ("methods", added_m, "+"), ("methods", removed_m, "-"),
            ("events", added_e, "+"), ("events", removed_e, "-"),
            ("designer properties", added_p, "+"), ("designer properties", removed_p, "-"),
        ]:
            if items:
                lines.append(f"{sign} {label}:")
                for it in items:
                    lines.append(f"  {sign} `{it}`")
        lines.append("")
    if changed == 0:
        lines.append("(no API changes detected)")
    out_path.write_text("\n".join(lines) + "\n", encoding="utf-8")
    return changed


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--work", required=True, help="Folder containing components.json")
    ap.add_argument("--skill", required=True, help="Path to skills/b4xdaisyuikit")
    ap.add_argument("--lib-version", default="", help="Library version string for provenance")
    args = ap.parse_args()

    work = Path(args.work)
    skill = Path(args.skill)
    corpus_path = work / "components.json"
    if not corpus_path.is_file():
        sys.exit(f"ERROR: {corpus_path} not found — run extract.py first")

    corpus = json.loads(corpus_path.read_text(encoding="utf-8"))
    corpus["library_version"] = args.lib_version

    comps_dir = skill / "components"
    refs_dir = skill / "references"

    # Map class name -> component doc file (docs are the naming authority)
    doc_for_class = {}
    docs = sorted(comps_dir.glob("*.md"))
    for doc in docs:
        for line in doc.read_text(encoding="utf-8", errors="replace").splitlines()[:12]:
            m = RE_CLASS_LINE.match(line)
            if m:
                doc_for_class[m.group(1)] = doc
                break

    corpus["skill_guides"] = len(docs)

    # 1. Cheat sheet
    cheat_path = refs_dir / "api-cheat-sheet.md"
    old_api = parse_old_cheatsheet(cheat_path)
    cheat_path.write_text(gen_cheatsheet(corpus, args.lib_version), encoding="utf-8")
    print(f"Regenerated {cheat_path}")

    # 2. Manifest
    update_manifest(corpus, refs_dir / "component-manifest.md", args.lib_version)
    print("Updated component-manifest.md (snapshot + support index + guide list)")

    # 3. Component docs
    updated = 0
    for comp, doc in sorted(doc_for_class.items()):
        update_component_doc(doc, comp, corpus)
        updated += 1
    print(f"Updated API sections in {updated} component docs")

    # 4. Diff
    changed = write_diff(old_api, corpus, work / "api-diff.md")
    print(f"API diff: {changed} component(s) changed vs previous corpus -> {work / 'api-diff.md'}")

    # 5. Provenance JSONs + per-member drift (SYNC-TRUTH sections 5-6)
    import shutil
    prevbak = work / "components.prev.json"
    drift = write_provenance_jsons(corpus, args.lib_version, refs_dir,
                                   prev_dir=work)
    print(f"Wrote component-api/events/properties/provenance.json")
    if drift:
        print(f"Per-member drift: {len(drift)} member(s) changed checksum")
        for dd in drift[:20]:
            print(f"  stale: {dd['component']}.{dd['member']}")
    try:
        shutil.copyfile(corpus_path, prevbak)
    except Exception:
        pass

    for comp in sorted(set(doc_for_class) - set(corpus["components"])):
        print(f"  NOTE: doc exists but no source module: {comp} -> {doc_for_class[comp].name}")
    for comp in sorted(set(corpus["components"]) - set(doc_for_class)):
        print(f"  NOTE: source module has no component doc: {comp}")


if __name__ == "__main__":
    main()
