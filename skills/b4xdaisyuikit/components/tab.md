# tab (`B4XDaisyTab`)

DaisyUI `Tab` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyTab`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyTab.bas`
- **Verified Demo Source**: B4XPageTab.bas (lines 49–382)
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
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Style` | Style | `String` | `default` | default|border|lift|box |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `Placement` | Placement | `String` | `top` | top|bottom |
| `ActiveIndex` | Active Index | `Int` | `0` |  |
| `Scrollable` | Scrollable | `Boolean` | `False` |  |
| `Alignment` | Alignment | `String` | `center` | left|center|right |
| `ActiveColor` | Active Color | `String` | `primary` | none|primary|secondary|accent|neutral|info|success|warning|error |
| `Width` | Width | `String` | `w-full` |  |
| `Height` | Height | `String` | `h-auto` |  |

## 5. Declared Events
- `TabClick (Index As Int)`

## 6. Public Methods & APIs
- `AddTab(sText As String)`
- `AddTabWithIcon(sText As String, sIconText As String)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `ClearTabs`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `GetTabContent(iIndex As Int) As B4XView`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `ResizeTab`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `SetTabContent(iIndex As Int, vContent As B4XView)`
- `SetTabContentText(iIndex As Int, sText As String)`
- `SetTabDisabled(iIndex As Int, bDisabled As Boolean)`
- `SetTabTitle(iIndex As Int, sText As String)`
- `SetTabTitleColor(iIndex As Int, iColor As Int)`
- `SetTabTitleTextColor(iIndex As Int, iColor As Int)`
- `SetTabVariant(iIndex As Int, sVariant As String)`
- `SetTabs(lstTabsList As List)`
- `UpdateTheme`
- `View As B4XView`
- `getActiveColor As String`
- `getActiveIndex As Int`
- `getAlignment As String`
- `getEnabled As Boolean`
- `getHeight As String`
- `getLeft As Int`
- `getPlacement As String`
- `getScrollable As Boolean`
- `getSize As String`
- `getStyle As String`
- `getTabCount As Int`
- `getTag As Object`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As String`
- `setActiveColor(sValue As String)`
- `setActiveIndex(iValue As Int)`
- `setAlignment(sValue As String)`
- `setEnabled(bValue As Boolean)`
- `setHeight(sValue As String)`
- `setLeft(iValue As Int)`
- `setPlacement(sValue As String)`
- `setScrollable(bValue As Boolean)`
- `setSize(sValue As String)`
- `setStyle(sValue As String)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(sValue As String)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

