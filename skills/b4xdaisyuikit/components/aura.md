# aura (`B4XDaisyAura`)

DaisyUI `Aura` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyAura`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyAura.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyAura.bas)
- **Verified Demo Source**: B4XPageAura.bas
- **Web DaisyUI Mapping**: `.aura` → `B4XDaisyAura`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``aura`` | Member | `.SetComponent(...)` | Native configuration |
| `style` | ``aura-dual`, `aura-rainbow`, `aura-holo`, `aura-gold`, `aura-silver`, `aura-glow`` | Property | `.Style = "outline"` (or soft, dash, ghost, etc.) | Visual fill and border style |
| `size` | ``aura-xs`, `aura-sm`, `aura-md`, `aura-lg`, `aura-xl`` | Property | `.Size = "sm"` (or xs, md, lg, xl) | Preset dimension scaling |

### Web DaisyUI HTML Syntax
```html
<div class="aura {MODIFIER}">{CONTENT}</div>
```

## 2. Verified B4X Syntax & Recipe

```b4x
' 1. Create the host card / view to wrap:
Dim card As B4XDaisyCard
card.Initialize(Me, "card")
card.AddToParent(pnlHost, 16dip, y, maxW, 120dip)
card.Title = "Pro Subscription"
card.Size = "md"

' 2. Wrap the view with an animated rotating glow aura:
Dim aura As B4XDaisyAura
aura.Initialize(Me, "aura")
aura.setStyle("rainbow")                       ' "default" | "dual" | "rainbow" | "holo" | "glow" | "gold" | "silver"
aura.setSize("md")                             ' "xs" | "sm" | "md" | "lg" | "xl"
aura.setDuration(3000)                         ' Rotation cycle duration in ms
aura.AddToParent(pnlHost, 16dip, y, card.GetActualWidth, card.GetActualHeight)
aura.Wrap(card.getContainer)
aura.StartRotation

y = y + card.GetActualHeight + 24dip
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyAura` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getContentContainer, SyncRotation, getStyle` (+ 15 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Style` | Style | `String` | default | default|glow|dual|rainbow|holo|gold|silver |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `Color` | Color | `Color` | 0x00FFFFFF |  |
| `TextColor` | Text Color (Light Beam) | `Color` | 0x00FFFFFF |  |
| `BackgroundColor` | Background Color | `Color` | 0x00FFFFFF |  |
| `Rounded` | Rounded | `String` | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Duration` | Duration (ms) | `Int` | 3000, MinRange: 100 |  |
| `Visible` | Visible | `Boolean` | True |  |
| `AutoStart` | AutoStart | `Boolean` | True |  |

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Wrap(Child As B4XView) As B4XView`
- `getContentContainer As B4XView`
- `getContainer As B4XView`
- `View As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `SyncRotation`
- `StartRotation`
- `StopRotation`
- `setStyle(Value As String)`
- `getStyle As String`
- `setSize(Value As String)`
- `getSize As String`
- `setColor(Value As Int)`
- `getColor As Int`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setAutoStart(Value As Boolean)`
- `getAutoStart As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `RemoveViewFromParent`
- `GetComputedHeight As Int`
- `Release`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`

## 7. Public Fields
- `mBase As B4XView`

