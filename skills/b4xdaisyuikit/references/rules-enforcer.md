# B4XDaisyUIKit — Rules Enforcer

The Rules Enforcer is the authoritative, non-negotiable constraint layer of the B4XDaisyUIKit AI system. All generated code must conform to these numbered rules. When generating code, cite the applicable Rule IDs in your reasoning trace to maintain an auditable evidence chain.

---

## 1. Setup & Project File Rules (`RULE-SETUP-*`)

* **`RULE-SETUP-001` (Fixed Main Entry Point)**: The main entry module MUST be named exactly `B4XMainPage.bas`. B4XPages framework cannot locate or bootstrap the app under any other filename.
* **`RULE-SETUP-002` (Project File Header)**: The first line of `<AppName>.b4a` MUST start with `Build1=`. No comments, empty lines, or UTF-8 BOM before the design-text header, or `B4ABuilder` will throw `KeyNotFoundException`.
* **`RULE-SETUP-003` (Module File Header)**: The first line of every `.bas` module MUST be `B4A=true`.
* **`RULE-SETUP-004` (Module Wiring in .b4a)**: Every `.bas` file in the project folder MUST have a corresponding `ModuleN=<ModuleName>` entry in the `.b4a` project file, and `NumberOfModules` MUST match the total count. Unwired modules are silently omitted from the compile.
* **`RULE-SETUP-005` (Asset Bundling via .b4xlib)**: `B4XDaisyUIKit.b4xlib` delivers all 26 default assets (SVG icons, fonts, logo, license) automatically into `File.DirAssets` at compile time. Do NOT declare default `.b4xlib` assets as `FileN=` in `<AppName>.b4a`.
* **`RULE-SETUP-006` (Custom Project Assets)**: For custom app assets in `Files/`, each asset requires BOTH `FileN=<filename>` and `FileGroupN=Default Group`, and `NumberOfFiles` must match the count. Missing `FileGroupN` causes a build crash.
* **`RULE-SETUP-007` (Orientation & Title Bar Configuration)**: When using custom view `B4XDaisyNavbar`, include `#IncludeTitle: False` in the project file to prevent dual-header overlap with native Android ActionBar. Always specify `#SupportedOrientations: portrait` (or `landscape`) to satisfy B4XPages orientation requirements.

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

* **`RULE-LAYOUT-001` (Clear Before Render)**: `RenderContent(W, H)` or `RenderPage(W, H)` in scrollable pages MUST call `pageScroll.Clear` before mounting components to prevent duplicate child stacking on screen rotation/resize.
* **`RULE-LAYOUT-002` (Dynamic Usable Metrics)**: Always read layout metrics from `pageScroll`:
  ```vb
  Dim pad As Int = pageScroll.PagePadding
  Dim gap As Int = pageScroll.YGap
  Dim maxW As Int = pageScroll.UsableWidth
  Dim pnl As B4XView = pageScroll.Panel
  ```
* **`RULE-LAYOUT-003` (Mandatory AutoFit)**: The final statement of any scroll-page rendering routine MUST be `pageScroll.AutoFit`. Omitting this leaves the scrollable inner panel height at 0, clipping the content.
* **`RULE-LAYOUT-004` (Fixed Top & Bottom Insets)**: In pages combining a pinned top `B4XDaisyNavbar` and bottom `B4XDaisyDock`, configure `pageScroll.Top = 64dip`, `pageScroll.Height = Root.Height - 64dip - 64dip`, and mount `navbar` at `Y=0` and `dock` at `Y=Root.Height - 64dip`.

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

## 5. Interaction & Gesture Rules (`RULE-INTERACT-*`)

* **`RULE-INTERACT-001` (Navbar BringToFront)**: Always bring pinned top navbars to the front by calling `navbar.BringToFront` directly. NEVER call `navbar.getView.BringToFront` (the internal view is not exposed this way).
* **`RULE-INTERACT-002` (Prevent Parent Scroll Interception)**: For custom views with touch-dragging or sliding (e.g. `B4XDaisyColorWheel`, `B4XDaisyRange`, `B4XDaisyPicker`), invoke `DisallowParentIntercept(Action)` on `ACTION_DOWN` (0) and `ACTION_MOVE` (2) to prevent enclosing scroll containers from stealing touch events.
* **`RULE-INTERACT-003` (Touch Target Sizing)**: Interactive click/touch targets on mobile MUST have a minimum physical size of `44dip` (recommended `48dip`).

---

## 6. Anti-Patterns & Prohibitions (`RULE-ANTI-*`)

* **`RULE-ANTI-001` (No Web Technologies)**: Never generate HTML, CSS, Tailwind utility classes, or `WebView` wrappers. B4XDaisyUIKit is 100% native B4X/Java Android views.
* **`RULE-ANTI-002` (No Undocumented APIs)**: Never invent or assume method names, properties, or events. If a member is not documented in `component-manifest.md`, it does not exist.
* **`RULE-ANTI-003` (No Hardcoded Pixel Coordinates)**: Never use raw integer pixels for layout dimensions. Always suffix with `dip` (e.g. `16dip`, `60dip`) for device-independent scaling across Android screen densities.
* **`RULE-ANTI-004` (No Library Source Editing)**: Never edit, patch, or delete files in `B4A/*.bas`. The library is packaged inside `B4XDaisyUIKit.b4xlib`. Compose applications by calling public component APIs only.
