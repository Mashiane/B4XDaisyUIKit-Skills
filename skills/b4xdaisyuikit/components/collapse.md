# collapse (`B4XDaisyCollapse`)

DaisyUI `Collapse` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyCollapse`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyCollapse.bas`
- **Verified Demo Source**: B4XPageAccordion.bas, B4XPageCollapse.bas
- **Web DaisyUI Mapping**: `.collapse` → `B4XDaisyCollapse`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``collapse`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``collapse-title`, `collapse-content`` | Sub-Panel | `GetTitlePanel`, `GetContentPanel`, `GetActionsPanel` | Mount child views inside target sub-panel |
| `modifier` | ``collapse-arrow`, `collapse-plus`, `collapse-open`, `collapse-close`` | Property | `.LayoutMode` / `.Style` / `.Shape` | Custom component layout modifier |

### Web DaisyUI HTML Syntax
```html
<div tabindex="0" class="collapse {MODIFIER}">
  <div class="collapse-title">{title}</div>
  <div class="collapse-content">{CONTENT}</div>
</div>
```

## 2. Verified B4X Syntax & Recipe
```b4x
' #region Example 1: Basic collapse (tap to expand)
    y = AddSectionTitle("Basic Collapse", y, maxW)
    Dim c1 As B4XDaisyCollapse
    c1.Initialize(Me, "collapse1")
    c1.AddToParent(pnlHost, PAGE_PAD, y, maxW, titleH)
    c1.TitleText = "Click to open!"
    AddBodyLabel(c1, "Hello! I am the collapse body.", maxW)
    y = y + titleH + gap
    ' #endregion

    ' #region Example 2: With arrow icon
    y = AddSectionTitle("With Arrow Icon", y, maxW)
    Dim c2 As B4XDaisyCollapse
    c2.Initialize(Me, "collapse2")
    c2.AddToParent(pnlHost, PAGE_PAD, y, maxW, titleH)
    c2.Icon = "arrow"
    c2.TitleText = "Click to open!"
    AddBodyLabel(c2, "Hello! I am the collapse body.", maxW)
    y = y + titleH + gap
    ' #endregion

    ' #region Example 3: With plus/minus icon
    y = AddSectionTitle("With Plus/Minus Icon", y, maxW)
    Dim c3 As B4XDaisyCollapse
    c3.Initialize(Me, "collapse3")
    c3.AddToParent(pnlHost, PAGE_PAD, y, maxW, titleH)
    c3.Icon = "plus"
    c3.TitleText = "Click to open!"
    AddBodyLabel(c3, "Hello! I am the collapse body.", maxW)
    y = y + titleH + gap
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyCollapse` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `UpdateTheme, setOpened, setOpen` (+ 36 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Opened` | Opened | `Boolean` | False |  |
| `Icon` | Icon | `String` | none | none|arrow|plus |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Rounded` | Rounded | `String` | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |
| `Visible` | Visible | `Boolean` | True |  |
| `TitleText` | Title Text | `String` | Click to expand |  |
| `TitleVariant` | Title Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `TitleSize` | Title Size | `String` | text-sm | text-xs|text-sm|text-base|text-lg|text-xl|text-2xl |
| `TitleIconName` | Title Icon | `String` |  |  |
| `TitleColor` | Title Color | `Color` | 0x00000000 |  |
| `TitleIconColor` | Title Icon Color | `Color` | 0x00000000 |  |
| `Width` | Width | `String` | w-full |  |
| `BorderWidth` | Border Width | `String` | border |  |
| `BorderStyle` | Border Style | `String` | solid | solid|dashed|dotted |
| `BorderColor` | Border Color | `String` | border-base-300 |  |
| `IconPosition` | Icon Position | `String` | right | left|right |
| `GroupName` | Group Name | `String` |  |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `StateChanged (Open As Boolean)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `UpdateTheme`
- `Base_Resize(Width As Double, Height As Double)`
- `setOpened(Value As Boolean)`
- `setOpen(Value As Boolean)`
- `getOpened As Boolean`
- `getOpen As Boolean`
- `Toggle`
- `setIcon(Value As String)`
- `getIcon As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTitleText(Value As String)`
- `getTitleText As String`
- `setTitleVariant(Value As String)`
- `getTitleVariant As String`
- `setTitleSize(Value As String)`
- `getTitleSize As String`
- `setTitleBackgroundColor(Value As Int)`
- `getTitleBackgroundColor As Int`
- `setTitleTextColor(Value As Int)`
- `getTitleTextColor As Int`
- `setTitleIconName(Value As String)`
- `getTitleIconName As String`
- `setTitleColor(Value As Int)`
- `getTitleColor As Int`
- `setTitleIconColor(Value As Int)`
- `getTitleIconColor As Int`
- `RefreshContent`
- `setWidth(Value As String)`
- `getWidth As String`
- `setBorderStyle(Value As String)`
- `getBorderStyle As String`
- `setBorderWidth(Value As String)`
- `getBorderWidth As String`
- `setBorderColor(Value As String)`
- `getBorderColor As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `setIconPosition(Value As String)`
- `getIconPosition As String`
- `setGroupName(Value As String)`
- `getGroupName As String`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `CollapseTitle As B4XDaisyCollapseTitle`
- `CollapseContent As B4XDaisyCollapseContent`
- `getContentView As B4XView`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`
- `Title As B4XDaisyCollapseTitle`
- `Content As B4XDaisyCollapseContent`

## Canonical Creation Pattern & Recipe

`B4XDaisyCollapse` is a standalone disclosure panel.

```vb
Dim col As B4XDaisyCollapse
col.Initialize(Me, "col")
col.AddToParent(pnlHost, x, y, maxW, 60dip)
col.TitleText = "Click to Expand Details"
col.Icon = "arrow"                             ' "arrow" | "plus" | "none"
col.IconPosition = "right"                     ' "left" | "right"
col.Variant = "base-200"

' Add custom content onto getContentView:
Dim pnlC As B4XView = col.getContentView
Dim txtC As B4XDaisyText
txtC.Initialize(Me, "")
txtC.AddToParent(pnlC, 16dip, 8dip, maxW - 32dip, 30dip)
txtC.Text = "Expanded details visible on tap."

y = y + col.GetComputedHeight + gap
```
