# countdown (`B4XDaisyCountdown`)

Visual countdown clock box showing days, hours, minutes, and seconds with flip or roll digit animations.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyCountdown`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyCountdown.bas`
- **Verified Demos**: `B4XPageCountdown.bas`
- **Web DaisyUI Mapping**: `.countdown` → `B4XDaisyCountdown`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim cd As B4XDaisyCountdown
cd.Initialize(Me, "cd")
cd.AddToParent(pnlHost, pad, y, maxW, 60dip)
y = y + 60dip + gap
```

## 3. Native Composition Rules & Gotchas
- Numeric flip/clock countdown timer for sales, deadlines, and OTP resend delays.
- Set `ShowDays = False` and `ShowSeconds = True` for short verification countdowns.
- Start timer via `Start` or configure target date via `TargetDate`.
- Fires `Complete` event when the timer reaches zero.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Orientation | Orientation | String | horizontal | horizontal|vertical |
| Gap | Gap | String | gap-2 | gap-0|gap-1|gap-2|gap-3|gap-4|gap-5|gap-6|gap-8 |
| AutoWidth | Auto Width | Boolean | True |  |
| BackgroundColor | Background Color | String | transparent | transparent|base-100|base-200|base-300|neutral|primary|secondary|accent |
| Border | Border | Boolean | False |  |
| Rounded | Rounded | String | rounded-md | none|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| Shadow | Shadow | String | shadow-md | none|shadow|shadow-sm|shadow-md|shadow-lg|shadow-xl|shadow-2xl|shadow-inner |
| Padding | Padding | String | p-0 | p-0|p-1|p-2|p-3|p-4|p-5|p-6|p-8 |
| CountDownType | Count Down Type | String | default | default|auto |
| Format | Display Format | String |  |  |
| TargetDate | Target Date | String | 2026-12-31 |  |
| AutoStart | Auto Start | Boolean | True |  |
| Labels | Labels | String |  |  |
| LabelPosition | Label Position | String | none | none|bottom|right |
| TextSize | Font Size | String | md | text-xs|text-sm|md|text-base|text-lg|text-xl|text-2xl|text-3xl|text-4xl|text-5xl|text-6xl|text-7xl|text-8xl|text-9xl |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| Outline | Outline | Boolean | False |  |
| Visible | Visible | Boolean | True |  |

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `AddItem(Item As B4XDaisyCountdownItem)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `Clear`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `IsRunning As Boolean`
- `Refresh`
- `RemoveItem(Item As B4XDaisyCountdownItem)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Start`
- `Stop`
- `UpdateTheme`
- `getAutoStart As Boolean`
- `getAutoWidth As Boolean`
- `getBackgroundColor As String`
- `getBorder As Boolean`
- `getCountDownType As String`
- `getFormat As String`
- `getGap As String`
- `getHeight As Int`
- `getIsInitialized As Boolean`
- `getItem(Index As Int) As B4XDaisyCountdownItem`
- `getItemsCount As Int`
- `getLabelPosition As String`
- `getLabels As String`
- `getLeft As Int`
- `getOrientation As String`
- `getOutline As Boolean`
- `getPadding As String`
- `getRounded As String`
- `getShadow As String`
- `getTag As Object`
- `getTargetDate As String`
- `getTextSize As String`
- `getTop As Int`
- `getVariant As String`
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAutoStart(Value As Boolean)`
- `setAutoWidth(Value As Boolean)`
- `setBackgroundColor(Value As String)`
- `setBorder(Value As Boolean)`
- `setCountDownType(t As String)`
- `setFormat(f As String)`
- `setGap(Value As String)`
- `setHeight(Value As Int)`
- `setLabelPosition(Value As String)`
- `setLabels(Value As String)`
- `setLeft(Value As Int)`
- `setOrientation(Value As String)`
- `setOutline(Value As Boolean)`
- `setPadding(Value As String)`
- `setRounded(Value As String)`
- `setShadow(Value As String)`
- `setTag(Value As Object)`
- `setTargetDate(Value As String)`
- `setTextSize(Value As String)`
- `setTop(Value As Int)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`

## 8. Compound Sub-Components
- **`B4XDaisyCountdownItem`**: Individual time segment box (days, hours, minutes, seconds) with numeric counter and bottom unit label. Managed via `B4XDaisyCountdown.AddCountdownItem`.
