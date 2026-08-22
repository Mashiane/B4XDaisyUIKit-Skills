# B4XDaisyUIKit — Universal Conversion Engine (HTML, Screenshots & Figma)

> **The comprehensive transformation protocol for converting Web DaisyUI / Tailwind HTML markup, UI screenshots/mockups, and Figma auto-layouts into 100% native B4X view hierarchies.**

---

## 🌐 1. Web DaisyUI / Tailwind HTML $\rightarrow$ Native B4X Conversion

When given web HTML markup, JSX, or Tailwind CSS templates, follow this deterministic translation protocol:

### Step-by-Step HTML Translation Protocol

1. **Strip All Web/DOM Artifacts**:
   * Eliminate all `<div class="...">`, `<span...>`, `<header>`, `<footer>`, `<style>`, and inline JavaScript event listeners (`onclick=...`).
   * Never output `WebView`, CSS stylesheets, HTML string templates, or Tailwind class strings. Every element must become a native B4X custom view.

2. **Complete Official DaisyUI 5 Component Coverage Alignment**:
   Every component defined in the official daisyUI 5 specification (`.agents/skills/daisyui/SKILL.md`) maps directly into the native B4XDaisyUIKit component framework:

   | Official DaisyUI Category | Official DaisyUI Web Element / Class | Native B4XDaisyUIKit Class | Key Native Method / Property |
   | :--- | :--- | :--- | :--- |
   | **Actions** | `.btn` | `B4XDaisyButton` | `Variant`, `Color`, `Size`, `IconName` |
   | | `.btn-circle` / `.btn-square` | `B4XDaisyIconButton` | `Shape`, `IconAsset`, `Size` |
   | | `.dropdown` | `B4XDaisyDropdown` | `Items`, `SelectedValue`, `Open` |
   | | `.modal` | `B4XDaisyModal` / `B4XDaisySheetModal` | `Show`, `Dismiss`, `ConfirmText` |
   | | `.swap` | `B4XDaisySwap` | `SwapType`, `ActiveState`, `Rotate` |
   | | `.theme-controller` | `B4XDaisyVariants` / `B4XDaisyApp` | `SetTheme`, `SwitchTheme` |
   | **Data Display** | `.accordion` | `B4XDaisyAccordion` | `OpenOnlyOne`, `AddItemBasic`, `Refresh` |
   | | `.alert` | `B4XDaisyAlert` | `Title`, `Text`, `Color`, `AlertStyle` |
   | | `.avatar` / `.avatar-group` | `B4XDaisyAvatar` / `B4XDaisyAvatarGroup` | `Image`, `Mask`, `Online`, `AddAvatar` |
   | | `.badge` / `.filter` | `B4XDaisyBadge` / `B4XDaisyBadgeGroupSelect`| `Text`, `Color`, `BadgeStyle`, `ItemsSpec` |
   | | `.card` | `B4XDaisyCard` / `B4XDaisyInfoCard` | `Title`, `Border`, `Shadow`, `LayoutMode` |
   | | `.carousel` / `.carousel-item`| `B4XDaisyCarousel` / `B4XDaisyCarouselItem`| `AutoPlay`, `Interval`, `AddImageSlide` |
   | | `.chat` / `.chat-bubble` | `B4XDaisyChat` / `B4XDaisyChatBubble` | `AddMessage`, `Variant`, `Placement` |
   | | `.collapse` | `B4XDaisyCollapse` | `Title`, `Icon`, `Open`, `Toggle` |
   | | `.countdown` | `B4XDaisyCountdown` | `TargetDate`, `TimeLeft`, `Start` |
   | | `.diff` | `B4XDaisyDiff` | `Image1`, `Image2`, `SplitPosition` |
   | | `.kbd` | `B4XDaisyKbd` | `KeyText`, `Size`, `Variant` |
   | | `.stat` / `.stats` | `B4XDaisyStat` / `B4XDaisyDashboard` | `Direction`, `AddItem`, `Refresh`, `AddKpi` |
   | | `.table` / `.list` | `B4XDaisyList` / `B4XDaisyDashboard` | `AddItem`, `AddItemWithIcon`, `ItemClick` |
   | | `.timeline` | `B4XDaisyTimeline` | `AddItem`, `AddItemExplicit`, `Vertical` |
   | | `.text-rotate` | `B4XDaisyTextRotate` | `Items`, `Interval`, `Start` |
   | **Data Input** | `.input` / `input[type="text"]`| `B4XDaisyInput` | `Placeholder`, `Label`, `Text`, `Validate`|
   | | `.input[type="password"]` | `B4XDaisyInput` | `.Password = True`, `IconRight` |
   | | `.otp` / `pin` | `B4XDaisyOTP` | `Digits`, `Masked`, `AutoSubmit` |
   | | `.textarea` | `B4XDaisyInput (SingleLine = False)` | `Rows`, `Placeholder`, `Text` |
   | | `.checkbox` / `.checkbox-group`| `B4XDaisyCheckbox` / `B4XDaisyCheckboxGroup`| `Checked`, `ItemsSpec`, `SelectedValues` |
   | | `.radio` / `.radio-group` | `B4XDaisyRadio` / `B4XDaisyRadioGroup` | `Checked`, `GroupName`, `ItemsSpec` |
   | | `.toggle` / `.toggle-group`| `B4XDaisyToggle` / `B4XDaisyToggleGroup` | `Checked`, `ItemsSpec`, `Direction` |
   | | `.select` | `B4XDaisySelect` | `SetOptions`, `SelectedValue`, `Changed` |
   | | `.range` / `.dual-range` | `B4XDaisyRange` / `B4XDaisyDualRange` | `MinValue`, `MaxValue`, `Value` |
   | | `.rating` | `B4XDaisyRating` | `MaxRating`, `Value`, `RatingStyle` |
   | | `.file-input` / `.file-handler`| `B4XDaisyFileInput` / `B4XDaisyFileHandler` | `ButtonText`, `FileName`, `PickImage` |
   | | `.color-picker` / `.color-wheel`| `B4XDaisyColorWheel` | `SelectedColor`, `Brightness` |
   | | `.signature` | `B4XDaisySignaturePad` | `SaveSignature`, `ClearSignature` |
   | | `.validator` | `B4XDaisyInput` / `B4XDaisyFieldset` | `Validate`, `ValidationRegex`, `ErrorText`|
   | **Layout** | `.divider` | `B4XDaisyDivider` | `Text`, `Vertical`, `Variant` |
   | | `.drawer` (sidebar) | `B4XDaisyDrawer` | `Open`, `Close`, `Direction` |
   | | `.hero` | `B4XDaisyHero` | `BackgroundImage`, `OverlayVisible` |
   | | `.indicator` | `B4XDaisyIndicator` | `BadgeText`, `BadgeVariant`, `Placement` |
   | | `.join` (group) | Contiguous layout positioning | Side-by-side positioning (`same Y, gap = 0`)|
   | | `.mask` | `B4XDaisyAvatar` / `B4XDaisyImage` | `Mask` (`squircle`, `hexagon`, `heart`) |
   | | `.stack` | `B4XDaisyStack` | `AddView`, `StackDepth` |
   | | `.window` / `.mockup-browser` | `B4XDaisyWindow` | `Title`, `ShowControls`, `Url` |
   | | `.fieldset` | `B4XDaisyFieldset` | `Legend`, `Description`, `AddToContent` |
   | **Navigation** | `.navbar` | `B4XDaisyNavbar` | `Title`, `ShowBackButton`, `AddEndAction`|
   | | `.dock` / `.bottom-nav` | `B4XDaisyDock` | `AddHomeTab`, `ActiveTab`, `BadgeText` |
   | | `.breadcrumbs` | `B4XDaisyBreadcrumbs` | `AddCrumb`, `SeparatorIcon`, `CrumbClick` |
   | | `.menu` / `.megamenu` | `B4XDaisyMenu` | `AddMenuItem`, `AddSubMenu`, `ActiveId` |
   | | `.pagination` | `B4XDaisyPagination` | `TotalPages`, `CurrentPage`, `PageChange` |
   | | `.steps` (wizard) | `B4XDaisySteps` | `AddStep`, `CurrentStep`, `Orientation` |
   | | `.tab` / `.segment` | `B4XDaisyTab` / `B4XDaisySegment` | `AddTab`, `ActiveIndex`, `TabClick` |
   | | `.link` | `B4XDaisyText` | `IsLink = True`, `Url`, `TextColor` |
   | **Feedback** | `.alert` | `B4XDaisyAlert` / `B4XDaisySweetAlert` | `Title`, `Description`, `ConfirmDialog` |
   | | `.loading` / `.spinner` | `B4XDaisyLoading` / `B4XDaisyCanvasSpinner`| `LoadingType`, `Size`, `PrimaryColor` |
   | | `.progress` | `B4XDaisyProgress` | `Value`, `MaxValue`, `Color` |
   | | `.radial-progress` | `B4XDaisyRadialProgress` | `Value`, `Size`, `StrokeWidth` |
   | | `.skeleton` | `B4XDaisyDivision` (`IsSkeleton=True`) | `Rounded`, `BackgroundColor` |
   | | `.status` (dot) | `B4XDaisyStatus` | `StatusType`, `Ping`, `Pulse` |
   | | `.toast` | `B4XDaisyToast` | `ShowToast`, `Duration`, `Position` |
   | | `.tooltip` | `B4XDaisyTooltip` | `AttachTo`, `Placement`, `TooltipText` |
   | | `.aura` (glow) | `B4XDaisyAura` | `Wrap`, `Style`, `StartRotation` |
   | | `.hover-3d` | `B4XDaisyHover3d` | `Wrap`, `MaxTilt`, `Scale` |
   | | `.enjoy-hint` (tour) | `B4XDaisyEnjoyHint` | `AddStep`, `StartTour`, `NextStep` |
   | | `.shine-button` | `B4XDaisyShineButton` | `Shape`, `BurstCount`, `ActiveColor` |

3. **Map Form & Interactive Controls**:
   | Web HTML Control | Native B4X Component | Key Properties |
   | :--- | :--- | :--- |
   | `<input type="text" class="input">` | `B4XDaisyInput` | `.Placeholder`, `.Label`, `.Text`, `.Border = True` |
   | `<input type="password" class="input">` | `B4XDaisyInput` | `.Password = True`, `.Label = "Password"` |
   | `<textarea class="textarea">` | `B4XDaisyInput` | `.Placeholder`, `.Label`, `.Rows = 4` |
   | `<button class="btn btn-primary">` | `B4XDaisyButton` | `.Color = "primary"`, `.Text = "..."`, `.Height = 48dip` |
   | `<button class="btn btn-outline">` | `B4XDaisyButton` | `.Variant = "outline"`, `.Color = "primary"` |
   | `<button class="btn btn-circle">` | `B4XDaisyIconButton` | `.Shape = "circle"`, `.IconName = "svg-name"` |
   | `<input type="checkbox" class="toggle">` | `B4XDaisyToggle` | `.Checked = True`, `.Color = "primary"` |
   | `<input type="checkbox" class="checkbox">` | `B4XDaisyCheckbox` | `.Checked = False`, `.Color = "secondary"` |
   | `<input type="radio" class="radio">` | `B4XDaisyRadio` | `.GroupName = "grp"`, `.Checked = True` |
   | `<select class="select">` | `B4XDaisySelect` | `.SetOptions(optionsList)`, `.SelectedValue = "..."` |
   | `<div class="badge badge-primary">` | `B4XDaisyBadge` | `.Color = "primary"`, `.Text = "..."` |
   | `<div class="alert alert-warning">` | `B4XDaisyAlert` | `.Color = "warning"`, `.Title = "..."`, `.Description = "..."` |
   | `<progress class="progress" value="70">`| `B4XDaisyProgress` | `.Value = 70`, `.Color = "primary"` |
   | `<div class="radial-progress" ...>` | `B4XDaisyRadialProgress` | `.Value = 70`, `.Color = "primary"` |

4. **Translate Modifier & Utility Classes to Native Properties**:
   * **Color Roles**: `btn-primary` $\rightarrow$ `.Color = "primary"`; `alert-error` $\rightarrow$ `.Color = "error"`; `badge-secondary` $\rightarrow$ `.Color = "secondary"`.
   * **Variants**: `btn-outline` $\rightarrow$ `.Variant = "outline"`; `btn-ghost` $\rightarrow$ `.Variant = "ghost"`; `btn-soft` $\rightarrow$ `.Variant = "soft"`.
   * **Sizing Tokens**: `btn-sm` / `input-sm` $\rightarrow$ `.Size = "sm"` or `Height = 36dip`; `btn-lg` $\rightarrow$ `.Size = "lg"` or `Height = 56dip` (standard default is `48dip`).
   * **Border Radii**: `rounded-box` $\rightarrow$ `.Rounded = "rounded-box"`; `rounded-full` $\rightarrow$ `.Rounded = "rounded-full"`.
   * **Grouping**: `<div class="join">` $\rightarrow$ Side-by-side layout math placing contiguous buttons/inputs on same `Y` coordinate with `0` or minimal gap.

5. **Mount Inside Native `RenderContent(W, H)` Flow**:
   * Mount all scrollable components into `pageScroll.Panel`.
   * Advance vertical cursor: `curY = curY + comp.GetComputedHeight + gap`.
   * Finalize with `pageScroll.AutoFit(curY + pad)`.

---

### Concrete Web HTML $\rightarrow$ Native B4X Translation Example

#### Web DaisyUI HTML Input:
```html
<nav class="navbar bg-base-100 shadow-md">
  <div class="flex-1">
    <a class="btn btn-ghost text-xl">App Title</a>
  </div>
  <div class="flex-none">
    <button class="btn btn-circle btn-ghost">
      <svg class="w-6 h-6" fill="none" viewBox="0 0 24 24">...</svg>
    </button>
  </div>
</nav>

<div class="p-4 space-y-4">
  <div class="card bg-base-100 border shadow-sm">
    <div class="card-body">
      <h2 class="card-title">Account Security</h2>
      <fieldset class="fieldset">
        <legend class="fieldset-legend">Credentials</legend>
        <label class="label">Email Address</label>
        <input type="email" placeholder="user@domain.com" class="input input-bordered w-full" />
      </fieldset>
      <div class="card-actions justify-end">
        <button class="btn btn-primary w-full">Update Settings</button>
      </div>
    </div>
  </div>
</div>
```

#### Native B4X Implementation:
```vb
Private Sub B4XPage_Created (Root1 As B4XView)
    Root = Root1
    
    ' Pinned Navbar
    navbar.Initialize(Me, "navbar")
    navbar.AddToParent(Root, 0, 0, Root.Width, 64dip)
    navbar.Title = "App Title"
    navbar.AddButtonIconToEnd("bellBtn", 36dip, "bell", 0xFF000000, True)
    
    ' Content Viewport
    pageScroll.Initialize(Me, "pageScroll")
    pageScroll.AddToParent(Root, 0, 64dip, Root.Width, Root.Height - 64dip)
    
    RenderContent(pageScroll.UsableWidth, pageScroll.Height)
    navbar.BringToFront
End Sub

Private Sub RenderContent(W As Float, H As Float)
    pageScroll.Clear
    
    Dim pad As Int = pageScroll.PagePadding
    Dim gap As Int = pageScroll.YGap
    Dim maxW As Int = W
    Dim curY As Int = pad
    
    ' Card Container
    Dim cardSec As B4XDaisyCard
    cardSec.Initialize(Me, "cardSec")
    cardSec.AddToParent(pageScroll.Panel, pad, curY, maxW, 230dip)
    cardSec.Title = "Account Security"
    cardSec.Shadow = "sm"
    
    ' Inner Fieldset
    Dim fsetCreds As B4XDaisyFieldset
    fsetCreds.Initialize(Me, "fsetCreds")
    fsetCreds.AddToParent(cardSec.GetBodyPanel, 8dip, 44dip, maxW - 16dip, 100dip)
    fsetCreds.Legend = "Credentials"
    
    ' Email Input inside Fieldset
    Dim txtEmail As B4XDaisyInput
    txtEmail.Initialize(Me, "txtEmail")
    fsetCreds.AddContentView(txtEmail.mBase, 8dip, 28dip, maxW - 32dip, 48dip)
    txtEmail.LabelAbove = "Email Address"
    txtEmail.Placeholder = "user@domain.com"
    
    ' Primary CTA Button inside Card
    Dim btnUpdate As B4XDaisyButton
    btnUpdate.Initialize(Me, "btnUpdate")
    btnUpdate.AddToParent(cardSec.GetBodyPanel, 8dip, 160dip, maxW - 16dip, 48dip)
    btnUpdate.Text = "Update Settings"
    btnUpdate.Variant = "primary"
    
    curY = curY + cardSec.GetComputedHeight + gap
    pageScroll.AutoFit(curY + pad)
End Sub
```

---

## 👁️ 2. UI Screenshot & Image Vision Engine (5-Stage Protocol)

When converting mobile screenshots or visual designs, execute through 5 systematic vision stages:

```text
STAGE 1: Spatial Inset & Shell Segmentation
   ↓
STAGE 2: Semantic Color & Theme Extraction
   ↓
STAGE 3: Hierarchical View Tree Construction
   ↓
STAGE 4: Dynamic State & Geometry Formulation
   ↓
STAGE 5: Native B4X Code Generation & Verification
```

### Stage 1: Spatial Inset & Shell Segmentation
1. **Top Inset (Status + Navbar):** Pinned title/action bar detected $\rightarrow$ Map to `B4XDaisyNavbar` (`Top = 0, Height = 64dip`).
2. **Bottom Inset (Navigation Dock / Tabs):** Pinned bottom tab bar detected $\rightarrow$ Map to `B4XDaisyDock` (`Top = Root.Height - 64dip, Height = 64dip`).
3. **Scrollable Content Viewport:** Vertical area between insets $\rightarrow$ Map to `B4XDaisyPageScroll` (`Top = 64dip, Height = Root.Height - 128dip`).

### Stage 2: Semantic Color & Theme Extraction
* **Primary Brand Accent:** Identify main interactive buttons and active states $\rightarrow$ Assign `Color = "primary"`.
* **Secondary Accent:** Identify badges, secondary highlights, or tags $\rightarrow$ Assign `Color = "secondary"` or `"accent"`.
* **Surface Background:** Identify card backgrounds $\rightarrow$ `Color = "base-100"` / `"base-200"`.
* **Feedback Indicators:** Green $\rightarrow$ `"success"`, Red $\rightarrow$ `"error"`, Yellow $\rightarrow$ `"warning"`, Blue $\rightarrow$ `"info"`.

### Stage 3: Hierarchical View Tree Construction
Map visual clusters into a parent-child native view tree (PageRoot $\rightarrow$ Viewport $\rightarrow$ Cards $\rightarrow$ Controls).

### Stage 4: Dynamic State & Geometry Formulation
Convert visual spacing and auto-layout configurations into exact B4X positioning math (`curY = curY + comp.GetComputedHeight + gap`).

### Stage 5: Native B4X Code Generation & Verification
Assemble pure native B4X code and run `b4x-verify` to ensure conformance.

---

## 📐 3. Figma Auto-Layout $\rightarrow$ Native B4X Engine

| Figma Specification | Native B4X Equivalent & Geometry Math |
| :--- | :--- |
| **Vertical Auto-Layout (`gap: 16px`)** | Sequential Y-cursor: `curY = curY + comp.GetComputedHeight + 16dip` |
| **Horizontal Auto-Layout (2-Column Grid)** | Side-by-side math: `colW = (maxW - 12dip) / 2`; Column 2 `Left = pad + colW + 12dip` |
| **Horizontal Metric Row** | `B4XDaisyStat (Direction = "horizontal")` |
| **Filter / Tag Chips** | `B4XDaisyBadgeGroupSelect` or `B4XDaisyFilter` |
| **Corner Radius ($12\text{px}$)** | `Rounded = "rounded-box"` (or `rounded-field`) |
| **Drop Shadow / Elevation** | `Shadow = True` on `B4XDaisyCard` |
| **Sticky Action Footer** | Pinned bottom panel or `B4XDaisyDock` |

---

## 📋 4. Conversion Decision Matrix

| Input Format | Primary Strategy | First Reference Document |
| :--- | :--- | :--- |
| **Web HTML / JSX** | Strip HTML/DOM $\rightarrow$ Map DaisyUI classes to B4X types $\rightarrow$ Mount in `RenderContent` | [`daisyui-native-compatibility.md`](daisyui-native-compatibility.md) |
| **Screenshot / Mockup Image** | 5-Stage Vision Decomposition $\rightarrow$ Isolate insets $\rightarrow$ Construct tree | [`conversion-workflows.md`](conversion-workflows.md) |
| **Figma Component Spec** | Frame auto-layout math $\rightarrow$ Spacing tokens $\rightarrow$ Native B4X layout | [`design-tokens.md`](design-tokens.md) |
| **REST / PocketBase Data** | 4-State UI pattern (Loading, Populated, Empty, Error) | [`ux-master-doctrine.md`](ux-master-doctrine.md) |
