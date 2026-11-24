#!/usr/bin/env python3
"""Audit Designer Properties & Default Traps in B4XDaisyUIKit native custom views."""

from __future__ import annotations

import glob
import json
import os
import re
from collections import defaultdict

HERE = os.path.dirname(os.path.abspath(__file__))
REPO_ROOT = os.path.dirname(HERE)
WORKSPACE_ROOT = os.path.dirname(REPO_ROOT)
B4A_DIR = os.path.join(WORKSPACE_ROOT, "B4A")

def parse_directive(line: str) -> dict[str, str]:
    body = line.split(":", 1)[1].strip()
    matches = list(re.finditer(r"(?:^|,\s*)(Key|DisplayName|FieldType|DefaultValue|Description|List|MinRange|MaxRange)\s*:\s*", body, re.I))
    out: dict[str, str] = {}
    for i, match in enumerate(matches):
        start = match.end()
        end = matches[i + 1].start() if i + 1 < len(matches) else len(body)
        key = match.group(1).lower()
        value = body[start:end].strip().rstrip(",").strip()
        out[key] = value
    return out

def main():
    bas_files = sorted(glob.glob(os.path.join(B4A_DIR, "B4XDaisy*.bas")))
    print(f"Found {len(bas_files)} B4XDaisy*.bas files in {B4A_DIR}")
    
    component_props = {}
    content_defaults = []
    structural_false = []
    size_defaults = []
    style_defaults = []
    all_props_list = []
    
    for f in bas_files:
        cname = os.path.basename(f)[:-4]
        with open(f, "r", encoding="utf-8", errors="ignore") as fp:
            lines = fp.readlines()
            
        props = []
        for line in lines:
            line_str = line.strip()
            if not line_str.lower().startswith("#designerproperty:"):
                continue
            data = parse_directive(line_str)
            if "key" in data:
                props.append(data)
                key = data.get("key", "")
                dval = data.get("defaultvalue", "")
                ftype = data.get("fieldtype", "").lower()
                desc = data.get("description", "")
                choices = data.get("list", "")
                
                all_props_list.append({
                    "component": cname,
                    "key": key,
                    "type": ftype,
                    "default": dval,
                    "list": choices,
                    "description": desc
                })
                
                # 1. Content/Placeholder Traps
                if ftype == "string" and dval and dval not in (
                    "", "auto", "none", "default", "solid", "md", "theme", "0", 
                    "True", "False", "CENTER", "LEFT", "RIGHT", "normal"
                ):
                    if any(w in key.lower() for w in ("text", "title", "label", "placeholder", "caption", "message", "heading", "content", "name")):
                        content_defaults.append((cname, key, dval, desc))
                # 2. Structural False Flags (features off by default)
                elif ftype == "boolean" and dval.lower() == "false":
                    if not any(w in key.lower() for w in ("disabled", "loading", "readonly", "hidden")):
                        structural_false.append((cname, key, desc))
                # 3. Size / Dimension Defaults
                elif any(s in key.lower() for s in ("width", "height", "size", "margin", "padding")):
                    size_defaults.append((cname, key, dval, desc))
                # 4. Style & Variant Defaults
                elif key.lower() in ("variant", "style", "color", "rounded", "shape"):
                    style_defaults.append((cname, key, dval, choices, desc))
                    
        component_props[cname] = props
        
    total_props = len(all_props_list)
    print(f"Total Designer Properties Audited: {total_props}")
    print(f"Content / Placeholder Traps: {len(content_defaults)}")
    print(f"Structural False Defaults: {len(structural_false)}")
    print(f"Size / Layout Defaults: {len(size_defaults)}")
    print(f"Style / Variant Defaults: {len(style_defaults)}")
    
    out_json = os.path.join(REPO_ROOT, "tools", "designer_properties_audit.json")
    with open(out_json, "w", encoding="utf-8") as fp:
        json.dump({
            "total_components": len(bas_files),
            "total_properties": total_props,
            "content_defaults": content_defaults,
            "structural_false": structural_false,
            "size_defaults": size_defaults,
            "style_defaults": style_defaults,
            "all_properties": all_props_list
        }, fp, indent=2)
    print(f"Saved audit report to {out_json}")

if __name__ == "__main__":
    main()
