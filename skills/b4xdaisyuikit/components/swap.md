# swap (`B4XDaisySwap`)

Animated content switcher between two states (on/off/indeterminate) — for icon toggles, dark mode switches, etc.

## 1. Overview
- **Class**: `B4XDaisySwap`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySwap.bas`
- **Web DaisyUI Mapping**: `.swap` → `B4XDaisySwap`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim sw As B4XDaisySwap
sw.Initialize(Me, "sw")
sw.AddToParent(pnlHost, pad, y, 48dip, 48dip)
sw.SwapType = "svg"
sw.SwapStyle = "rotate"
sw.State = "off"

' Set SVG for each state
Dim onView As B4XDaisySvgIcon
onView.Initialize(Me, "onView")
onView.setSvgAsset("sun-solid.svg")
sw.SetOnView(onView.getView)

Dim offView As B4XDaisySvgIcon
offView.Initialize(Me, "offView")
offView.setSvgAsset("moon-solid.svg")
sw.SetOffView(offView.getView)

y = y + sw.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Two-state animated icon/text toggle (e.g. play/pause, light/dark, bookmark on/off).
- Configure `SwapOnIcon` and `SwapOffIcon`.
- Choose animation via `AnimationType` (`"rotate"`, `"flip"`).
- Handle state changes in the `Change (State As Boolean)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| SwapType | Swap Type | String | text | text|svg|avatar |
| SwapStyle | Swap Style | String | none | none|rotate|flip |
| State | State | String | off | off|on|indeterminate |
| OnText | On Text | String | ON |  |
| OffText | Off Text | String | OFF |  |
| IndeterminateText | Indeterminate Text | String |  |  |
| OnColor | On Color | Color | 0x00000000 |  |
| OffColor | Off Color | Color | 0x00000000 |  |
| IndeterminateColor | Indeterminate Color | Color | 0x00000000 |  |
| TextSize | Text Size | String | text-sm |  |
| Width | Width | String | w-12 |  |
| Height | Height | String | h-12 |  |
| Duration | Duration | Int | 300 |  |

## 5. Declared Events
- `Click (State As String, Checked As Boolean)`
- `Changed (State As String, Checked As Boolean)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getChecked As Boolean`
- `GetComputedHeight As Int`
- `getDuration As Int`
- `getHeight As Float`
- `getIndeterminateColor As Int`
- `getIndeterminatePanel As B4XView`
- `getIndeterminateText As String`
- `getLeft As Int`
- `getOffColor As Int`
- `getOffPanel As B4XView`
- `getOffText As String`
- `getOnColor As Int`
- `getOnPanel As B4XView`
- `getOnText As String`
- `getState As String`
- `getSwapStyle As String`
- `getSwapType As String`
- `getTag As Object`
- `getTextLineHeightDip As Float`
- `getTextSize As String`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Float`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `RemoveViewFromParent`
- `SendToBack`
- `setChecked(bValue As Boolean)`
- `setDuration(iValue As Int)`
- `setHeight(oValue As Object)`
- `setIndeterminateColor(oValue As Object)`
- `setIndeterminateColorVariant(sVariantName As String)`
- `setIndeterminateText(sValue As String)`
- `setIndeterminateTextColorVariant(sVariantName As String)`
- `SetIndeterminateView(vView As B4XView)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setOffColor(oValue As Object)`
- `setOffColorVariant(sVariantName As String)`
- `setOffText(sValue As String)`
- `setOffTextColorVariant(sVariantName As String)`
- `SetOffView(vView As B4XView)`
- `setOnColor(oValue As Object)`
- `setOnColorVariant(sVariantName As String)`
- `setOnText(sValue As String)`
- `setOnTextColorVariant(sVariantName As String)`
- `SetOnView(vView As B4XView)`
- `setState(sValue As String)`
- `setSwapStyle(sValue As String)`
- `setSwapType(sValue As String)`
- `setTag(oValue As Object)`
- `setTextSize(sValue As String)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`
- `Toggle`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
