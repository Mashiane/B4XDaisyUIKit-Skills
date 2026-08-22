# swap (`B4XDaisySwap`)

DaisyUI `Swap` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisySwap`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisySwap.bas`
- **Verified Demo Source**: B4XPageSwap.bas (lines 116–245)
- **Web DaisyUI Mapping**: `.swap` → `B4XDaisySwap`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub AddSwapSample(Def As Map)
	' Required identity and display text for one sample.
	' Read stable sample id.
	Dim id As String = Def.Get("id")
	' Read sample title for label text.
	Dim title As String = Def.Get("title")
	' Optional dimensions with safe defaults.
	' Read configured width or use fallback.
	Dim w As Int = Def.GetDefault("w", 72dip)
	' Read configured height or use fallback.
	Dim h As Int = Def.GetDefault("h", 40dip)

	' Create the title label and swap component, then register for layout.
	' Create visual title label.
	Dim lbl As B4XView = CreateDemoLabel(title)
	' Declare swap component instance.
	Dim swap As B4XDaisySwap
	' Subscribe to swap events with the "swap_" event prefix.
	swap.Initialize(Me, "swap")
	Dim swapView As B4XView = swap.AddToParent(pnlHost, 0, 0, w, h)
	' Store logical sample id in the component tag.
	swap.SetTag(id)
	' Apply only the properties declared in this map.
	ApplySwapDef(swap, Def)
	' Create and add the visual instance to the host panel.
'	Dim swapView As B4XView = swap.AddToParent(pnlHost, 0, 0, w, h)
	' Track metadata used by the layout engine.
	AddSampleItem(id, lbl, swap, swapView, w, h)
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisySwap` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
5. **Execution / Assembly:** Swap view requiring assignment of swap states / child target views.

### Deviation Mechanism
- Swap view requiring assignment of swap states / child target views.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `SetOnView, SetOffView, SetIndeterminateView` (+ 22 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `SwapType` | Swap Type | `String` | `text` | text|svg|avatar |
| `SwapStyle` | Swap Style | `String` | `none` | none|rotate|flip |
| `State` | State | `String` | `off` | off|on|indeterminate |
| `OnText` | On Text | `String` | `ON` |  |
| `OffText` | Off Text | `String` | `OFF` |  |
| `IndeterminateText` | Indeterminate Text | `String` | `` |  |
| `OnColor` | On Color | `Color` | `0x00000000` |  |
| `OffColor` | Off Color | `Color` | `0x00000000` |  |
| `IndeterminateColor` | Indeterminate Color | `Color` | `0x00000000` |  |
| `TextSize` | Text Size | `String` | `text-sm` |  |
| `Width` | Width | `String` | `w-12` |  |
| `Height` | Height | `String` | `h-12` |  |
| `Duration` | Duration | `Int` | `300` |  |

## 5. Declared Events
- `Click (State As String, Checked As Boolean)`
- `Changed (State As String, Checked As Boolean)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `RemoveViewFromParent`
- `SendToBack`
- `SetIndeterminateView(vView As B4XView)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `SetOffView(vView As B4XView)`
- `SetOnView(vView As B4XView)`
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
- `setChecked(bValue As Boolean)`
- `setDuration(iValue As Int)`
- `setHeight(oValue As Object)`
- `setIndeterminateColor(oValue As Object)`
- `setIndeterminateColorVariant(sVariantName As String)`
- `setIndeterminateText(sValue As String)`
- `setIndeterminateTextColorVariant(sVariantName As String)`
- `setLeft(iValue As Int)`
- `setOffColor(oValue As Object)`
- `setOffColorVariant(sVariantName As String)`
- `setOffText(sValue As String)`
- `setOffTextColorVariant(sVariantName As String)`
- `setOnColor(oValue As Object)`
- `setOnColorVariant(sVariantName As String)`
- `setOnText(sValue As String)`
- `setOnTextColorVariant(sVariantName As String)`
- `setState(sValue As String)`
- `setSwapStyle(sValue As String)`
- `setSwapType(sValue As String)`
- `setTag(oValue As Object)`
- `setTextSize(sValue As String)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

