# swap (`B4XDaisySwap`)

DaisyUI `Swap` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisySwap`
- **Lifecycle Type**: `Non-standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisySwap.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisySwap.bas)
- **Verified Demo Source**: B4XPageSwap.bas
- **Web DaisyUI Mapping**: `.swap` → `B4XDaisySwap`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |

### Web DaisyUI HTML Syntax
Using checkbox
```html
<label class="swap {MODIFIER}">
  <input type="checkbox" />
  <div class="swap-on">{content when active}</div>
  <div class="swap-off">{content when inactive}</div>
</label>
```

Using class name
```html
<div class="swap {MODIFIER}">
  <div class="swap-on">{content when active}</div>
  <div class="swap-off">{content when inactive}</div>
</div>
```

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
| `SwapType` | Swap Type | `String` | text | text|svg|avatar |
| `SwapStyle` | Swap Style | `String` | none | none|rotate|flip |
| `State` | State | `String` | off | off|on|indeterminate |
| `OnText` | On Text | `String` | ON |  |
| `OffText` | Off Text | `String` | OFF |  |
| `IndeterminateText` | Indeterminate Text | `String` |  |  |
| `OnColor` | On Color | `Color` | 0x00000000 |  |
| `OffColor` | Off Color | `Color` | 0x00000000 |  |
| `IndeterminateColor` | Indeterminate Color | `Color` | 0x00000000 |  |
| `TextSize` | Text Size | `String` | text-sm |  |
| `Width` | Width | `String` | w-12 |  |
| `Height` | Height | `String` | h-12 |  |
| `Duration` | Duration | `Int` | 300 |  |

## 5. Declared Events
- `Click (State As String, Checked As Boolean)`
- `Changed (State As String, Checked As Boolean)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `Toggle`
- `SetOnView(View As B4XView)`
- `SetOffView(View As B4XView)`
- `SetIndeterminateView(View As B4XView)`
- `getOnPanel As B4XView`
- `getOffPanel As B4XView`
- `getIndeterminatePanel As B4XView`
- `setOnText(Value As String)`
- `getOnText As String`
- `setOffText(Value As String)`
- `getOffText As String`
- `setIndeterminateText(Value As String)`
- `getIndeterminateText As String`
- `setState(Value As String)`
- `getState As String`
- `setChecked(Value As Boolean)`
- `getChecked As Boolean`
- `setSwapStyle(Value As String)`
- `getSwapStyle As String`
- `setSwapType(Value As String)`
- `getSwapType As String`
- `setTextSize(Value As String)`
- `getTextSize As String`
- `getTextLineHeightDip As Float`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setOnColor(Value As Object)`
- `getOnColor As Int`
- `setOnColorVariant(VariantName As String)`
- `setOnTextColorVariant(VariantName As String)`
- `setOffColor(Value As Object)`
- `getOffColor As Int`
- `setOffColorVariant(VariantName As String)`
- `setOffTextColorVariant(VariantName As String)`
- `setIndeterminateColor(Value As Object)`
- `getIndeterminateColor As Int`
- `setIndeterminateColorVariant(VariantName As String)`
- `setIndeterminateTextColorVariant(VariantName As String)`
- `setTag(Value As Object)`
- `getTag As Object`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

## 7. Public Fields
- `mBase As B4XView`

