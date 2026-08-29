# aura (`B4XDaisyAura`)

DaisyUI `Aura` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyAura`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyAura.bas`
- **Verified Demo Source**: B4XPageAura.bas (lines 8–239)
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
Private Sub AddButtonAura(CenterX As Int, CenterY As Int, W As Int, H As Int, Style As String, Size As String, Color As Int, Duration As Int, Label As String)
    Dim btn As B4XDaisyButton
    btn.Initialize(Me, "")
    btn.AddToParent(pnlHost, -10000, -10000, W, H)
    btn.Text = Label
    btn.Variant = "primary"
    btn.Size = "md"
    Dim bw As Int = btn.View.Width
    Dim bh As Int = btn.View.Height

    Dim a As B4XDaisyAura
    a.Initialize(Me, "")
    a.setStyle(Style)
    a.setSize(Size)
    If Color <> 0 Then a.setColor(Color)
    a.setDuration(Duration)
    Dim thick As Int = AuraThicknessDip(Size)
    Dim wrapperW As Int = bw + 2 * thick
    Dim wrapperH As Int = bh + 2 * thick
    a.AddToParent(pnlHost, CenterX - wrapperW / 2, CenterY - wrapperH / 2, bw, bh)
    a.Wrap(btn.View)
    a.StartRotation
    auras.Add(a)
End Sub
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
| `Style` | Style | `String` | `default` | default|glow|dual|rainbow|holo|gold|silver |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `Color` | Color | `Color` | `0x00FFFFFF` |  |
| `TextColor` | Text Color (Light Beam) | `Color` | `0x00FFFFFF` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00FFFFFF` |  |
| `Rounded` | Rounded | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Duration` | Duration (ms) | `Int` | `3000` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `AutoStart` | AutoStart | `Boolean` | `True` |  |

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `StartRotation`
- `StopRotation`
- `SyncRotation`
- `View As B4XView`
- `Wrap(vChild As B4XView) As B4XView`
- `getAutoStart As Boolean`
- `getBackgroundColor As Int`
- `getColor As Int`
- `getContainer As B4XView`
- `getContentContainer As B4XView`
- `getDuration As Int`
- `getLeft As Int`
- `getRounded As String`
- `getRoundedBox As Boolean`
- `getSize As String`
- `getStyle As String`
- `getTag As Object`
- `getTextColor As Int`
- `getTop As Int`
- `getVisible As Boolean`
- `setAutoStart(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setColor(iValue As Int)`
- `setDuration(iValue As Int)`
- `setLeft(iValue As Int)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setSize(sValue As String)`
- `setStyle(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

## Canonical Creation Pattern & Recipe

`B4XDaisyAura` provides ambient glow highlight effects.

```vb
Dim aura As B4XDaisyAura
aura.Initialize(Me, "aura")
aura.AddToParent(pnlHost, x, y, maxW, 100dip)
aura.Blur = "md"                               ' "sm" | "md" | "lg"
aura.Variant = "primary"
aura.StartRotation                             ' Start rotation in B4XPage_Appear

y = y + 100dip + gap
```
