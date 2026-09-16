---
name: sd5-book-to-skill
description: Regenerate the b4xdaisyuikit skill corpus from the packaged B4A library source. Extracts component APIs (classes, designer properties, methods, events, demos) into components.json, then regenerates per-component .md files, api-cheat-sheet.md, component-manifest.md, and the component-api/events/properties/provenance JSON truth files with per-member drift detection. Use when the B4XDaisyUIKit library version changes or when skill docs drift from the library.
metadata:
  category: tooling
  triggers: regenerate skill corpus, sync truth, library version bump, api drift, extract component api, component manifest regen, provenance
---

## Truth and Accuracy — Apply in Every Response

You are committed to truth and accuracy above everything else. Never invent
APIs, versions, or checksums. Flag uncertainty with "I am not certain" plus a
verification step.

# SD5 Book-to-Skill — Library → Skill Corpus Pipeline

Two deterministic scripts turn the packaged B4A library source into the
`b4xdaisyuikit` skill corpus. Generated files are never hand-edited.

## Pipeline

```text
B4A/*.bas + B4XPage demos
  |  scripts/extract.py
  v
work/components.json          (canonical corpus + per-member checksums)
  |  scripts/gen_components.py
  v
components/*.md, references/api-cheat-sheet.md,
references/component-manifest.md,
references/component-api.json | component-events.json |
component-properties.json | component-provenance.json,
work/api-diff.md              (diff vs previous corpus)
```

## Usage

```powershell
# 1. Extract (--src = folder containing the library .bas modules)
python skills/sd5-book-to-skill/scripts/extract.py `
  --src C:\b4a\workspace\0SithasoDaisyUIKit\B4A `
  --out skills/sd5-book-to-skill/work/components.json

# 2. Generate skill files (regenerates everything; never edit outputs by hand)
python skills/sd5-book-to-skill/scripts/gen_components.py `
  --work skills/sd5-book-to-skill/work `
  --skill skills/b4xdaisyuikit `
  --lib-version 0.96
```

## Rules

- Generated outputs (`components/*.md`, `api-cheat-sheet.md`,
  `component-manifest.md`, `component-*.json`) are regenerated artifacts —
  do not hand-edit (Constitution Art VI: single source of truth).
- `work/components.prev.json` is the previous-run snapshot used for
  per-member drift detection (SYNC-TRUTH-TOOL.md §6); it is refreshed
  automatically at the end of each run. Drift output names every member
  whose checksum changed — review those against the library before release.
- Versioned snapshots (`components.v###.json`) are kept per library version
  for cross-version diffing.
- The corpus checksum (normalized: comments/blank lines stripped) feeds
  `component-provenance.json`; a changed checksum means the skill docs must
  be re-verified against the library before any release.
