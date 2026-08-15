# swap (`B4XDaisySwap`)

Animated content switcher between two states (on/off/indeterminate) — for icon toggles, dark mode switches, etc.

## 1. Overview & Verification Status
- **Class**: `B4XDaisySwap`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySwap.bas`
- **Verified Demos**: `B4XPageSwap.bas`
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `IsReady As Boolean`
- `RemoveViewFromParent`
- `SendToBack`
- `SetIndeterminateView(v As B4XView)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `SetOffView(v As B4XView)`
- `SetOnView(v As B4XView)`
- `Toggle`
- `View As B4XView`
- `getChecked As Boolean`
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
- `setChecked(Value As Boolean)`
- `setDuration(Value As Int)`
- `setHeight(Value As Object)`
- `setIndeterminateColor(Value As Object)`
- `setIndeterminateColorVariant(VariantName As String)`
- `setIndeterminateText(Value As String)`
- `setIndeterminateTextColorVariant(VariantName As String)`
- `setLeft(Value As Int)`
- `setOffColor(Value As Object)`
- `setOffColorVariant(VariantName As String)`
- `setOffText(Value As String)`
- `setOffTextColorVariant(VariantName As String)`
- `setOnColor(Value As Object)`
- `setOnColorVariant(VariantName As String)`
- `setOnText(Value As String)`
- `setOnTextColorVariant(VariantName As String)`
- `setState(Value As String)`
- `setSwapStyle(Value As String)`
- `setSwapType(Value As String)`
- `setTag(Value As Object)`
- `setTextSize(Value As String)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Object)`

## 7. Public Fields
- `mBase As B4XView`
