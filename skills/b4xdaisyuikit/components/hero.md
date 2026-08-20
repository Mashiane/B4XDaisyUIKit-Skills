# hero (`B4XDaisyHero`)

Full-width banner section with optional image background, overlay, content, and directional layout for landing-style pages.

## 1. Overview
- **Class**: `B4XDaisyHero`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyHero.bas`
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
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getAutoResize As Boolean`
- `getBackgroundColor As Int`
- `getBackgroundColorVariant As String`
- `getBackgroundImage As String`
- `GetComputedHeight As Int`
- `getContentAlignment As String`
- `GetContentPanel As B4XView`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `setAutoResize(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sValue As String)`
- `setBackgroundImage(sValue As String)`
- `setContentAlignment(sValue As String)`
- `setDirection(sValue As String)`
- `setGap(sValue As String)`
- `setHeight(sValue As String)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
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
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
