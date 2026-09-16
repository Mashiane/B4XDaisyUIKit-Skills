# tab (`B4XDaisyTab`)

DaisyUI `Tab` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyTab`
- **Lifecycle Type**: `Non-standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyTab.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyTab.bas)
- **Verified Demo Source**: B4XPageTab.bas
- **Web DaisyUI Mapping**: `.tab` → `B4XDaisyTab`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |

### Web DaisyUI HTML Syntax
Using buttons:
```html
<div role="tablist" class="tabs {MODIFIER}">
  <button role="tab" class="tab">Tab</button>
</div>
```

Using radio inputs:
```html
<div role="tablist" class="tabs tabs-box">
  <input type="radio" name="my_tabs" class="tab" aria-label="Tab" />
</div>
```

## 2. Verified B4X Syntax & Recipe
```b4x
y = AddDescription(contentLeft, y, maxW, "Default tab style with no special styling. Second tab is active.")

    Dim ex1 As B4XDaisyTab
    ex1.Initialize(Me, "ex1")
    ex1.AddToParent(pnlHost, contentLeft, y, maxW, 200dip)
    ex1.Style = "default"
    ex1.AddTab("Tab 1")
    ex1.AddTab("Tab 2")
    ex1.AddTab("Tab 3")
    ex1.ActiveIndex = 1
    ex1.SetTabContentText(0, "Content for Tab 1")
    ex1.SetTabContentText(1, "Content for Tab 2")
    ex1.SetTabContentText(2, "Content for Tab 3")
    ex1.ResizeTab
    Dim ex1H As Int = ex1.GetComputedHeight
    y = y + ex1H + 20dip

    y = AddSectionTitle(contentLeft, y, maxW, "2. Tabs Border")
    y = AddDescription(contentLeft, y, maxW, "Border style shows a bottom border indicator on the active tab.")

    Dim ex2 As B4XDaisyTab
    ex2.Initialize(Me, "ex2")
    ex2.AddToParent(pnlHost, contentLeft, y, maxW, 200dip)
    ex2.Style = "border"
    ex2.ActiveColor = "primary"
    ex2.AddTab("Tab 1")
    ex2.AddTab("Tab 2")
    ex2.AddTab("Tab 3")
    ex2.ActiveIndex = 1
    ex2.SetTabContentText(0, "Border tab content 1")
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyTab` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
5. **Execution / Assembly:** Tab container requiring sequential `.AddTab` or `.AddTabContent` calls to populate pages.

### Deviation Mechanism
- Tab container requiring sequential `.AddTab` or `.AddTabContent` calls to populate pages.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `SetTabTitle, SetTabTitleTextColor, SetTabTitleColor` (+ 24 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Style` | Style | `String` | default | default|border|lift|box |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `Placement` | Placement | `String` | top | top|bottom |
| `ActiveIndex` | Active Index | `Int` | 0 |  |
| `Scrollable` | Scrollable | `Boolean` | False |  |
| `Alignment` | Alignment | `String` | center | left|center|right |
| `ActiveColor` | Active Color | `String` | primary | none|primary|secondary|accent|neutral|info|success|warning|error |
| `Width` | Width | `String` | w-full |  |
| `Height` | Height | `String` | h-auto |  |

## 5. Declared Events
- `TabClick (Index As Int)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddTab(Text As String)`
- `AddTabWithIcon(Text As String, IconText As String)`
- `SetTabDisabled(Index As Int, Disabled As Boolean)`
- `SetTabVariant(Index As Int, Variant As String)`
- `SetTabTitle(Index As Int, Text As String)`
- `SetTabTitleTextColor(Index As Int, Color As Int)`
- `SetTabTitleColor(Index As Int, Color As Int)`
- `SetTabContent(Index As Int, Content As B4XView)`
- `GetTabContent(Index As Int) As B4XView`
- `SetTabContentText(Index As Int, Text As String)`
- `SetTabs(lstTabsList As List)`
- `ClearTabs`
- `getTabCount As Int`
- `GetComputedHeight As Int`
- `setActiveIndex(Value As Int)`
- `getActiveIndex As Int`
- `setStyle(Value As String)`
- `getStyle As String`
- `setSize(Value As String)`
- `getSize As String`
- `setPlacement(Value As String)`
- `getPlacement As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setScrollable(Value As Boolean)`
- `getScrollable As Boolean`
- `setAlignment(Value As String)`
- `getAlignment As String`
- `setActiveColor(Value As String)`
- `getActiveColor As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `UpdateTheme`
- `RemoveViewFromParent`
- `ResizeTab`
- `Refresh`
- `Base_Resize(Width As Double, Height As Double)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

