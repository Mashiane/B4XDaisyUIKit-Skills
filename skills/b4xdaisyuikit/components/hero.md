# hero (`B4XDaisyHero`)

DaisyUI `Hero` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyHero`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyHero.bas`
- **Verified Demo Source**: B4XPageHero.bas (lines 52–93)
- **Web DaisyUI Mapping**: `.hero` → `B4XDaisyHero`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``hero`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``hero-content`, `hero-overlay`` | Method / Part | `AddItem(...)` / `GetContentPanel` | Sub-element container |

### Web DaisyUI HTML Syntax
```html
<div class="hero {MODIFIER}">{CONTENT}</div>
```

## 2. Verified B4X Syntax & Recipe
```b4x
' 1. Centered hero (rounded-box, bg-neutral)
    y = AddSectionTitle("1. Centered Hero (DaisyUI)", y, maxW)
    Dim h1 As B4XDaisyHero
    h1.Initialize(Me, "hero")
    h1.AddToParent(pnlHost, targetX, y, useW, H_HEIGHT)
    h1.Direction = "vertical"
    h1.ContentAlignment = "center"
    h1.Gap = "4"
    h1.BackgroundColorVariant = "bg-neutral"
    h1.Rounded = "rounded-box"
    AddHeroContent(h1, useW, H_HEIGHT, "Hello there", "Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda excepturi exercitationem quasi.", "Get Started", xui.Color_White)
    y = y + H_HEIGHT + SECTION_GAP

    ' 2. Hero with overlay image
    y = AddSectionTitle("2. Hero with Overlay Image (DaisyUI)", y, maxW)
    Dim h2 As B4XDaisyHero
    h2.Initialize(Me, "hero")
    h2.AddToParent(pnlHost, targetX, y, useW, H_HEIGHT)
    h2.Direction = "vertical"
    h2.ContentAlignment = "center"
    h2.Rounded = "rounded"
    h2.Shadow = "lg"
    h2.OverlayVisible = True
    h2.BackgroundImage = "photo-1507358522600-9f71e620c44e.webp"
    AddHeroContent(h2, useW, H_HEIGHT, "Hello there", "Provident cupiditate voluptatem et in.", "Get Started", xui.Color_White)
    y = y + H_HEIGHT + SECTION_GAP

    pnlHost.Height = Max(Height, y + PAGE_PAD)
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyHero` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getBackgroundImage, getVariant, getBackgroundColor` (+ 22 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `BackgroundImage` | Background Image | `String` | `` |  |
| `Variant` | Variant | `String` | `none` | none|primary|secondary|accent|neutral|info|success|warning|error |
| `BackgroundColor` | Background Color | `Color` | `0xFFF3F4F6` |  |
| `TextColor` | Text Color | `Color` | `0xFF000000` |  |
| `Rounded` | Rounded | `String` | `rounded-none` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl |
| `OverlayVisible` | Overlay Visible | `Boolean` | `False` |  |
| `OverlayColor` | Overlay Color | `Color` | `0x80000000` |  |
| `Width` | Width | `String` | `w-full` |  |
| `Height` | Height | `String` | `h-[320px]` |  |
| `Direction` | Direction | `String` | `vertical` | vertical|horizontal|reverse |
| `ContentAlignment` | Content Alignment | `String` | `center` | center|left|right |
| `Gap` | Gap | `String` | `4` |  |
| `Padding` | Padding | `String` | `4` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `AutoResize` | Auto Resize | `Boolean` | `False` |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `GetContentPanel As B4XView`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `View As B4XView`
- `getAutoResize As Boolean`
- `getBackgroundColor As Int`
- `getBackgroundColorVariant As String`
- `getBackgroundImage As String`
- `getContentAlignment As String`
- `getDirection As String`
- `getGap As String`
- `getHeight As String`
- `getLeft As Int`
- `getOverlayColor As Int`
- `getOverlayVisible As Boolean`
- `getPadding As String`
- `getRounded As String`
- `getRoundedBox As Boolean`
- `getShadow As String`
- `getTag As Object`
- `getTextColor As Int`
- `getTextColorVariant As String`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As String`
- `setAutoResize(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sValue As String)`
- `setBackgroundImage(sValue As String)`
- `setContentAlignment(sValue As String)`
- `setDirection(sValue As String)`
- `setGap(sValue As String)`
- `setHeight(sValue As String)`
- `setLeft(iValue As Int)`
- `setOverlayColor(iValue As Int)`
- `setOverlayVisible(bValue As Boolean)`
- `setPadding(sValue As String)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sValue As String)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(sValue As String)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

## Canonical Creation Pattern & Recipe

`B4XDaisyHero` is a layout banner container with internal flex alignment.

```vb
Dim hero As B4XDaisyHero
hero.Initialize(Me, "hero")
hero.AddToParent(pnlHost, x, y, maxW, 300dip)
hero.Direction = "vertical"                    ' "vertical" | "horizontal"
hero.ContentAlignment = "center"               ' "center" | "start" | "end"
hero.Gap = "4"
hero.BackgroundColorVariant = "bg-neutral"     ' or hero.BackgroundImage = "cover.webp"
hero.Rounded = "rounded-box"

' Mount children onto hero content panel:
Dim pnlHero As B4XView = hero.GetContentPanel
Dim txtHero As B4XDaisyText
txtHero.Initialize(Me, "")
txtHero.AddToParent(pnlHero, 0, 0, pnlHero.Width, 40dip)
txtHero.Text = "Hero Headline"
txtHero.TextSize = 22
txtHero.FontBold = True
txtHero.HAlign = "CENTER"

' Reflow flex layout after child additions:
hero.Base_Resize(maxW, 300dip)
y = y + 300dip + gap
```
