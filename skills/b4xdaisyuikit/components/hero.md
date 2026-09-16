# hero (`B4XDaisyHero`)

DaisyUI `Hero` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyHero`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyHero.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyHero.bas)
- **Verified Demo Source**: B4XPageHero.bas
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
' Full-width hero banner container:
Dim hero As B4XDaisyHero
hero.Initialize(Me, "hero")
hero.AddToParent(pnlHost, 16dip, y, maxW, 220dip)
hero.Direction = "vertical"
hero.ContentAlignment = "center"
hero.BackgroundColorVariant = "bg-neutral"
hero.Rounded = "rounded-box"

' Add hero headline and actions into hero content:
Dim txtHero As B4XDaisyText
txtHero.Initialize(Me, "")
txtHero.Text = "Welcome to DaisyUI"
txtHero.TextSize = 24
txtHero.HAlign = "CENTER"
txtHero.AddToParent(hero.getContainer, 0, 20dip, maxW, 40dip)

y = y + 220dip + 16dip
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
| `BackgroundImage` | Background Image | `String` |  |  |
| `Variant` | Variant | `String` | none | none|primary|secondary|accent|neutral|info|success|warning|error |
| `BackgroundColor` | Background Color | `Color` | 0xFFF3F4F6 |  |
| `TextColor` | Text Color | `Color` | 0xFF000000 |  |
| `Rounded` | Rounded | `String` | rounded-none | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl |
| `OverlayVisible` | Overlay Visible | `Boolean` | False |  |
| `OverlayColor` | Overlay Color | `Color` | 0x80000000 |  |
| `Width` | Width | `String` | w-full |  |
| `Height` | Height | `String` | h-[320px] |  |
| `Direction` | Direction | `String` | vertical | vertical|horizontal|reverse |
| `ContentAlignment` | Content Alignment | `String` | center | center|left|right |
| `Gap` | Gap | `String` | 4 |  |
| `Padding` | Padding | `String` | 4 |  |
| `Visible` | Visible | `Boolean` | True |  |
| `AutoResize` | Auto Resize | `Boolean` | False |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setBackgroundImage(Value As String)`
- `getBackgroundImage As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBackgroundColorVariant(Value As String)`
- `getBackgroundColorVariant As String`
- `setTextColorVariant(Value As String)`
- `getTextColorVariant As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setOverlayVisible(Value As Boolean)`
- `getOverlayVisible As Boolean`
- `setOverlayColor(Value As Int)`
- `getOverlayColor As Int`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setDirection(Value As String)`
- `getDirection As String`
- `setContentAlignment(Value As String)`
- `getContentAlignment As String`
- `setGap(Value As String)`
- `getGap As String`
- `setPadding(Value As String)`
- `getPadding As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `setAutoResize(Value As Boolean)`
- `getAutoResize As Boolean`
- `GetContentPanel As B4XView`
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
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

