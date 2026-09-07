# hover3d (`B4XDaisyHover3d`)

DaisyUI `Hover3d` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyHover3d`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyHover3d.bas`
- **Verified Demo Source**: B4XPageHover3d.bas
- **Web DaisyUI Mapping**: `.hover3d` → `B4XDaisyHover3d`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``hover-3d`` | Member | `.SetComponent(...)` | Native configuration |

### Web DaisyUI HTML Syntax
```html
<div class="hover-3d my-12 mx-2">
  <figure class="max-w-100 rounded-2xl">
    <img src="https://img.daisyui.com/images/stock/creditcard.webp" alt="Tailwind CSS 3D card" />
  </figure>
  <div></div>
  <div></div>
  <div></div>
  <div></div>
  <div></div>
  <div></div>
  <div></div>
  <div></div>
</div>
```

## 2. Verified B4X Syntax & Recipe
```b4x
Dim heroW As Int = maxW
    Dim hoverImage As B4XDaisyHover3d
    hoverImage.Initialize(Me, "hoverImage")
    hoverImage.AddToParent(pnlHost, PAGE_PAD, y, heroW, 214dip)
    hoverImage.setWidth("w-full")
    hoverImage.setHeight("h-auto")
    hoverImage.Rounded = "rounded-2xl"
    hoverImage.Padding = "p-[15px]"
    hoverImage.setContentType("image")
    hoverImage.setImage("creditcard.webp")
    hoverImage.ScaleOnHover = 1.05
    hoverImage.MaxTilt = 10
    hoverImage.Refresh
    y = y + hoverImage.GetComputedHeight + 24dip

    ''' <summary>
    ''' Example 2: 3D card hover effect.
    ''' </summary>
    y = AddSectionTitle("3D card hover effect", y, maxW)
    y = AddSectionNote("The wrapper stays general-purpose while the hosted content recreates the dark credit-card example from DaisyUI.", y, maxW)

    Dim cardW As Int = maxW
    Dim hoverCard As B4XDaisyHover3d
    hoverCard.Initialize(Me, "hoverCard")
    hoverCard.setWidth("w-full")
    hoverCard.setHeight("h-auto")
    hoverCard.AddToParent(pnlHost, PAGE_PAD, y, cardW, 236dip)
    hoverCard.setContentType("custom")
    hoverCard.setPadding("p-[15px]")
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyHover3d` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `setEnabled, getEnabled, getVisible` (+ 29 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |
| `MaxTilt` | Max Tilt | `Float` | 10 |  |
| `ScaleOnHover` | Scale On Hover | `Float` | 1.05 |  |
| `ShineEffect` | Shine Effect | `Boolean` | True |  |
| `Perspective` | Perspective | `Float` | 1200 |  |
| `ResetDuration` | Reset Duration | `Int` | 500 |  |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Rounded` | Rounded | `String` | rounded-2xl | none|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |
| `Padding` | Padding | `String` | p-0 |  |
| `Margin` | Margin | `String` |  |  |
| `Width` | Width | `String` | w-full |  |
| `Height` | Height | `String` | h-content |  |
| `ContentType` | Content Type | `String` | custom | custom|image |
| `Image` | Image | `String` |  |  |
| `ContentBackgroundColor` | Content Background Color | `Color` | 0x00000000 |  |
| `ContentRounded` | Content Rounded | `String` | none | none|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `ContentPadding` | Content Padding | `String` |  |  |
| `ContentShadow` | Content Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTag(Value As Object)`
- `getTag As Object`
- `setMaxTilt(Value As Float)`
- `getMaxTilt As Float`
- `setScaleOnHover(Value As Float)`
- `getScaleOnHover As Float`
- `setShineEffect(Value As Boolean)`
- `getShineEffect As Boolean`
- `setPerspective(Value As Float)`
- `getPerspective As Float`
- `setResetDuration(Value As Int)`
- `getResetDuration As Int`
- `setVariant(Value As String)`
- `getVariant As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setContentType(Value As String)`
- `getContentType As String`
- `setImage(Value As String)`
- `getImage As String`
- `setContentBackgroundColor(Value As Int)`
- `getContentBackgroundColor As Int`
- `setContentRounded(Value As String)`
- `getContentRounded As String`
- `setContentPadding(Value As String)`
- `getContentPadding As String`
- `setContentShadow(Value As String)`
- `getContentShadow As String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddView(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `RemoveAllViews`
- `getContentPanel As B4XView`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `BringToFront`
- `SendToBack`
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

## Canonical Creation Pattern & Recipe

`B4XDaisyHover3d` applies interactive 3D perspective tilt to inner card views.

```vb
Dim hover As B4XDaisyHover3d
hover.Initialize(Me, "hover")
hover.AddToParent(pnlHost, pad, y, maxW, 160dip)
hover.Rounded = "rounded-box"
hover.Depth = 15

' Mount inner content onto GetContentPanel:
Dim pnlInner As B4XView = hover.GetContentPanel
Dim txtH As B4XDaisyText
txtH.Initialize(Me, "")
txtH.AddToParent(pnlInner, 16dip, 16dip, pnlInner.Width - 32dip, 40dip)
txtH.Text = "Interactive 3D Perspective Card"
txtH.FontBold = True

y = y + 160dip + gap
```
