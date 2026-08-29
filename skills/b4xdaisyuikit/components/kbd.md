# kbd (`B4XDaisyKbd`)

DaisyUI `Kbd` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyKbd`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyKbd.bas`
- **Verified Demo Source**: B4XPageKbd.bas (lines 268–269)
- **Web DaisyUI Mapping**: `.kbd` → `B4XDaisyKbd`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``kbd`` | Member | `.SetComponent(...)` | Native configuration |
| `size` | ``kbd-xs`, `kbd-sm`, `kbd-md`, `kbd-lg`, `kbd-xl`` | Property | `.Size = "sm"` (or xs, md, lg, xl) | Preset dimension scaling |

### Web DaisyUI HTML Syntax
```html
<kbd class="kbd {MODIFIER}">K</kbd>
```

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub AddKbd(Text As String, Size As String, Left As Int, Top As Int, Width As Int, Height As Int, Tag As String) As B4XDaisyKbd
    Dim k As B4XDaisyKbd
    k.Initialize(Me, "component")
    k.AddToParent(pnlHost, Left, Top, Width, Height)
    k.Text = Text
    k.Size = Size
    k.Tag = Tag
    Return k
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyKbd` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getText, getSize, getRounded` (+ 11 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Text` | Text | `String` | `K` |  |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `Rounded` | Rounded | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Padding` | Padding | `String` | `` |  |
| `Margin` | Margin | `String` | `` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00FFFFFF` |  |
| `TextColor` | Text Color | `Color` | `0x00FFFFFF` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `AutoResize` | Auto Resize | `Boolean` | `True` |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `View As B4XView`
- `getAutoResize As Boolean`
- `getBackgroundColor As Int`
- `getHeight As Int`
- `getLeft As Int`
- `getMargin As String`
- `getPadding As String`
- `getRounded As String`
- `getSize As String`
- `getTag As Object`
- `getText As String`
- `getTextColor As Int`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAutoResize(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setHeight(iValue As Int)`
- `setLeft(iValue As Int)`
- `setMargin(sValue As String)`
- `setPadding(sValue As String)`
- `setRounded(sValue As String)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setText(sValue As String)`
- `setTextColor(iValue As Int)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

