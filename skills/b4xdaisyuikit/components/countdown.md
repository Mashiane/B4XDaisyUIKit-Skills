# countdown (`B4XDaisyCountdown`)

DaisyUI `Countdown` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyCountdown`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyCountdown.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyCountdown.bas)
- **Verified Demo Source**: B4XPageCountdown.bas
- **Web DaisyUI Mapping**: `.countdown` → `B4XDaisyCountdown`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``countdown`` | Member | `.SetComponent(...)` | Native configuration |

### Web DaisyUI HTML Syntax
```html
<span class="countdown">
  <span style="--value:{number};">number</span>
</span>
```

## 2. Verified B4X Syntax & Recipe

```b4x
' Animated flip/counter countdown timer:
Dim cnt As B4XDaisyCountdown
cnt.Initialize(Me, "cnt")
cnt.CountDownType = "auto"
cnt.Format = "dhms"
cnt.Variant = "primary"
cnt.setTargetDate("2026-12-31")
cnt.AutoStart = True
cnt.AddToParent(pnlHost, 16dip, y, maxW, 80dip)

y = y + 80dip + 16dip
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyCountdown` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `UpdateTheme, RemoveItem, getItem` (+ 33 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Orientation` | Orientation | `String` | horizontal | horizontal|vertical |
| `Gap` | Gap | `String` | gap-2 | gap-0|gap-1|gap-2|gap-3|gap-4|gap-5|gap-6|gap-8 |
| `AutoWidth` | Auto Width | `Boolean` | True |  |
| `BackgroundColor` | Background Color | `String` | transparent | transparent|base-100|base-200|base-300|neutral|primary|secondary|accent |
| `Border` | Border | `Boolean` | False |  |
| `Rounded` | Rounded | `String` | rounded-md | none|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Shadow` | Shadow | `String` | shadow-md | none|shadow|shadow-sm|shadow-md|shadow-lg|shadow-xl|shadow-2xl|shadow-inner |
| `Padding` | Padding | `String` | p-0 | p-0|p-1|p-2|p-3|p-4|p-5|p-6|p-8 |
| `CountDownType` | Count Down Type | `String` | default | default|auto |
| `Format` | Display Format | `String` |  |  |
| `TargetDate` | Target Date | `String` | 2026-12-31 |  |
| `AutoStart` | Auto Start | `Boolean` | True |  |
| `Labels` | Labels | `String` |  |  |
| `LabelPosition` | Label Position | `String` | none | none|bottom|right |
| `TextSize` | Font Size | `String` | md | text-xs|text-sm|md|text-base|text-lg|text-xl|text-2xl|text-3xl|text-4xl|text-5xl|text-6xl|text-7xl|text-8xl|text-9xl |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Outline` | Outline | `Boolean` | False |  |
| `Visible` | Visible | `Boolean` | True |  |

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `UpdateTheme`
- `Refresh`
- `AddItem(Item As B4XDaisyCountdownItem)`
- `View As B4XView`
- `getIsInitialized As Boolean`
- `RemoveItem(Item As B4XDaisyCountdownItem)`
- `Clear`
- `getItem(Index As Int) As B4XDaisyCountdownItem`
- `getItemsCount As Int`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `getOrientation As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setOrientation(Value As String)`
- `getGap As String`
- `setGap(Value As String)`
- `getAutoWidth As Boolean`
- `setAutoWidth(Value As Boolean)`
- `getBackgroundColor As String`
- `setBackgroundColor(Value As String)`
- `getBorder As Boolean`
- `setBorder(Value As Boolean)`
- `getCountDownType As String`
- `setCountDownType(T As String)`
- `getFormat As String`
- `setFormat(F As String)`
- `getPadding As String`
- `setPadding(Value As String)`
- `setTag(Value As Object)`
- `getTag As Object`
- `setTargetDate(Value As String)`
- `getTargetDate As String`
- `setAutoStart(Value As Boolean)`
- `getAutoStart As Boolean`
- `setLabels(Value As String)`
- `getLabels As String`
- `setLabelPosition(Value As String)`
- `getLabelPosition As String`
- `setTextSize(Value As String)`
- `getTextSize As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `getOutline As Boolean`
- `setOutline(Value As Boolean)`
- `Base_Resize(Width As Double, Height As Double)`
- `Start`
- `Stop`
- `IsRunning As Boolean`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
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
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

## 7. Public Fields
- `mBase As B4XView`

