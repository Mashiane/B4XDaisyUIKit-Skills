# ⚡ B4XDaisyUIKit-Skills

> **Supercharge Claude Code & AI Coding Agents to build 100% native B4X (B4A Android, B4i iOS, B4J Desktop) apps with DaisyUI / Tailwind CSS design semantics.**

[![B4X Forum Thread](https://img.shields.io/badge/B4X_Forum-Thread_#171762-007ACC?style=flat&logo=android)](https://www.b4x.com/android/forum/threads/ai-skills-b4xdaisyuikit-skills-supercharge-claude-to-code-b4xdaisyuikit-instantly-beta.171762/)
[![GitHub Release](https://img.shields.io/badge/Release-v1.2.2-blue.svg)](https://github.com/Mashiane/B4XDaisyUIKit-Skills/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Library Parity](https://img.shields.io/badge/Components-104_Classes-brightgreen.svg)](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI)

---

## 📖 Overview

**`B4XDaisyUIKit-Skills`** is the official AI agent skill suite for **[B4XDaisyUIKit](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI)**. It equips AI developer agents (Claude Code, Antigravity, OpenCode, Codex, Cursor) with full, verified knowledge to autonomously scaffold, design, compose, and verify native cross-platform B4X applications.

### 🌟 What this enables:
* 🎯 **100% Native Code Generation**: Converts web-oriented Tailwind CSS and DaisyUI concepts into robust native B4X views, layouts, and event handlers.
* 🏛️ **HCI & UX Master Doctrine**: Encodes quantitative interaction laws (Fitts's Law $\ge 48\text{dp}$ touch targets, Hick's Law $\le 5$ nav items, Miller's Law 3-5 field chunking, WCAG 2.2 AA contrast $\ge 4.5:1$, and mandatory 4-state UI completeness).
* 👁️ **5-Stage Vision-to-B4X Engine**: Translates Figma auto-layouts, mobile screenshots, and UI mockups into clean B4X page hierarchies and exact cursor positioning math.
* 🛡️ **Zero-Hallucination API Guardrails**: Constrains AI agents to exact verified signatures across 104 native component classes and 94 live `B4XPage` reference implementations.
* ⚡ **One-Shot Greenfield Scaffolding**: Automatically scaffolds complete ready-to-build apps with loaders, SweetAlert dialogs, navigation models, and automated build scripts (`install.ps1`).
* 📦 **Zero-Configuration Asset Pipeline**: Pure `File.DirAssets` bundling delivered automatically via `B4XDaisyUIKit.b4xlib` with no `res/` folder required.

---

## 🚀 Quick Start & Installation

### 1. Install via Claude Code Plugin Marketplace (Recommended)

Add the marketplace repository and install the plugin suite directly in your Claude Code session:

```bash
# Step 1: Register the marketplace source
/plugin marketplace add Mashiane/B4XDaisyUIKit-Skills

# Step 2: Install the skills suite
/plugin install b4xdaisyuikit-skills@b4xdaisyuikit-skills
```

---

### 2. Manual Installation (Project-level or Global)

If you prefer manual installation into your workspace or user profile:

#### Option A: Current Workspace / Project
Clone or copy the repository into your workspace `.claude/skills/` or `.agent/skills/`:
```bash
git clone https://github.com/Mashiane/B4XDaisyUIKit-Skills.git .claude/plugins/b4xdaisyuikit-skills
```

#### Option B: Global Claude Configuration
Clone into your global user config directory (`~/.claude/plugins/` or `%USERPROFILE%\.gemini\config\plugins\`):
```bash
git clone https://github.com/Mashiane/B4XDaisyUIKit-Skills.git ~/.claude/plugins/b4xdaisyuikit-skills
```

---

## 🔄 Updating & Reloading

### Update to the Latest Version

To fetch and update the skills suite to the latest release:

```bash
# Update via plugin manager
/plugin update b4xdaisyuikit-skills@b4xdaisyuikit-skills
```

Or if cloned via git:
```bash
cd <path-to-b4xdaisyuikit-skills>
git pull origin main
```

### Reload Skills in an Active Session

To refresh skills in an ongoing Claude Code or Antigravity session without restarting:
```bash
/reload
```
Or start a new CLI session.

---

## 🛠️ The Skills Suite at a Glance

This repository packages **3 specialized skills**:

| Skill | Purpose | When to Use |
|---|---|---|
| **`b4xdaisyuikit`** | Core UI component composition, UX Master Doctrine, web-to-native mapping, 5-stage vision engine, token cheatsheet, verified recipes, and negative guardrails. | Adding views, designing screens, binding events, and styling with DaisyUI tokens. |
| **`b4x-project-bootstrap`** | Greenfield project generator. Produces complete app shells (`B4XMainPage.bas`, navigation templates, clean `.b4a`, `install.ps1`). | Starting a brand-new native Android, iOS, or desktop app project from scratch. |
| **`b4x-verify`** | Automated pre-build static analysis, conformance verification gate, UX quality inspector, and post-build visual UX review. | Validating code before compilation (`verify-conformance.ps1`); reviewing rendered Android screens post-build (`capture-screens.ps1` + `ux-review.md`). |

---

### 1. `b4xdaisyuikit` (Master UI Composition Skill)
* **89 Component Guides:** Detailed specifications in `components/<name>.md` covering constructor parameters, designer properties, methods, events, and recipes.
* **UX Master Doctrine & DoD (`references/ux-master-doctrine.md`):** Quantitative HCI standards, WCAG 2.2 AA contrast compliance, 4-state UI completeness, and pre-ship Definition of Done.
* **5-Stage Vision & Conversion Engine (`references/conversion-workflows.md`):** Structured vision pipeline for translating Figma auto-layouts, HTML, and UI screenshots into native B4X code.
* **Web-to-Native Dictionary (`references/daisyui-native-compatibility.md`):** Direct translation table from HTML classes (`.btn`, `.card`, `.badge`, `.timeline`, `.collapse`, `.shine-button`, etc.) to native B4X classes.
* **Design Token Cheatsheet (`cheatsheet.md`):** Sizing tokens, corner radii (`rounded-box`, `rounded-field`, `rounded-full`), border widths, dashed lines, and dynamic theme palettes (`primary`, `secondary`, `accent`, `error`, `success`, `warning`, `info`, `neutral`).

### 2. `b4x-project-bootstrap` (App Scaffolding)
* Drops verified shell files from `references/`:
  - `B4XMainPage.template.bas` (Includes global `AppLoader`, `SweetAlert`, page transition engine, splash loader, and home screen pinning).
  - `B4XPageNavDock.template.bas` (Pinned top navbar + bottom dock navigation tabs).
  - `B4XPageNavOnly.template.bas` (Pinned top navbar with back button for sub-pages).
  - `project.template.b4a` (Pre-configured `.b4a` descriptor with zero `res/` requirement).
  - `install.template.ps1` (Automated build, clean, install, and device launch).

### 3. `b4x-verify` (Conformance & Quality Gate + Visual UX Review)
* **Phase 1 — pre-build static gate** (`verify-conformance.ps1`), run before `./install.ps1`:
  - Validates that every referenced component exists in the official library manifest.
  - Verifies `.b4a` `ModuleN=` and `FileN=` wiring counts to prevent silent compile omissions.
  - Enforces `pageScroll.AutoFit` and `navbar.BringToFront` lifecycle rules.
  - Inspects structured error logging (detects empty Catch blocks) and warns on unhandled touch conflict in gesture components.
* **Phase 2 — post-build visual UX review** (`capture-screens.ps1` + `ux-review.md`), run after the app launches on device/emulator:
  - `capture-screens.ps1`: adb screencap of rendered screens to `<AppFolder>/ux-review/screens/`, with a no-device fallback that points the user at the same folder for manual PNG drop.
  - `ux-review.md`: the merged Senior Mobile Design Auditor Pro spec (Nielsen's 10, Material/Android, WCAG 2.2 AA, Visual UI, Visual Hierarchy, Touch Targets >= 48dp, Form Usability, Error Prevention, plus full-mode Information Architecture, Perceived Performance, Conversion, Dark Mode, Tablet/Foldable, and Design System/DaisyUI consistency). Every finding carries severity 1-5 + Priority Now/Next/Later, Confidence, Verification Required (screenshots cannot prove dp sizes, TalkBack, contrast ratios, runtime perf), Evidence, Why It Matters, Recommendation, Expected Impact, screenshot file+area, and a drafted B4X fix ticket. Output: Executive Summary (Overall/UI/UX/A11y/Mobile Interaction/Perf scores), Issue Register, Top 5/10, High-ROI Quick Wins, Accessibility Blockers, Runtime Verification Checklist, Performance Perception Risks, Strengths, Design Consistency Risks, Flow Assessment (multi-screen), Final Assessment (Release Readiness). Two modes: `quick` (7-category) for iteration, `full` (14-category) before ship. Reviewer discipline: evidence-based, no invented problems, no preference-as-defect. B4X overlays: rule-ID citation, drafted paste-ready B4X fix tickets, `.bas`-lock handling, screenshot-must-exist, no invented APIs. Report written to `<AppFolder>/ux-review/UX-REVIEW-<YYYYMMDD>.md`.

---

## 🤝 Recommended Companion Skills

To achieve production-grade design and complete full-stack functionality, pair this native UI component skill with the following official companion skills:

### 1. Design Intelligence & Aesthetics ([ui-ux-pro-max](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill))
For visual styles, curated 160+ color palettes, accessible contrast ratios, font pairings, mobile thumb-zone ergonomics, and chart choices:
```bash
/plugin marketplace add nextlevelbuilder/ui-ux-pro-max-skill
/plugin install ui-ux-pro-max@nextlevelbuilder
```

### 2. Core Language & Backend Logic ([b4x-skill](https://github.com/Jerryk133/b4x-skill))
For core B4X language semantics, Resumable Subs / `Wait For`, SQLite database persistence, network calls (`HttpJob`), and native Android permissions/manifests:
```bash
/plugin marketplace add Jerryk133/b4x-skill
/plugin install b4x@b4x-marketplace
```

---

## 📚 Community & Discussion

* 💬 **Official B4X Forum Discussion Thread:**  
  [AI Skills: b4xdaisyuikit-skills — Supercharge Claude to Code B4XDaisyUIKit Instantly! (B4X.com)](https://www.b4x.com/android/forum/threads/ai-skills-b4xdaisyuikit-skills-supercharge-claude-to-code-b4xdaisyuikit-instantly-beta.171762/)
* 📦 **B4XDaisyUIKit Main Source Repository:**  
  [https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI)
* ☁️ **Google Drive Library & Demos Archive:**  
  [B4XDaisyUIKit Downloads & Releases](https://drive.google.com/drive/folders/1Ccr4SiPYugPCsN0juwwwqAZGewMW-xZj?usp=sharing)

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.
