# ⚡ B4XDaisyUIKit-Skills

> **Supercharge Claude Code, Antigravity, OpenCode, Codex & AI Coding Agents to build 100% native B4X (B4A Android, B4i iOS, B4J Desktop) mobile apps with DaisyUI / Tailwind CSS design semantics.**

[![B4X Forum Thread](https://img.shields.io/badge/B4X_Forum-Thread_#171762-007ACC?style=flat&logo=android)](https://www.b4x.com/android/forum/threads/ai-skills-b4xdaisyuikit-skills-supercharge-claude-to-code-b4xdaisyuikit-instantly-beta.171762/)
[![GitHub Release](https://img.shields.io/badge/Release-v1.3.0-blue.svg)](https://github.com/Mashiane/B4XDaisyUIKit-Skills/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Library Parity](https://img.shields.io/badge/Components-108_Classes-brightgreen.svg)](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI)

---

## 📖 Overview

**`B4XDaisyUIKit-Skills`** is the official AI agent skill suite for **[B4XDaisyUIKit](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI)**. It equips AI developer agents (Claude Code, Antigravity, OpenCode, Codex, Cursor) with full, verified knowledge to autonomously scaffold, design, compose, verify, and review native cross-platform B4X applications.

### 🌟 Key Capabilities
* 🎯 **100% Native Code Generation**: Converts web-oriented Tailwind CSS and DaisyUI concepts into robust native B4X views, layouts, and event handlers.
* 📦 **108 Self-Contained Component Skill Files**: Every component has its own dedicated markdown file in `components/<name>.md` with Web CSS translation tables, B4X constructor recipes, designer properties, declared events, and public methods.
* 🔄 **DaisyUI Web $\leftrightarrow$ Native B4X Translation**: Direct mapping for semantic variants (`btn-primary`), styles (`badge-soft`, `alert-outline`), sizes (`input-sm`, `dock-lg`), shapes (`btn-circle`), modifiers (`card-side`), and sub-panels (`card-title`, `collapse-content`).
* 📋 **Canonical Complex Component Patterns**: Hardened construction recipes for `B4XDaisyList` (3-pillar virtualized recycling), `B4XDaisyCard` (multi-subpanel), `B4XDaisyHero`, `B4XDaisyAccordion`, `B4XDaisySweetAlert` (async `Wait For` dialogs), `B4XDaisyDrawer`, `B4XDaisyDock`, and `B4XDaisyCarousel`.
* 📚 **9 Domain-Specific Recipe Cookbooks**: Step-by-step guides for Dashboards, Forms & Validation, Navigation, Feedback & Overlays, Media & Cards, Data Display, Onboarding Tours, Sliders, and Real-Time CRUD with PocketBase.
* 🏛️ **HCI & UX Master Doctrine**: Enforces quantitative design laws (Fitts's Law $\ge 48\text{dp}$ touch targets, Hick's Law $\le 5$ nav items, WCAG 2.2 AA contrast $\ge 4.5:1$, and 4-state UI completeness).
* 🛡️ **Zero-Hallucination API Guardrails**: Constrains AI models to exact, verified signatures across 108 native component classes.
* ⚡ **Greenfield Bootstrap & Verification**: Automatic app shell generation (`b4x-project-bootstrap`) and multi-stage pre-scan and quality inspection gates (`b4x-verify`, `b4x-orchestrator`).

---

## 💻 System & Toolchain Requirements

* **Target Platform:** Native Android APKs generated via B4A (Basic4Android), B4i (iOS), and B4J (Desktop).
* **Host Operating System:** Windows 10/11 (standard B4A development environment).
* **Required Tooling:**
  - **B4A 12+** with `B4XDaisyUIKit.b4xlib` in Additional Libraries.
  - **Android SDK** (`platform-tools/adb.exe` in PATH or standard SDK locations).
  - **PowerShell 5.1+** or **PowerShell 7+**.

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

#### Option A: Current Workspace / Project
Clone or copy the repository into your workspace `.claude/plugins/` or `.agents/plugins/`:
```bash
git clone https://github.com/Mashiane/B4XDaisyUIKit-Skills.git .claude/plugins/b4xdaisyuikit-skills
```

#### Option B: Global User Configuration
Install globally for all sessions:
```bash
# For Claude Code:
git clone https://github.com/Mashiane/B4XDaisyUIKit-Skills.git ~/.claude/plugins/b4xdaisyuikit-skills

# For Antigravity / Gemini:
git clone https://github.com/Mashiane/B4XDaisyUIKit-Skills.git ~/.gemini/config/plugins/b4xdaisyuikit-skills
```

---

## 📂 Skill Suite Architecture

```text
b4xdaisyuikit-skills/
├── plugin.json                              # Plugin manifest & metadata
├── README.md                                # Documentation & installation guide
└── skills/
    ├── b4x-orchestrator/                    # First-Time-Right release pipeline sequencer
    │   ├── SKILL.md
    │   └── references/                      # Orchestration contracts & release checklists
    ├── b4x-project-bootstrap/               # Greenfield app generator & templates
    │   ├── SKILL.md
    │   └── references/                      # Shell templates (B4XMainPage, project.b4a, build-watch)
    ├── b4x-verify/                          # Quality inspection & conformance gate
    │   ├── SKILL.md
    │   └── references/                      # Static AST rule checker & UX review rules
    └── b4xdaisyuikit/                       # Core UI/UX design & component synthesis skill
        ├── SKILL.md                         # 6-Stage Blueprint workflow orchestrator
        ├── chapters/                        # 9 End-to-End Domain Recipe Cookbooks
        │   ├── ch01-dashboards.md           # KPI cards, stat tiles, progress bars
        │   ├── ch02-interactive-forms.md    # Form layouts, validation, fieldsets
        │   ├── ch03-navigation.md           # Navbars, bottom docks, drawers, tabs
        │   ├── ch04-feedback.md             # Toasts, SweetAlert dialogs, modals, action sheets
        │   ├── ch05-media-cards.md          # Cards, hero banners, image figures
        │   ├── ch06-data-display.md         # Virtualized recycling lists, accordions, timelines
        │   ├── ch07-onboarding-security.md  # EnjoyHint tours, OTP pins, pickers, boom menus
        │   ├── ch08-dashboards-media-sliders.md # Carousels, before/after diffs, aura glows
        │   └── ch09-backend-realtime.md     # PocketBase CRUD, signatures, PDF viewing
        ├── components/                      # 108 Self-Contained Component Skill Files
        │   ├── button.md                    # Syntax, Web classes, props, events, methods
        │   ├── card.md                      # Sub-panel layout (Title, Content, Actions)
        │   ├── list.md                      # 3-pillar virtualized recycling pattern
        │   ├── modal.md                     # Dialog overlay lifecycle & action buttons
        │   └── ...                          # (All 108 B4XDaisy component classes)
        └── references/                      # 16 Architectural & API Doctrine References
            ├── api-cheat-sheet.md           # Exhaustive 254 KB API cheat sheet
            ├── app-scaffolds.md             # Standard multi-page app blueprints
            ├── b4x-primer.md                # B4X language primer & conventions
            ├── colors-and-themes.md         # Theme tokens & palette resolution
            ├── component-creation-patterns.md # Component router & deviation index
            ├── component-manifest.md        # 108-component manifest & taxonomy
            ├── conversion-workflows.md       # Web/Figma to B4X translation workflow
            ├── creative-director.md         # Design principles & aesthetic guidance
            ├── daisyui-native-compatibility.md # Web concepts to B4X components
            ├── design-heuristics.md         # Nielsen heuristics & usability laws
            ├── design-tokens.md             # Spacing, sizing, and typography tokens
            ├── layout-patterns.md           # Vertical accumulator 'y' & scroll math
            ├── negative-knowledge.md        # Anti-hallucination rules & banned APIs
            ├── page-architectures.md        # Single-page vs multi-page architecture
            ├── rules-enforcer.md            # Hard rules (Fitts, Miller, Hick, WCAG)
            └── ux-master-doctrine.md        # Master UI/UX engineering doctrine
```

---

## 🛠️ The 6-Stage AI Development Workflow

When paired with an AI coding agent, the skill enforces a deterministic 6-stage execution pipeline:

```text
STAGE 0: Screen Contract       → Define functional requirements, states, and data models
   ↓
STAGE 1: Setup & Bootstrap     → Scaffold B4X shell, page modules, and build scripts
   ↓
STAGE 2: Rules Enforcer        → Enforce touch targets (≥48dp), contrast (≥4.5:1), and layout limits
   ↓
STAGE 3: Creative Direction    → Select cohesive color tokens, theme palettes, and typography
   ↓
STAGE 4: Page Architecture     → Choose navigation model (Stack, Drawer, or Dock)
   ↓
STAGE 5: Component Synthesis   → Generate native B4X code using exact 'components/<name>.md' APIs
   ↓
STAGE 6: Quality Gate & Verify → Static AST pre-scan, automated compilation, and live device capture
```

---

## 📄 License & Credits

* **Author:** Mashiane
* **Repository:** [https://github.com/Mashiane/B4XDaisyUIKit-Skills](https://github.com/Mashiane/B4XDaisyUIKit-Skills)
* **Parent Library:** [B4XDaisyUIKit](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI)
* **License:** [MIT License](LICENSE)
