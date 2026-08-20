# division (`B4XDaisyDivision`)

Generic styled container (div equivalent) supporting box-model styling, background colors, borders, shadows, and click handling.

## 1. Overview
- **Class**: `B4XDaisyDivision`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyDivision.bas`
- **Web DaisyUI Mapping**: `.division` → `B4XDaisyDivision`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim div As B4XDaisyDivision
div.Initialize(Me, "div")
div.AddToParent(pnlHost, pad, y, maxW, 100dip)
div.BackgroundColor = 0xFFF3F4F6
div.Rounded = "rounded-xl"
div.Shadow = "sm"

' Add inner views to division container
Dim innerTxt As B4XDaisyText
innerTxt.Initialize(Me, "innerTxt")
innerTxt.AddToParent(div.View, 16dip, 16dip, maxW - 32dip, 40dip)
innerTxt.Text = "Content wrapped in a styled division container"
y = y + div.GetComputedHeight + gap
```

## 3. Native Composition Rules & Gotchas
- Generic styled container (`<div>` equivalent) for backgrounds, borders, padding, and shadows.
- Mount child views directly into `div.View` using `child.AddToParent(div.View, ...)` or `div.AddViewToContent(child.View, ...)`.
- Set `IsSkeleton = True` to switch the container into an animated shimmer loading placeholder.
- Use `Variant` (`"primary"`, `"neutral"`, `"accent"`, etc.) to adhere to semantic theme tokens.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Width | Width | String | w-10 |  |
| Height | Height | String | h-10 |  |
| Padding | Padding | String |  |  |
| Margin | Margin | String |  |  |
| BackgroundColor | Background Color | Color | 0x00FFFFFF |  |
| TextColor | Text Color | Color | 0xFF000000 |  |
| TextSize | Text Size | String | text-sm |  |
| Text | Text | String |  |  |
| RoundedBox | Rounded Box | Boolean | False |  |
| Rounded | Rounded | String | none | none|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| PlaceContentCenter | Place Content Center | Boolean | False |  |
| BorderWidth | Border Width | Int | 0 |  |
| BorderColor | Border Color | Color | 0xFF000000 |  |
| BorderStyle | Border Style | String | solid | none|hidden|solid|double|dashed|dotted|groove|ridge|inset|outset |
| BorderReliefStrength | Relief Strength | Int | 55 |  |
| AutoReliefByStyle | Auto Relief By Style | Boolean | True |  |
| IsSkeleton | Is Skeleton | Boolean | False |  |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| AutoResize | Auto Resize | Boolean | False |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddViewToContent(vChildView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getAutoReliefByStyle As Boolean`
- `getAutoResize As Boolean`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getBorderReliefStrength As Int`
- `getBorderStyle As String`
- `getBorderWidth As Int`
- `GetComputedHeight As Int`
- `getHeight As Object`
- `getIsSkeleton As Boolean`
- `getLeft As Int`
- `getMargin As String`
- `getPadding As String`
- `getPlaceContentCenter As Boolean`
- `getRounded As String`
- `getRoundedBox As Boolean`
- `getShadow As String`
- `getTag As Object`
- `getText As String`
- `getTextColor As Int`
- `getTextSize As Float`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Object`
- `Initialize(oCallback As Object, sEventName As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `setAutoReliefByStyle(bValue As Boolean)`
- `setAutoResize(bValue As Boolean)`
- `setBackgroundColor(iColor As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setBorderColor(iValue As Int)`
- `setBorderColorVariant(sVariantName As String)`
- `setBorderReliefStrength(iValue As Int)`
- `setBorderStyle(sValue As String)`
- `setBorderWidth(iValue As Int)`
- `setHeight(oValue As Object)`
- `setIsSkeleton(bValue As Boolean)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setMargin(sValue As String)`
- `setPadding(sValue As String)`
- `setPlaceContentCenter(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setTag(oValue As Object)`
- `setText(sText As String)`
- `setTextColor(iColor As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTextSize(oValue As Object)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`
- `StartAnimation`
- `StopAnimation`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
