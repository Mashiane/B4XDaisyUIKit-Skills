# indicator (`B4XDaisyIndicator`)

Small badge or dot indicator overlaid on a parent view (notification count, online status dot, etc.).

## 1. Overview
- **Class**: `B4XDaisyIndicator`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyIndicator.bas`
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
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddToParentAt(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AttachTo(vTarget As B4XView)`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `Decrement As Int`
- `DecrementBy(iAmount As Int) As Int`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `DetachTarget`
- `getBackgroundColor As Int`
- `getCapValue As Int`
- `getClickable As Boolean`
- `GetComputedHeight As Int`
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
- `Increment As Int`
- `IncrementBy(iAmount As Int) As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `RefreshPlacement`
- `RemoveViewFromParent`
- `SendToBack`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setCapValue(iValue As Int)`
- `setClickable(bValue As Boolean)`
- `setCounter(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `setHorizontalPlacement(sValue As String)`
- `setIconAsset(sValue As String)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setOffsetX(oValue As Object)`
- `setOffsetY(oValue As Object)`
- `setRounded(sValue As String)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setText(sValue As String)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTop(iValue As Int)`
- `setValue(iValue As Int)`
- `setVariant(sValue As String)`
- `setVerticalPlacement(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
