# breadcrumbs (`B4XDaisyBreadcrumbs`)

DaisyUI `Breadcrumbs` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyBreadcrumbs`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyBreadcrumbs.bas`
- **Verified Demo Source**: B4XPageBreadcrumbs.bas (lines 60–155)
- **Web DaisyUI Mapping**: `.breadcrumbs` → `B4XDaisyBreadcrumbs`

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
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `TextSize` | Text Size | `String` | `text-sm` | text-sm|text-base|text-lg|text-xl |
| `CurrentIndex` | Current Index | `Int` | `-1` |  |
| `RTL` | Right-To-Left | `Boolean` | `False` |  |

## 5. Declared Events
- `ItemClick (ItemId As String)`

## 6. Public Methods & APIs
- `AddItem(sId As String, sText As String, sIconPath As String, bClickable As Boolean)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `Clear`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetItems(lstItems As List)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `UpdateTheme`
- `View As B4XView`
- `getCurrentIndex As Int`
- `getEnabled As Boolean`
- `getHeight As Int`
- `getItems As List`
- `getLeft As Int`
- `getRTL As Boolean`
- `getTag As Object`
- `getTextSize As String`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `setCurrentIndex(iValue As Int)`
- `setEnabled(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `setLeft(iValue As Int)`
- `setRTL(bValue As Boolean)`
- `setTag(oValue As Object)`
- `setTextSize(sValue As String)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

