# division (`B4XDaisyDivision`)

Generic styled container (div equivalent) supporting box-model styling, background colors, borders, shadows, and click handling.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyDivision`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyDivision.bas`
- **Verified Demos**: `B4XPageDivider.bas, B4XPageIndicator.bas, B4XPageSkeleton.bas, B4XPageStack.bas`
- **Web DaisyUI Mapping**: `.division` → `B4XDaisyDivision`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim div As B4XDaisyDivision
div.Initialize(Me, "div")
div.AddToParent(pnlHost, pad, y, maxW, 100dip)
div.BackgroundColor = 0xFFF3F4F6
div.Rounded = "rounded-xl"
div.Shadow = "sm"

' Add inner views to division content
Dim innerTxt As B4XDaisyText
innerTxt.Initialize(Me, "innerTxt")
innerTxt.Text = "Content wrapped in a styled division container"
div.GetContentPanel.AddView(innerTxt.getView, 16dip, 16dip, maxW - 32dip, 40dip)
y = y + div.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Generic styled container (`<div>` equivalent) for backgrounds, borders, padding, and shadows.
- Mount child views into `div.GetContentPanel`.
- Set `IsSkeleton = True` to switch the container into an animated shimmer loading placeholder.
- Use `BackgroundColorVariant` and `BorderColorVariant` to adhere to semantic theme tokens.

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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddViewToContent(ChildView As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Base_Resize (Width As Double, Height As Double)`
- `BringToFront`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView (Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize (Callback As Object, EventName As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `StartAnimation`
- `StopAnimation`
- `View As B4XView`
- `getAutoReliefByStyle As Boolean`
- `getAutoResize As Boolean`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getBorderReliefStrength As Int`
- `getBorderStyle As String`
- `getBorderWidth As Int`
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
- `setAutoReliefByStyle(Value As Boolean)`
- `setAutoResize(Value As Boolean)`
- `setBackgroundColor(Color As Int)`
- `setBackgroundColorVariant(VariantName As String)`
- `setBorderColor(Value As Int)`
- `setBorderColorVariant(VariantName As String)`
- `setBorderReliefStrength(Value As Int)`
- `setBorderStyle(Value As String)`
- `setBorderWidth(Value As Int)`
- `setHeight(Value As Object)`
- `setIsSkeleton(Value As Boolean)`
- `setLeft(Value As Int)`
- `setMargin(Value As String)`
- `setPadding(Value As String)`
- `setPlaceContentCenter(Value As Boolean)`
- `setRounded(Value As String)`
- `setRoundedBox(Value As Boolean)`
- `setShadow(Value As String)`
- `setTag(Value As Object)`
- `setText(Text As String)`
- `setTextColor(Color As Int)`
- `setTextColorVariant(VariantName As String)`
- `setTextSize(Value As Object)`
- `setTop(Value As Int)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Object)`

## 7. Public Fields
- `mBase As B4XView`
