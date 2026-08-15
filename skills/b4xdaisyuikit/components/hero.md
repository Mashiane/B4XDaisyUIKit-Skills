# hero (`B4XDaisyHero`)

Full-width banner section with optional image background, overlay, content, and directional layout for landing-style pages.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyHero`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyHero.bas`
- **Verified Demos**: `B4XPageHero.bas`
- **Web DaisyUI Mapping**: `.hero` → `B4XDaisyHero`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim hr As B4XDaisyHero
hr.Initialize(Me, "hr")
hr.AddToParent(pnlHost, pad, y, maxW, 320dip)
hr.BackgroundImage = "hero-bg.jpg"
hr.OverlayVisible = True
hr.OverlayColor = 0x99000000
hr.ContentAlignment = "center"
hr.Direction = "vertical"

' Add content inside the hero
Dim title As B4XDaisyText
title.Initialize(Me, "title")
title.Text = "Welcome to the App"
title.Heading = "h1"
hr.GetContentPanel.AddView(title.getView, 0, 0, maxW, 60dip)
y = y + hr.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Full-width promotional hero banner for landing screens and headers.
- Configure `BackgroundImage` and set `OverlayVisible = True` with `OverlayColor` for readability.
- Mount hero titles, subtitles, and CTA buttons into `GetContentPanel`.
- Set `ContentAlignment` (`"center"`, `"left"`, `"right"`) to align promotional text.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| BackgroundImage | Background Image | String |  |  |
| Variant | Variant | String | none | none|primary|secondary|accent|neutral|info|success|warning|error |
| BackgroundColor | Background Color | Color | 0xFFF3F4F6 |  |
| TextColor | Text Color | Color | 0xFF000000 |  |
| Rounded | Rounded | String | rounded-none | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| RoundedBox | Rounded Box | Boolean | False |  |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl |
| OverlayVisible | Overlay Visible | Boolean | False |  |
| OverlayColor | Overlay Color | Color | 0x80000000 |  |
| Width | Width | String | w-full |  |
| Height | Height | String | h-[320px] |  |
| Direction | Direction | String | vertical | vertical|horizontal|reverse |
| ContentAlignment | Content Alignment | String | center | center|left|right |
| Gap | Gap | String | 4 |  |
| Padding | Padding | String | 4 |  |
| Visible | Visible | Boolean | True |  |
| AutoResize | Auto Resize | Boolean | False |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `GetContentPanel As B4XView`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
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
- `setAutoResize(Value As Boolean)`
- `setBackgroundColor(Value As Int)`
- `setBackgroundColorVariant(Value As String)`
- `setBackgroundImage(Value As String)`
- `setContentAlignment(Value As String)`
- `setDirection(Value As String)`
- `setGap(Value As String)`
- `setHeight(Value As String)`
- `setLeft(Value As Int)`
- `setOverlayColor(Value As Int)`
- `setOverlayVisible(Value As Boolean)`
- `setPadding(Value As String)`
- `setRounded(Value As String)`
- `setRoundedBox(Value As Boolean)`
- `setShadow(Value As String)`
- `setTag(Value As Object)`
- `setTextColor(Value As Int)`
- `setTextColorVariant(Value As String)`
- `setTop(Value As Int)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As String)`

## 7. Public Fields
- `mBase As B4XView`
