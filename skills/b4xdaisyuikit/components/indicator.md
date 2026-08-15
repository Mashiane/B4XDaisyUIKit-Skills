# indicator (`B4XDaisyIndicator`)

Small badge or dot indicator overlaid on a parent view (notification count, online status dot, etc.).

## 1. Overview & Verification Status
- **Class**: `B4XDaisyIndicator`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyIndicator.bas`
- **Verified Demos**: `B4XPageDropdown.bas, B4XPageIndicator.bas, B4XPageNavbar.bas, B4XPageSvgIcon.bas`
- **Web DaisyUI Mapping**: `.indicator` → `B4XDaisyIndicator`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim ind As B4XDaisyIndicator
ind.Initialize(Me, "ind")
ind.AddToParent(pnlHost, pad, y, 44dip, 44dip)
ind.Variant = "error"
ind.Counter = True
ind.setValue(5)
ind.HorizontalPlacement = "end"
ind.VerticalPlacement = "top"

' Attach to a target view (e.g. a button)
ind.AttachTo(myButton.getView)

```

## 3. Native Composition Rules & Gotchas
- Badge overlay container attaching unread counts or status dots to avatar/icon corners.
- Wrap target view using `ind.Wrap(myAvatar.getView)`.
- Set `BadgeText` for counts (e.g. `"9+"`) or leave blank for a status dot.
- Configure `Placement` (`"top-right"`, `"top-left"`, `"bottom-right"`, `"bottom-left"`).

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| HorizontalPlacement | Horizontal Placement | String | end | start|center|end |
| VerticalPlacement | Vertical Placement | String | top | top|middle|bottom |
| OffsetX | Offset X | String | 0 |  |
| OffsetY | Offset Y | String | 0 |  |
| Text | Text | String |  |  |
| Counter | Counter | Boolean | False |  |
| CapValue | Cap Value | Int | 99 |  |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| Size | Size | String | sm | xs|sm|md|lg|xl |
| IconAsset | Icon Asset | String |  |  |
| Rounded | Rounded | String | rounded | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| TextColor | Text Color | Color | 0x00000000 |  |
| BackgroundColor | Background Color | Color | 0x00000000 |  |
| Visible | Visible | Boolean | True |  |
| Clickable | Clickable | Boolean | False |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AttachTo(Target As B4XView)`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `Decrement As Int`
- `DecrementBy(Amount As Int) As Int`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `DetachTarget`
- `GetComputedHeight As Int`
- `Increment As Int`
- `IncrementBy(Amount As Int) As Int`
- `Initialize(Callback As Object, EventName As String)`
- `IsReady As Boolean`
- `RefreshPlacement`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `View As B4XView`
- `getBackgroundColor As Int`
- `getCapValue As Int`
- `getClickable As Boolean`
- `getCounter As Boolean`
- `getHeight As Int`
- `getHorizontalPlacement As String`
- `getIconAsset As String`
- `getLeft As Int`
- `getOffsetX As Float`
- `getOffsetY As Float`
- `getRounded As String`
- `getSize As String`
- `getTag As Object`
- `getText As String`
- `getTextColor As Int`
- `getTop As Int`
- `getValue As Int`
- `getVariant As String`
- `getVerticalPlacement As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `setBackgroundColor(Value As Int)`
- `setBackgroundColorVariant(VariantName As String)`
- `setCapValue(Value As Int)`
- `setClickable(Value As Boolean)`
- `setCounter(Value As Boolean)`
- `setHeight(Value As Int)`
- `setHorizontalPlacement(Value As String)`
- `setIconAsset(Value As String)`
- `setLeft(Value As Int)`
- `setOffsetX(Value As Object)`
- `setOffsetY(Value As Object)`
- `setRounded(Value As String)`
- `setSize(Value As String)`
- `setTag(Value As Object)`
- `setText(Value As String)`
- `setTextColor(Value As Int)`
- `setTextColorVariant(VariantName As String)`
- `setTop(Value As Int)`
- `setValue(Value As Int)`
- `setVariant(Value As String)`
- `setVerticalPlacement(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
