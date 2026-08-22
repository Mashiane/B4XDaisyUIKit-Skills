# countdown (`B4XDaisyCountdown`)

DaisyUI `Countdown` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyCountdown`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyCountdown.bas`
- **Verified Demo Source**: B4XPageCountdown.bas (lines 45–90)
- **Web DaisyUI Mapping**: `.countdown` → `B4XDaisyCountdown`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub AddAutoCountdown(Title As String, Y As Int, Width As Int, Height As Int, Format As String, Labels As String, Gap As String, Padding As String, TextSize As String, LabelPos As String, Variant As String, Outline As Boolean) As Int
    Y = AddSectionTitle(Title, Y, Width)
    Dim cnt As B4XDaisyCountdown
    cnt.Initialize(Me, "")
    cnt.CountDownType = "auto"
    cnt.Format = Format
    cnt.Gap = Gap
    cnt.AutoWidth = True
    cnt.Padding = Padding
    cnt.TextSize = TextSize
    cnt.Variant = Variant
    cnt.Outline = Outline
    cnt.setTargetDate("2026-12-31")
    cnt.AutoStart = True
    If Labels <> "" Then cnt.Labels = Labels
    If LabelPos = "right" Or LabelPos = "bottom" Or LabelPos = "none" Then cnt.LabelPosition = LabelPos
    cnt.AddToParent(pnlHost, PAGE_PAD, Y, Width, Height)
    mCountdowns.Add(cnt)
    mCountdownTitles.Add(Title)
    Return Y + Height + 25dip
End Sub
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
| `Orientation` | Orientation | `String` | `horizontal` | horizontal|vertical |
| `Gap` | Gap | `String` | `gap-2` | gap-0|gap-1|gap-2|gap-3|gap-4|gap-5|gap-6|gap-8 |
| `AutoWidth` | Auto Width | `Boolean` | `True` |  |
| `BackgroundColor` | Background Color | `String` | `transparent` | transparent|base-100|base-200|base-300|neutral|primary|secondary|accent |
| `Border` | Border | `Boolean` | `False` |  |
| `Rounded` | Rounded | `String` | `rounded-md` | none|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Shadow` | Shadow | `String` | `shadow-md` | none|shadow|shadow-sm|shadow-md|shadow-lg|shadow-xl|shadow-2xl|shadow-inner |
| `Padding` | Padding | `String` | `p-0` | p-0|p-1|p-2|p-3|p-4|p-5|p-6|p-8 |
| `CountDownType` | Count Down Type | `String` | `default` | default|auto |
| `Format` | Display Format | `String` | `` |  |
| `TargetDate` | Target Date | `String` | `2026-12-31` |  |
| `AutoStart` | Auto Start | `Boolean` | `True` |  |
| `Labels` | Labels | `String` | `` |  |
| `LabelPosition` | Label Position | `String` | `none` | none|bottom|right |
| `TextSize` | Font Size | `String` | `md` | text-xs|text-sm|md|text-base|text-lg|text-xl|text-2xl|text-3xl|text-4xl|text-5xl|text-6xl|text-7xl|text-8xl|text-9xl |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Outline` | Outline | `Boolean` | `False` |  |
| `Visible` | Visible | `Boolean` | `True` |  |

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `AddItem(Item As B4XDaisyCountdownItem)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `Clear`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsRunning As Boolean`
- `Refresh`
- `RemoveItem(Item As B4XDaisyCountdownItem)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `Start`
- `Stop`
- `UpdateTheme`
- `View As B4XView`
- `getAutoStart As Boolean`
- `getAutoWidth As Boolean`
- `getBackgroundColor As String`
- `getBorder As Boolean`
- `getCountDownType As String`
- `getFormat As String`
- `getGap As String`
- `getHeight As Int`
- `getIsInitialized As Boolean`
- `getItem(iIndex As Int) As B4XDaisyCountdownItem`
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
- `getVisible As Boolean`
- `getWidth As Int`
- `setAutoStart(bValue As Boolean)`
- `setAutoWidth(bValue As Boolean)`
- `setBackgroundColor(sValue As String)`
- `setBorder(bValue As Boolean)`
- `setCountDownType(sT As String)`
- `setFormat(sF As String)`
- `setGap(sValue As String)`
- `setHeight(iValue As Int)`
- `setLabelPosition(sValue As String)`
- `setLabels(sValue As String)`
- `setLeft(iValue As Int)`
- `setOrientation(sValue As String)`
- `setOutline(bValue As Boolean)`
- `setPadding(sValue As String)`
- `setRounded(sValue As String)`
- `setShadow(sValue As String)`
- `setTag(oValue As Object)`
- `setTargetDate(sValue As String)`
- `setTextSize(sValue As String)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

