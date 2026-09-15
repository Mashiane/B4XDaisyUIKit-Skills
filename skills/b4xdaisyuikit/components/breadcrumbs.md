# breadcrumbs (`B4XDaisyBreadcrumbs`)

DaisyUI `Breadcrumbs` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyBreadcrumbs`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyBreadcrumbs.bas`
- **Verified Demo Source**: B4XPageBreadcrumbs.bas
- **Web DaisyUI Mapping**: `.breadcrumbs` → `B4XDaisyBreadcrumbs`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``breadcrumbs`` | Member | `.SetComponent(...)` | Native configuration |

### Web DaisyUI HTML Syntax
```html
<div class="breadcrumbs">
  <ul><li><a>Link</a></li></ul>
</div>
```

## 2. Verified B4X Syntax & Recipe
```b4x
''' <summary>
    ''' Example 1: Basic breadcrumbs.
    ''' </summary>
    currentY = AddSectionTitle(contentLeft, currentY, maxW, "1. Basic breadcrumbs")
    currentY = AddDescription(contentLeft, currentY, maxW, "Earlier crumbs are clickable and the final crumb stays passive as the current location.")
    Dim basic As B4XDaisyBreadcrumbs
    basic.Initialize(Me, "crumbs")
    basic.AddToParent(pnlHost, contentLeft, currentY, maxW, 40dip)
    basic.TextSize = "text-sm"
    basic.CurrentIndex = 2
    basic.Clear
    basic.AddItem("home", "Home", "", True)
    basic.AddItem("documents", "Documents", "", True)
    basic.AddItem("add-document", "Add Document", "", False)
    basic.SetLayoutAnimated(0, basic.Left, basic.Top, basic.Width, basic.GetComputedHeight)
    currentY = currentY + basic.GetComputedHeight + 18dip

    ''' <summary>
    ''' Example 2: Breadcrumbs with icons.
    ''' </summary>
    currentY = AddSectionTitle(contentLeft, currentY, maxW, "2. Breadcrumbs with icons")
    currentY = AddDescription(contentLeft, currentY, maxW, "Each breadcrumb can include a Daisy-style SVG icon while keeping the same horizontal flow and separator treatment.")
    Dim withIcons As B4XDaisyBreadcrumbs
    withIcons.Initialize(Me, "crumbs")
    withIcons.AddToParent(pnlHost, contentLeft, currentY, maxW, 40dip)
    withIcons.TextSize = "text-sm"
    withIcons.CurrentIndex = 2
    withIcons.Clear
    withIcons.AddItem("home-icon", "Home", "breadcrumb-folder.svg", True)
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyBreadcrumbs` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `UpdateTheme, getItems, setEnabled` (+ 12 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |
| `TextSize` | Text Size | `String` | text-sm | text-sm|text-base|text-lg|text-xl |
| `CurrentIndex` | Current Index | `Int` | -1 |  |
| `RTL` | Right-To-Left | `Boolean` | False |  |

## 5. Declared Events
- `ItemClick (ItemId As String)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `View As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `UpdateTheme`
- `Refresh`
- `GetComputedHeight As Int`
- `SetItems(lstItems As List)`
- `getItems As List`
- `Clear`
- `AddItem(Id As String, Text As String, IconPath As String, Clickable As Boolean)`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTextSize(Value As String)`
- `getTextSize As String`
- `setCurrentIndex(Value As Int)`
- `getCurrentIndex As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `RemoveViewFromParent`
- `Base_Resize(Width As Double, Height As Double)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `getRTL As Boolean`
- `setRTL(Value As Boolean)`

## 7. Public Fields
- `mBase As B4XView`

## Canonical Creation Pattern & Recipe

`B4XDaisyBreadcrumbs` is a horizontal navigation breadcrumb trail.

```vb
Dim crumbs As B4XDaisyBreadcrumbs
crumbs.Initialize(Me, "crumbs")
crumbs.AddToParent(pnlHost, x, y, maxW, 40dip)
crumbs.TextSize = "text-sm"
crumbs.Clear
crumbs.AddItem("home", "Home", "home-solid.svg", True)
crumbs.AddItem("inventory", "Inventory", "", True)
crumbs.AddItem("current", "Batch #1042", "", False)
crumbs.CurrentIndex = 2

Private Sub crumbs_ItemClick(Tag As Object)
    If B4XDaisyApp.DebugLogs Then Log("Selected breadcrumb: " & Tag)
End Sub

y = y + crumbs.GetComputedHeight + gap
```
