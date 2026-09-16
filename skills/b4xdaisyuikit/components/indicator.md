# indicator (`B4XDaisyIndicator`)

DaisyUI `Indicator` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyIndicator`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyIndicator.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyIndicator.bas)
- **Verified Demo Source**: B4XPageDropdown.bas, B4XPageIndicator.bas, B4XPageNavbar.bas, B4XPageSvgIcon.bas
- **Web DaisyUI Mapping**: `.indicator` → `B4XDaisyIndicator`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``indicator`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``indicator-item`` | Method / Part | `AddItem(...)` / `GetContentPanel` | Sub-element container |
| `placement` | ``indicator-start`, `indicator-center`, `indicator-end`, `indicator-top`, `indicator-middle`, `indicator-bottom`` | Member | `.SetPlacement(...)` | Native configuration |

### Web DaisyUI HTML Syntax
```html
<div class="indicator">
  <span class="indicator-item">{indicator content}</span>
  <div>{main content}</div>
</div>
```

## 2. Verified B4X Syntax & Recipe
```b4x
' --- Pattern: Indicator Badge Attached to a Target View (Button, Avatar, Box) ---
' 1. Create base target view
Dim btn As B4XDaisyButton
btn.Initialize(Me, "btn")
btn.Text = "Inbox"
btn.Variant = "primary"
Dim btnView As B4XView = btn.AddToParent(pnlHost, 12dip, 12dip, 120dip, 40dip)

' 2. Create and configure indicator
Dim ind As B4XDaisyIndicator
ind.Initialize(Me, "ind")
ind.setCounter(True)
ind.setText("8")
ind.setVariant("error")
ind.setSize("sm")
ind.setHorizontalPlacement("end")  ' start, center, end
ind.setVerticalPlacement("top")     ' top, middle, bottom

' 3. Add to host and attach to target view (automatically handles alignment & placement)
ind.AddToParent(pnlHost, 12dip, 12dip, 120dip, 40dip)
ind.AttachTo(btnView)
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyIndicator` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment & Target Anchoring:** Attach to host container with `<var>.AddToParent(...)`, then anchor to the target view with `<var>.AttachTo(vTarget)`.
4. **Property Configuration:** Configure placement (`setHorizontalPlacement`, `setVerticalPlacement`), style (`setVariant`, `setSize`), and content (`setText`, `setCounter`).

### Preconditions & Gotchas
- When attaching to a target view, `B4XDaisyVariants.DisableClipping` is automatically applied to ensure the badge displays cleanly over container bounds.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddToParentAt, DetachTarget, RefreshPlacement` (+ 24 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `HorizontalPlacement` | Horizontal Placement | `String` | end | start|center|end |
| `VerticalPlacement` | Vertical Placement | `String` | top | top|middle|bottom |
| `OffsetX` | Offset X | `String` | 0 |  |
| `OffsetY` | Offset Y | `String` | 0 |  |
| `Text` | Text | `String` |  |  |
| `Counter` | Counter | `Boolean` | False |  |
| `CapValue` | Cap Value | `Int` | 99 |  |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Size` | Size | `String` | sm | xs|sm|md|lg|xl |
| `IconAsset` | Icon Asset | `String` |  |  |
| `Rounded` | Rounded | `String` | rounded | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `TextColor` | Text Color | `Color` | 0x00000000 |  |
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Clickable` | Clickable | `Boolean` | False |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `Base_Resize(Width As Double, Height As Double)`
- `AttachTo(Target As B4XView)`
- `DetachTarget`
- `RefreshPlacement`
- `setHorizontalPlacement(Value As String)`
- `getHorizontalPlacement As String`
- `setVerticalPlacement(Value As String)`
- `getVerticalPlacement As String`
- `setOffsetX(Value As Object)`
- `getOffsetX As Float`
- `setOffsetY(Value As Object)`
- `getOffsetY As Float`
- `setText(Value As String)`
- `getText As String`
- `setCounter(Value As Boolean)`
- `getCounter As Boolean`
- `setVariant(Value As String)`
- `getVariant As String`
- `setSize(Value As String)`
- `getSize As String`
- `setIconAsset(Value As String)`
- `getIconAsset As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setBackgroundColorVariant(VariantName As String)`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `setCapValue(Value As Int)`
- `getCapValue As Int`
- `setValue(Value As Int)`
- `getValue As Int`
- `GetComputedHeight As Int`
- `setClickable(Value As Boolean)`
- `getClickable As Boolean`
- `RemoveViewFromParent`
- `Increment As Int`
- `IncrementBy(Amount As Int) As Int`
- `Decrement As Int`
- `DecrementBy(Amount As Int) As Int`
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

## 7. Public Fields
- `mBase As B4XView`

