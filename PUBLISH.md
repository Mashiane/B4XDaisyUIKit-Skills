# Publish & Install Guide — B4XDaisyUIKit-Skills (Claude Code plugin)

Everything in `dist/` is a **self-contained** plugin package: publish it
to GitHub and users install the skills via Claude Code.

Build it from the working tree with:

```powershell
powershell -File create-dist.ps1        # lean (this default)
powershell -File create-dist.ps1 -Full  # verbatim dev copy (keeps all sd5 snapshots)
```

## What installs the skills

| Component | Role |
|---|---|
| `.claude-plugin/marketplace.json` | Marketplace discovery — `claude plugin marketplace add` reads this. |
| `.claude-plugin/plugin.json` + `plugin.json` | Plugin definition (metadata). Skills are auto-discovered from `skills/` (each `skills/<name>/SKILL.md`). |
| `skills/` | The 7 production skills (valid `name:`/`description:` frontmatter). |
| `docs/`, `ENGINEERING-CONSTITUTION.md` | Runtime references the skill bodies point to (gate machine, schema, manifest, constitution). |
| `README.md`, `LICENSE` | Repo documentation + MIT license. |
| `install.ps1` | Build & install script to build B4A project and install APK to device. |

## Install (end user)

```bash
# 1. Add this repository as a Claude Code marketplace
claude plugin marketplace add <published-repo-url>

# 2. Install the plugin (and its skills)
claude plugin install b4xdaisyuikit-skills
```

Published as a one-plugin marketplace repo, users can install it directly:

```bash
claude plugin install <published-repo-url>
```

## Publish checklist
- [ ] JSON valid: `.claude-plugin/marketplace.json`, `.claude-plugin/plugin.json`, `plugin.json`
- [ ] `marketplace.json`.plugins[0].source = "./" (packaged in this repo)
- [ ] `plugin.json`.version matches the marketplace `plugins[].version`
- [ ] 7 `SKILL.md` present and parsed
- [ ] `skills/` contains no `__pycache__` or dev artifacts
- [ ] No `eval/`, `sd5-book-to-skill/`, `.commandcode/`, `.freebuff/`, stale `.zip` leaked in

## Omissions (by design)
- `eval/` — the quality/regression harness. It is a skill-*authoring* tool, not something a skill *consumer* installs. It lives in the source repo only.
- `gold-apps/` — the canonical reference application and evaluation truth data. Same rationale: authoring-time, not install-time.
- `sd5-book-to-skill/` — internal library-to-skill extraction and generation pipeline. Authoring-only tool, not distributed.
- `.commandcode/`, `.freebuff/` — internal-only tool configs.
- `b4xdaisyuikit-skills.zip` — stale distribution artifact (tracked off in git).