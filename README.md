# ⚡ B4XDaisyUIKit-Skills

> **Supercharge Claude Code, Antigravity, OpenCode, Codex & AI Coding Agents to build 100% native B4A (Android) apps with DaisyUI / Tailwind CSS design semantics.**

[![B4X Forum Thread](https://img.shields.io/badge/B4X_Forum-Thread_#171762-007ACC?style=flat&logo=android)](https://www.b4x.com/android/forum/threads/ai-skills-b4xdaisyuikit-skills-supercharge-claude-to-code-b4xdaisyuikit-instantly-beta.171762/)
[![GitHub Release](https://img.shields.io/badge/Release-v1.4.8-blue.svg)](https://github.com/Mashiane/B4XDaisyUIKit-Skills/releases)
[![Skills Suite](https://img.shields.io/badge/Skills-7_Modules-purple.svg)](#-skill-suite-architecture--capability-matrix)
[![Library Parity](https://img.shields.io/badge/Library-104_Classes-brightgreen.svg)](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---

## 📖 Overview

**`B4XDaisyUIKit-Skills`** is an AI agent skill suite for **[B4XDaisyUIKit](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI)**. It guides agents through planning, scaffolding, native UI composition, source verification, builds, runtime review, and regression work for B4A applications. Component APIs are grounded in extracted library declarations and linked demo references; a reference alone does not mean an app has compiled or run.

The suite provides reusable workflows, component references, and verification gates. It helps agents avoid unsupported APIs and report what they checked. Build and runtime success are established only when those checks are actually run.

---

## 🧭 Failure Modes and Guardrails

The table summarizes common risks in prompt-driven B4A UI work and the guardrails this suite provides. It is a capability overview, not a measured benchmark.

| Dimension | Generic LLM (Without Skills) ❌ | With B4XDaisyUIKit-Skills ✅ |
| :--- | :--- | :--- |
| **Technology Stack** | May apply web DOM or CSS assumptions to a native app. | Guides composition with native B4X views and B4XDaisyUIKit components; compilation is confirmed by running the build gate. |
| **API Accuracy** | May invent methods or properties that the library does not expose. | Uses API declarations extracted from **104 B4XDaisy source modules**, with **108 component guidance files** including negative-knowledge guides. |
| **Layout Math** | Relies on CSS box models or magic numbers; components overlap or clip off-screen. | Enforces **vertical accumulator math** (`y = y + h + gap`), virtualized recycling lists, and screen boundaries. |
| **UX & Ergonomics** | Violates mobile laws: tiny 20dp buttons, unreadable low-contrast text. | Enforces **Fitts's Law** ($\ge 48\text{dp}$ touch targets), **Hick's Law** ($\le 5$ nav items), and **WCAG 2.2 AA** ($\ge 4.5:1$ contrast). |
| **Lifecycle & Safety** | Crashes on view tree parent touch stealing or missing initialization. | Implements **parent scroll disallowance** and standard 14 base properties across all custom views. |
| **Delivery Reliability** | Changes can reach a device without clear evidence of what was checked. | Provides staged static, build, runtime, UX, and regression gates; only completed checks count as evidence. |

---

## 🧭 Intent & Task Router ("When to Use What")

AI agents and developers can route directly to the appropriate starting skill based on task keywords and intent:

<!-- AUTOGEN_ROUTER_START -->
| User Intent / Task Keywords | Recommended Starting Skills | Why This Order? | Rejected / Why Not? |
| :--- | :--- | :--- | :--- |
| **new app, greenfield, scaffold, project file, B4XMainPage** | b4x-project-bootstrap, b4xdaisyuikit, b4x-verify | shell first, then composition, then gate | b4x-regression (no existing behavior to protect) |
| **login screen, auth flow, form validation** | b4x-application-planner, b4xdaisyuikit, b4x-verify | auth touches requirements + contract before composition | b4x-project-bootstrap (not greenfield) |
| **navigation shell, navdock, multi-page app, back behavior** | b4x-application-planner, b4xdaisyuikit, b4x-project-bootstrap, b4x-verify | shell structure + composition + gate | b4x-regression (greenfield, nothing to regress) |
| **plan app, feature planning, requirements, architecture** | b4x-application-planner (+ orchestrator for full build) | contract set before code; no contract = no gen | b4x-feature-engineer (no contract yet), bootstrap (plan before shell) |
| **implement feature, vertical slice, connect screen** | b4x-feature-engineer, b4xdaisyuikit, b4x-verify | slice needs domain + gate | bootstrap (not greenfield), orchestrator (single feature, not release) |
| **compose UI, screen, form, dashboard, navbar, modal, DaisyUI native** | b4xdaisyuikit, b4x-verify | domain generation + conformance gate | generic styling skill (platform mismatch; authority 6 loses to 2) |
| **verify, conformance, invented API, module wiring, before build** | b4x-verify | static gate before compile | — (gate never skipped; failed gate blocks) |
| **release, ship app, end-to-end, full app, screen contract** | b4x-orchestrator + all depends | thin sequencer owns G0-G8 for multi-scope release | single-component shortcut (release requires full gate chain) |
| **change existing app, fix, regression, impact** | b4x-regression, b4x-verify | baseline → impact → targeted + smoke | bootstrap (not greenfield), planner (unless contract changes) |
<!-- AUTOGEN_ROUTER_END -->

---

## 🗺️ Skill Suite Architecture & Capability Matrix

The suite includes 7 production skills with strict authority tiers (mirroring `ENGINEERING-CONSTITUTION.md` Art I):

<!-- AUTOGEN_SKILLS_START -->
| Skill | Authority | Category | When to Use (Triggers) | Core Objective & Output |
| :--- | :---: | :---: | :--- | :--- |
| **b4x-application-planner** | L4 | planning | build app, create application, mobile app, b4a app, feature planning... | Plan a complete B4A application or substantial feature before implementation. Produces traceable application, feature, domain, data, navigation, screen, and acceptance contracts without inventing B4XDaisyUIKit or backend APIs. Enforces engineering constitution gates G0-G8 per GATE-STATE-MACHINE.md. |
| **b4x-feature-engineer** | L4 | implementation | implement feature, add feature, build feature, b4x feature, CRUD feature... | Implement a B4A application feature as a traceable vertical slice from contract through domain, data, state, native UI, navigation, errors, acceptance tests, and verification. |
| **b4x-orchestrator** | L4 | orchestration | orchestrate, release gate, first-time-right, ship app, build full app... | Thin orchestration layer for First-Time-Right delivery. Enforces contract → generate → pre-scan → verify-conformance → build → build-watch → capture → ux-review → remediation loop with hard exit codes. Use when building a complete app, releasing a screen, or needing a release-blocking gate instead of advisory checks. |
| **b4x-project-bootstrap** | L4 | scaffolding | new app, new project, scaffold app, bootstrap b4x, b4xmainpage... | Use when scaffolding a brand-new native Android app built on the B4XDaisyUIKit component library, when creating a new B4A project folder from scratch, or when wiring B4XMainPage shell + .b4a project file + install script for an app. Produces the standard bootstrap shell (loader, SweetAlert, animation, pin-to-home) ready for page composition. |
| **b4x-regression** | L4 | quality | regression, modify existing app, refactor, bug fix, verify change... | Safely change an existing B4A application by establishing a baseline, analyzing impact, running targeted and critical-journey regression checks, and producing release evidence. |
| **b4x-verify** | L4 | verification | verify app, conformance check, invented api, module wiring, NumberOfModules... | Use when validating a generated B4XDaisyUIKit user interface app before build (conformance / compile-readiness / static layout gate) OR when running a post-build visual UX review of rendered Android screens against Nielsen heuristics, Material Design, and WCAG 2.2 AA. |
| **b4xdaisyuikit** | L2 | domain | b4xdaisy, b4x page, b4a screen, compose ui, daisyui native... | Native Android UI/UX composition from B4XDaisyUIKit (108 component guidance files, 9 chapters, 20 references). |
<!-- AUTOGEN_SKILLS_END -->

---

## 🔄 First-Time-Right (FTR) Delivery Pipeline (G0 → G8)

For complete multi-screen applications or release cycles, `b4x-orchestrator` sequences the lifecycle gates defined in `docs/architecture/GATE-STATE-MACHINE.md`. Planning produces the draft plan and contracts before G0 is evaluated.

```text
USER REQUIREMENT
   │
   ▼ PLAN (before G0)
b4x-application-planner ──► Drafts application plan and traceable contracts
   │
   ▼ [G0: Requirements]
verify-contract         ──► Validates contract index and requirement traceability
   │
   ▼ [G1: Architecture]
b4x-project-bootstrap   ──► Aligns project shell and pages with the approved navigation architecture
   │
   ▼ [G2: Feature Implementation + UI Conformance]
b4x-feature-engineer    ──► Implements vertical slices; b4xdaisyuikit composes reference-grounded native UI
   │
   ▼ [G3: Static Source Integrity]
b4x-verify              ──► Pre-scan, then conformance checks for APIs, wiring, and layout
   │
   ▼ [G4: Compilation]
install.ps1             ──► B4ABuilder compiles the APK (exit 0 required); adb deploys it for G5
   │
   ▼ [G5: Runtime]
build-watch             ──► Confirms launch, runtime health, and acceptance scenarios
   │
   ▼ [G6: UX]
b4x-verify              ──► Captures and reviews screens against UX criteria
   │
   ▼ [G7: Regression Audit]
b4x-regression          ──► Runs impact-scoped checks and records regression evidence
   │
   ▼ [G8: Release Gate]
b4x-orchestrator        ──► Checks required gate evidence and assembles the release bundle
```

---

## ⚡ Practical Walkthrough: From Prompt to Native UI Composition

The code below is illustrative. It shows the style of generated B4X composition, not a claim that this exact sample has been built or run.

### 1. The Developer Prompt
> *"Create a mobile settings screen with a dark DaisyUI theme, an avatar header, account notification switches, and a logout button."*

### 2. Contract & Planning (`b4x-application-planner`)
The agent establishes the contract:
- Root container: Scrollable `B4XDaisyPageScroll`
- Theme tokens: Dark background (`base-100`), Primary text (`base-content`)
- Controls: `B4XDaisyAvatar`, `B4XDaisyToggle`, `B4XDaisyButton`

### 3. Reference-Grounded B4X Composition (`b4xdaisyuikit`)
The agent checks component signatures and usage patterns against the component references and linked demos before composing app-specific B4X code:

```vb
Sub Class_Globals
    Private Root As B4XView
    Private xui As XUI
    Private pageScroll As B4XDaisyPageScroll
    Private avUser As B4XDaisyAvatar
    Private swNotifications As B4XDaisyToggle
    Private btnLogout As B4XDaisyButton
End Sub

Public Sub Initialize
End Sub

Private Sub B4XPage_Created (Root1 As B4XView)
    Root = Root1
    Root.Color = xui.Color_RGB(29, 35, 42) ' Dark DaisyUI base-100
    
    Dim y As Int = 16dip
    Dim usableWidth As Int = Root.Width - 32dip
    
    ' 1. Scrollable Page Container
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(Root, 0, 0, Root.Width, Root.Height)
    
    ' 2. Avatar Header
    avUser.Initialize(Me, "avUser")
    avUser.Shape = "circle"
    avUser.Size = "lg"
    avUser.AddToParent(pageScroll.Content, 16dip, y, 64dip, 64dip)
    y = y + 64dip + 20dip
    
    ' 3. Notification Toggle (Fitts's Law >= 48dp touch target)
    swNotifications.Initialize(Me, "swNotifications")
    swNotifications.Text = "Push Notifications"
    swNotifications.Color = "primary"
    swNotifications.Checked = True
    swNotifications.AddToParent(pageScroll.Content, 16dip, y, usableWidth, 48dip)
    y = y + 48dip + 24dip
    
    ' 4. Logout Button (Semantic Error Outline)
    btnLogout.Initialize(Me, "btnLogout")
    btnLogout.Text = "Log Out"
    btnLogout.Color = "error"
    btnLogout.Variant = "outline"
    btnLogout.AddToParent(pageScroll.Content, 16dip, y, usableWidth, 48dip)
    y = y + 48dip + 32dip
    
    ' Resize content scroll height
    pageScroll.ContentHeight = y
End Sub

Private Sub btnLogout_Click
    Log("Logout requested")
End Sub
```

### 4. Verification Gate (`b4x-verify`)
When run against the generated project, the verification skill checks source conformance before compilation. Example criteria include:
- No web DOM or HTML tags in native B4X screens.
- Touch targets meet the project's chosen minimum size.
- Constructors and properties are checked against available library references.
- Scroll content sizing is reviewed for the screen's layout.

---

## 💻 System & Toolchain Requirements

* **Target Platform:** Native Android APKs generated via B4A (Basic4Android). B4XDaisyUIKit targets B4A/Android only.
* **Host Operating System:** Windows 10/11 (standard B4A development environment).
* **Required Tooling:**
  - **B4A 12+** with `B4XDaisyUIKit.b4xlib` in Additional Libraries.
  - **Android SDK** (`platform-tools/adb.exe` in PATH or standard SDK locations).
  - **PowerShell 5.1+** or **PowerShell 7+**.
* **Required B4X Libraries:**
  - `B4XDaisyUIKit` (v0.97+)
  - `XUI` (core B4X cross-platform UI)
  - `B4XPages` (standard page architecture)
  - `JavaObject` (platform touch climbing)

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

## 📂 Skill Suite Directory Structure

```text
b4xdaisyuikit-skills/
├── plugin.json                              # Plugin manifest & metadata
├── skills-registry.json                     # Machine-readable skill index (production skills)
├── README.md                                # Authoritative documentation & user guide
├── tools/
│   ├── sync-skills-readme.ps1               # Automated README synchronizer (counts, matrix, router)
│   ├── validate-skills.ps1                  # Self-audit: registry, deps, refs, and linting
│   └── check-discovery.ps1                  # Discovery check: intent-to-skill resolution
└── skills/
    ├── b4x-application-planner/             # Requirements, architecture, and contract planning
    ├── b4x-feature-engineer/                # Contract-to-code vertical-slice implementation
    ├── b4x-orchestrator/                    # First-Time-Right release pipeline sequencer
    ├── b4x-project-bootstrap/               # Greenfield app generator & templates
    ├── b4x-regression/                      # Impact analysis and regression release evidence
    ├── b4x-verify/                          # Quality inspection & conformance gate
    └── b4xdaisyuikit/                       # Core UI/UX design & component synthesis skill
        ├── SKILL.md                         # Master component orchestrator
        ├── chapters/                        # 9 End-to-End Domain Recipe Cookbooks
        │   ├── ch01-dashboards.md           # KPI cards, stat tiles, progress bars
        │   ├── ch02-interactive-forms.md    # Form layouts, validation, fieldsets
        │   ├── ch03-navigation.md           # Navbars, bottom docks, drawers, tabs
        │   ├── ch04-feedback.md             # Toasts, SweetAlert dialogs, modals
        │   ├── ch05-media-cards.md          # Cards, hero banners, image figures
        │   ├── ch06-data-display.md         # Virtualized recycling lists, accordions
        │   ├── ch07-onboarding-security.md  # EnjoyHint tours, OTP pins, pickers
        │   ├── ch08-dashboards-media-sliders.md # Carousels, diffs, aura glows
        │   └── ch09-backend-realtime.md     # PocketBase CRUD, signatures, PDF viewing
        ├── components/                      # 108 guidance files for 104 library classes (includes negative knowledge)
        │   ├── button.md                    # Button syntax, variants, and event handlers
        │   ├── card.md                      # Sub-panel layout (Title, Content, Actions)
        │   ├── list.md                      # 3-pillar virtualized recycling pattern
        │   ├── sweet-alert.md               # Async modal confirmation dialogs
        │   └── ...                          # (Remaining component guidance files)
        └── references/                      # 20 Architectural & API Doctrine References
            ├── api-cheat-sheet.md           # Exhaustive API reference
            ├── colors-and-themes.md         # Theme tokens & palette resolution
            ├── negative-knowledge.md        # Anti-hallucination rules & banned APIs
            ├── rules-enforcer.md            # Hard HCI rules (Fitts, Miller, Hick, WCAG)
            └── ux-master-doctrine.md        # Master UI/UX engineering doctrine
```

---

## 🧪 Self-Audit & Conformance Harness

The source repository includes scripts to check registry consistency, skill references, and intent routing:

```powershell
# 1. Validate skills registry, dependencies, broken links, and frontmatter
pwsh -File tools/validate-skills.ps1

# 2. Validate deterministic intent-to-skill discovery
pwsh -File tools/check-discovery.ps1

# 3. Synchronize README metrics with skills-registry and components
pwsh -File tools/sync-skills-readme.ps1
```

---

## Related Content

- [10 AI Mobile App Design Examples with Prompts You Can Copy](https://sleek.design/blog/ai-mobile-app-design-examples)
- [Agentic Awesome Skills](https://github.com/sickn33/agentic-awesome-skills)
- [B4X Skill for Claude Code](https://github.com/Jerryk133/b4x-skill)
- [MCP Server for B4A](https://github.com/unmateria/MCP-B4A)
- [UIZZE](https://github.com/uizze)

---

## 📄 License & Credits

* **Author:** Mashiane
* **Repository:** [https://github.com/Mashiane/B4XDaisyUIKit-Skills](https://github.com/Mashiane/B4XDaisyUIKit-Skills)
* **Parent Library:** [B4XDaisyUIKit](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI)
* **License:** [MIT License](LICENSE)
