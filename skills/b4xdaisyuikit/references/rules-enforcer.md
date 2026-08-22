# B4XDaisyUIKit — Rules Enforcer

The Rules Enforcer is the authoritative, non-negotiable constraint layer of the B4XDaisyUIKit AI system. All generated code must conform to these numbered rules. When generating code, cite the applicable Rule IDs in your reasoning trace to maintain an auditable evidence chain. Each rule is tagged `L1-L5` (`L2`=instruction, `L4`=auto-validated, `L5`=hard gate) with the script that enforces it. Orchestrator `b4x-orchestrator` treats `L5` as release-blocking.

---

## 1. Setup & Project File Rules (`RULE-SETUP-*`)

* **`RULE-SETUP-001` `L5` (Fixed Main Entry Point)** — `b4x-verify/references/verify-conformance.ps1:152`: The main entry module MUST be named exactly `B4XMainPage.bas`. B4XPages framework cannot locate or bootstrap the app under any other filename.
* **`RULE-SETUP-002` `L5` (Project File Header)** — `verify-conformance.ps1:139`: The first line of `<AppName>.b4a` MUST start with `Build1=`. No comments, empty lines, or UTF-8 BOM before the design-text header, or `B4ABuilder` will throw `KeyNotFoundException`.
* **`RULE-SETUP-003` `L5` (Module File Header)** — `verify-conformance.ps1:185`: The first line of every `.bas` module MUST be `B4A=true`.
* **`RULE-SETUP-004` `L5` (Module Wiring in .b4a)** — `verify-conformance.ps1:144`: Every `.bas` file in the project folder MUST have a corresponding `ModuleN=<ModuleName>` entry in the `.b4a` project file, and `NumberOfModules` MUST match the total count. Unwired modules are silently omitted from the compile.
* **`RULE-SETUP-005` `L5` (Asset Bundling via .b4xlib)** — `verify-conformance.ps1:164` (FileN/FileGroupN count): `B4XDaisyUIKit.b4xlib` delivers all default assets (SVG icons, fonts, logo) automatically into `File.DirAssets` at compile time. Do NOT declare default `.b4xlib` assets as `FileN=` in `<AppName>.b4a`.
* **`RULE-SETUP-006` `L5` (Custom Project Assets)** — `verify-conformance.ps1:162`: For custom app assets in `Files/`, each asset requires BOTH `FileN=<filename>` and `FileGroupN=Default Group`, and `NumberOfFiles` must match the count. Missing `FileGroupN` causes a build crash.
* **`RULE-SETUP-007` `L2` (Orientation & Title Bar Configuration)**: When using custom view `B4XDaisyNavbar`, include `#IncludeTitle: False` in the project file to prevent dual-header overlap with native Android ActionBar. Always specify `#SupportedOrientations: portrait` (or `landscape`) to satisfy B4XPages orientation requirements.

---

## 2. B4XPages & App Shell Lifecycle Rules (`RULE-LIFECYCLE-*`)

* **`RULE-LIFECYCLE-001` (Class_Globals Scoping)**: All page custom `Type` definitions MUST be defined inside `Sub Class_Globals`, never outside or above it.
* **`RULE-LIFECYCLE-002` (Page Registration)**: All sub-pages must be initialized and added in `B4XMainPage.B4XPage_Created` via `PageInstance.Initialize` and `B4XPages.AddPage("page_id", PageInstance)`.
* **`RULE-LIFECYCLE-003` (Loader Transitions)**: Page navigation in standard app shells should use `MainPage.ShowPageWithLoader("page_id", "Loading...")` and `MainPage.ClosePageWithLoader("page_id")` to provide seamless native transitions.
* **`RULE-LIFECYCLE-004` (Warning Suppressions)**: Every `.bas` class module should begin with `#IgnoreWarnings:12,9` to suppress benign uncalled event warnings.
* **`RULE-LIFECYCLE-005` (Stack Clearing on Auth/Logout)**: Post-authentication (Login/Registration $\rightarrow$ Home) or Logout transitions MUST call `B4XPages.ShowPageAndRemovePreviousPages("home")` to clear auth screens from the history stack.
* **`RULE-LIFECYCLE-006` (Back-Key Interception via CloseRequest)**: Forms, wizards, or editors with unsaved changes should implement `Sub B4XPage_CloseRequest As ResumableSub` returning `Boolean` (`False` cancels close, `True` permits close) to prevent accidental data loss when the hardware Back key is pressed.
* **`RULE-LIFECYCLE-007` (Background / Foreground Suspension)**: Pages with active real-time connections (PocketBase/Chat), animations, or countdown timers should pause activity on `Sub B4XPage_Background` and resume on `Sub B4XPage_Foreground`.

---

## 3. Layout & Usable Area Rules (`RULE-LAYOUT-*`)

* **`RULE-LAYOUT-001` `L4` (Clear Before Render)** — `verify-conformance.ps1:Warn` (promote to `L5` with `-Strict`): `RenderContent(W, H)` or `RenderPage(W, H)` in scrollable pages MUST call `pageScroll.Clear` before mounting components to prevent duplicate child stacking on screen rotation/resize.
* **`RULE-LAYOUT-002` `L2` (Dynamic Usable Metrics)**: Always read layout metrics from `pageScroll`:
  ```vb
  Dim pad As Int = pageScroll.PagePadding
  Dim gap As Int = pageScroll.YGap
  Dim maxW As Int = pageScroll.UsableWidth
  Dim pnl As B4XView = pageScroll.Panel
  ```
* **`RULE-LAYOUT-003` `L5` (Mandatory AutoFit)** — `verify-conformance.ps1:213`: The final statement of any scroll-page rendering routine MUST be `pageScroll.AutoFit`. Omitting this leaves the scrollable inner panel height at 0, clipping the content.
* **`RULE-LAYOUT-004` `L2` (Fixed Top & Bottom Insets)**: In pages combining a pinned top `B4XDaisyNavbar` and bottom `B4XDaisyDock`, configure `pageScroll.Top = 64dip`, `pageScroll.Height = Root.Height - 64dip - 64dip`, and mount `navbar` at `Y=0` and `dock` at `Y=Root.Height - 64dip`.

---

## 4. Component Creation & Mount Rules (`RULE-MOUNT-*`)

* **`RULE-MOUNT-001` (Standard 3-Step Creation)**: Most standard components (`Button`, `Input`, `Card`, `Badge`, `Toggle`, `Select`, `Alert`) follow the verified 3-step sequence:
  ```vb
  comp.Initialize(Me, "compEventName")
  comp.AddToParent(pnl, pad, y, maxW, height)
  comp.Property = value
  y = y + comp.GetComputedHeight + gap
  ```
* **`RULE-MOUNT-002` (Stat Container Sequence)**: `B4XDaisyStat` requires setting structural properties (`Direction`, `AlignHorizontal`, `Boxed`) BEFORE `AddToParent`, adding items via `AddItem` AFTER `AddToParent`, and calling `Refresh` last.
* **`RULE-MOUNT-003` (Dock Navigation Sequence)**: `B4XDaisyDock` requires setting tab properties (`AddHomeTab`, `AddSearchTab`, `ActiveTab`) BEFORE `AddToParent`.
* **`RULE-MOUNT-004` (Timeline Container Sequence)**: `B4XDaisyTimeline` items must be added via `AddItem(...)` or `AddItemExplicit(...)` AFTER `AddToParent`.
* **`RULE-MOUNT-005` (Accordion Child Mount)**: `B4XDaisyAccordion` items must have their header and content registered via `AddItem(Title, ContentPanel)` and then call `Refresh`.
* **`RULE-MOUNT-006` (SweetAlert Dialogs)**: `B4XDaisySweetAlert` requires a 3-argument initialize: `swal.Initialize(Me, "swal", Root)`. It does not mount into `pageScroll.Panel`.

---

## 5. Interaction, Ergonomics & State Completeness (`RULE-INTERACT-*` & `RULE-STATE-*`)

* **`RULE-INTERACT-001` `L5` (Navbar BringToFront)** — `verify-conformance.ps1:220`: Always bring pinned top navbars to the front by calling `navbar.BringToFront` directly. NEVER call `navbar.getView.BringToFront`.
* **`RULE-INTERACT-002` `L4` (Prevent Parent Scroll Interception)** — `verify-conformance.ps1:230`: For custom views with touch-dragging or sliding (e.g. `B4XDaisyColorWheel`, `B4XDaisyRange`, `B4XDaisyDualRange`, `B4XDaisyCarousel`), invoke `DisallowParentIntercept(Action)` on `ACTION_DOWN` (0) and `ACTION_MOVE` (2) to prevent enclosing scroll containers from stealing touch events.
* **`RULE-INTERACT-003` `L4` (Touch Target Sizing - Fitts's Law)** — `b4x-project-bootstrap/references/build-watch.template.ps1:166` (uiautomator, `Verified at build`): Interactive click/touch targets on mobile MUST have a minimum physical size of `48dip` (`44dip` floor). Small icons must be wrapped in `B4XDaisyIconButton`.
* **`RULE-INTERACT-004` `L3` (Navigation Bounds - Hick's Law)** — `ux-review.md:70` visual review: Bottom navigation docks (`B4XDaisyDock`) and top navbar actions MUST contain $\le 5$ items to minimize cognitive friction.
* **`RULE-STATE-001` `L3` (Mandatory 4-State Coverage)** — `screen-contract.template.md:6` + `ux-review.md:72` (4-state): Every asynchronous or data-driven view MUST explicitly implement Loading (`B4XDaisyDivision` skeleton or `B4XDaisyLoading`), Populated (content cards/list), Empty (informative placeholder + action), and Error (`B4XDaisySweetAlert` / `B4XDaisyAlert` with retry) states.

---

## 6. Code Style & Hungarian Standards (`RULE-CODE-*`)

* **`RULE-CODE-001` `L4` (Hungarian Parameter & Variable Prefixes)** — `verify-conformance.ps1:Warn` (spot-check): Use strict type-based Hungarian prefixes for all subroutine parameters and local variables to prevent compiler shadowing (`sText`, `iLeft`, `bEnabled`, `vParent`, `mProps`, `lstItems`, `bmpImage`, `joView`).
* **`RULE-CODE-002` `L4` (Structured Error Logging)** — `verify-conformance.ps1:224`: Empty `Catch` blocks are strictly forbidden. Catch blocks must log errors using the standard prefix: `Log("B4XDaisy<Module>.<Sub>: " & LastException.Message)`.

---

## 7. Anti-Patterns & Prohibitions (`RULE-ANTI-*`)

* **`RULE-ANTI-001` `L5` (No Web Technologies)** — `b4x-verify/references/pre-scan.ps1:73` hard fail on `<html|<div|class=` etc.: Never generate HTML, CSS, Tailwind utility classes, or `WebView` wrappers. B4XDaisyUIKit is 100% native B4X/Java Android views.
* **`RULE-ANTI-002` `L5` (No Undocumented APIs)** — `verify-conformance.ps1:97` conformance gate: Never invent or assume method names, properties, or events. If a member is not documented in `component-manifest.md`, it does not exist.
* **`RULE-ANTI-003` `L4` (No Hardcoded Pixel Coordinates)** — `verify-conformance.ps1:Warn` (raw `Width= N`): Never use raw integer pixels for layout dimensions. Always suffix with `dip` (e.g. `16dip`, `60dip`) for device-independent scaling across Android screen densities.
* **`RULE-ANTI-004` `L2` (No Library Source Editing)**: Never edit, patch, or delete files in `B4A/*.bas`. The library is packaged inside `B4XDaisyUIKit.b4xlib`. Compose applications by calling public component APIs only.
