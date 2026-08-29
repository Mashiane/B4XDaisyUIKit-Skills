# ⚡ B4XDaisyUIKit-Skills

> **Supercharge Claude Code, Antigravity, OpenCode, Codex & AI Coding Agents to build 100% native B4X (B4A Android, B4i iOS, B4J Desktop) mobile apps with DaisyUI / Tailwind CSS design semantics.**

[![B4X Forum Thread](https://img.shields.io/badge/B4X_Forum-Thread_#171762-007ACC?style=flat&logo=android)](https://www.b4x.com/android/forum/threads/ai-skills-b4xdaisyuikit-skills-supercharge-claude-to-code-b4xdaisyuikit-instantly-beta.171762/)
[![GitHub Release](https://img.shields.io/badge/Release-v1.2.3-blue.svg)](https://github.com/Mashiane/B4XDaisyUIKit-Skills/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Library Parity](https://img.shields.io/badge/Components-104_Classes-brightgreen.svg)](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI)

---

## 📖 Overview

**`B4XDaisyUIKit-Skills`** is the official AI agent skill suite for **[B4XDaisyUIKit](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI)**. It equips AI developer agents (Claude Code, Antigravity, OpenCode, Codex, Cursor) with full, verified knowledge to autonomously scaffold, design, compose, verify, and review native cross-platform B4X applications.

### 🌟 What this enables:
* 🎯 **100% Native Code Generation**: Converts web-oriented Tailwind CSS and DaisyUI concepts into robust native B4X views, layouts, and event handlers.
* 🏛️ **HCI & UX Master Doctrine**: Encodes quantitative interaction laws (Fitts's Law $\ge 48\text{dp}$ touch targets, Hick's Law $\le 5$ nav items, Miller's Law 3-5 field chunking, WCAG 2.2 AA contrast $\ge 4.5:1$, and mandatory 4-state UI completeness).
* 👁️ **5-Stage Vision-to-B4X Engine**: Translates Figma auto-layouts, mobile screenshots, and UI mockups into clean B4X page hierarchies and exact cursor positioning math.
* 🛡️ **Zero-Hallucination API Guardrails**: Constrains AI agents to exact verified signatures across 104 native component classes and 89 live `B4XPage` reference implementations.
* ⚡ **One-Shot Greenfield Scaffolding**: Automatically scaffolds complete ready-to-build apps with loaders, SweetAlert dialogs, navigation models, and automated build scripts (`install.ps1`).
* 🔁 **Closed Build-Verify-Remediate Loop**: End-to-end orchestration with static AST checking, runtime signal watching, ADB device screen capture, and visual UX evaluation.
* 📦 **Zero-Configuration Asset Pipeline**: Pure `File.DirAssets` bundling delivered automatically via `B4XDaisyUIKit.b4xlib` with no `res/` folder required.

---

## 💻 System & Toolchain Requirements

* **Target Platform:** Native Android APKs generated via B4A (Basic4Android).
* **Host Operating System:** Windows 10/11 (standard B4A development environment).
* **Required Tooling:**
  - **B4A 12+** with `B4XDaisyUIKit.b4xlib` in Additional Libraries.
  - **Android SDK** (`platform-tools/adb.exe` in PATH or standard SDK locations).
  - **PowerShell 5.1+** or **PowerShell 7+**.

---

## 📥 How to Get & Set Up B4A (Basic4Android)

B4A is **100% free** and enables rapid development of high-performance native Android applications with zero overhead.

### Step 1: Download & Install B4A (Free Full Version)
1. Download the B4A installer from the official website:  
   👉 **[https://www.b4x.com/b4a.html](https://www.b4x.com/b4a.html)**
2. Run the setup wizard to install B4A on your Windows PC (e.g., `C:\Program Files\Anywhere Software\B4A`).

### Step 2: Install Java OpenJDK & Android SDK
B4A requires a Java JDK and the Android SDK command-line tools:
1. Follow the official 2-step setup guide on the B4X forum:  
   👉 **[B4A Installation & SDK Setup Guide](https://www.b4x.com/android/forum/threads/b4a-installation-instructions.124497/)**
2. Download and unzip the ready-to-use **Java JDK + Android SDK bundle** provided on that page (recommended location: `C:\Android` or `C:\b4a\sdk`).

### Step 3: Configure Paths in B4A IDE
1. Open the B4A IDE.
2. Go to **Tools -> Configure Paths**.
3. Set the required paths:
   * **`javac.exe`**: Path to `bin\javac.exe` (e.g., `C:\Android\jdk-19\bin\javac.exe` or `C:\Program Files\Java\...`).
   * **`android.jar`**: Path to `platforms\android-34\android.jar` (e.g., `C:\Android\platforms\android-34\android.jar`).
   * **`Additional Libraries`**: Create a folder (e.g., `C:\b4a\AdditionalLibraries` or `C:\Android\AdditionalLibraries`) and set it here.

### Step 4: Install B4XDaisyUIKit Library
1. Download the latest **`B4XDaisyUIKit.b4xlib`** from the [GitHub Releases](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/releases) or [Google Drive Archive](https://drive.google.com/drive/folders/1Ccr4SiPYugPCsN0juwwwqAZGewMW-xZj?usp=sharing).
2. Copy `B4XDaisyUIKit.b4xlib` into your configured **`Additional Libraries`** folder.

### Step 5: Verify ADB in PATH (for Automated Device Deployment)
Ensure Android Debug Bridge (`adb.exe`) is accessible in your system terminal:
* Add `C:\Android\platform-tools` (or your SDK platform-tools folder) to your Windows **System Environment Variable `PATH`**.
* Verify in terminal:
  ```powershell
  adb devices
  ```

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

---

## 🛠️ The Skills Suite at a Glance

This repository packages **4 specialized skills** forming a complete First-Time-Right mobile development pipeline:

| Skill | Purpose | When to Use |
|---|---|---|
| **`b4x-orchestrator`** | Master orchestration engine. Coordinates the full lifecycle: Screen Contract -> Code Generation -> Pre-Scan -> Conformance Gate -> Build -> Runtime Watch -> Screencap -> Visual UX Review -> Capped Remediation Loop. | Orchestrating end-to-end app creation or running release-blocking quality gates. |
| **`b4xdaisyuikit`** | Core UI component composition, UX Master Doctrine, token cheatsheet, web-to-native mapping, verified recipes, and negative guardrails. | Adding views, designing screens, binding events, and styling with 30+ DaisyUI themes. |
| **`b4x-project-bootstrap`** | Greenfield project generator. Produces complete app shells (`B4XMainPage.bas`, responsive navigation templates, clean `.b4a`, `install.ps1`, `build-watch.ps1`). | Starting a brand-new native Android app project from scratch. |
| **`b4x-verify`** | Automated shift-left quality gate (`pre-scan.ps1`, `verify-conformance.ps1`), ADB screencap (`capture-screens.ps1`), and 14-category visual UX review (`ux-review.md`). | Pre-build AST validation, runtime crash detection, and post-build device inspection. |

---

### 1. `b4x-orchestrator` (First-Time-Right Delivery Engine)
* **Screen Contract Engine (`references/screen-contract.template.md`):** Formal pre-coding contract specifying screen purpose, density, view hierarchy, event bindings, and lifecycle requirements before generating code.
* **Full Shift-Left Execution Loop (`references/runbook.md`):**
  ```text
  Contract -> Generate -> pre-scan.ps1 -> verify-conformance.ps1 ->
    ./install.ps1 (auto-runs build-watch.ps1) -> capture-screens.ps1 -> ux-review.md
  ```
* **Capped Remediation Loop:** Enforces a maximum 3-attempt automated remediation cycle with human escalation to prevent thrashing.

### 2. `b4xdaisyuikit` (Master UI Composition Skill)
* **108 Component Documentation Guides:** Detailed specifications in `components/<name>.md` covering constructor parameters, designer properties, methods, events, and recipes across 104 native classes.
* **UX Master Doctrine & DoD (`references/ux-master-doctrine.md`):** Quantitative HCI standards, WCAG 2.2 AA contrast compliance, 4-state UI completeness, and pre-ship Definition of Done.
* **5-Stage Vision & Conversion Engine (`references/conversion-workflows.md`):** Structured vision pipeline for translating Figma auto-layouts, HTML, and UI screenshots into native B4X code.
* **Web-to-Native Dictionary (`references/daisyui-native-compatibility.md`):** Direct translation table from HTML classes (`.btn`, `.card`, `.badge`, `.timeline`, `.collapse`, `.shine-button`, etc.) to native B4X classes.
* **Design Token Cheatsheet (`cheatsheet.md`):** Sizing tokens, corner radii (`rounded-box`, `rounded-field`, `rounded-full`), border widths, dashed lines, and dynamic theme palettes (`primary`, `secondary`, `accent`, `error`, `success`, `warning`, `info`, `neutral`).

### 3. `b4x-project-bootstrap` (App Scaffolding)
* Drops verified shell files from `references/`:
  - `B4XMainPage.template.bas` (Includes global `AppLoader`, `SweetAlert`, page transition engine, splash loader, and home screen pinning).
  - `B4XPageNavDock.template.bas` (Pinned top navbar + bottom dock navigation tabs with responsive tablet $\ge 600\text{dip}$ dual-column metrics).
  - `B4XPageNavOnly.template.bas` (Pinned top navbar with back button for sub-pages).
  - `project.template.b4a` (Pre-configured `.b4a` descriptor with zero `res/` requirement).
  - `install.template.ps1` (Automated build, clean, install, and device launch).
  - `build-watch.template.ps1` (Runtime crash, touch-target dp, and TalkBack auditor).

### 4. `b4x-verify` (Conformance & Quality Gate + Visual UX Review)
* **Pre-Scan Gate** (`references/pre-scan.ps1`): Fast negative-knowledge grep catching banned HTML tags, unapproved documented-only views, and sizing anti-patterns before compilation.
* **Authoritative Conformance Gate** (`references/verify-conformance.ps1`): Validates manifest existence, module/file wiring, `pageScroll.AutoFit`, `navbar.BringToFront`, and structured error handling.
* **Runtime Crash Sniffer & Screencap** (`references/capture-screens.ps1`): ADB screencap to `<AppFolder>/ux-review/screens/` with automatic Logcat crash inspection.
* **14-Category Visual UX Review** (`references/ux-review.md`): Merged Senior Mobile Design Auditor Pro spec evaluating Nielsen heuristics, touch ergonomics ($\ge 48\text{dp}$), TalkBack labeling, WCAG contrast, and drafting ready-to-paste B4X fix tickets.

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
