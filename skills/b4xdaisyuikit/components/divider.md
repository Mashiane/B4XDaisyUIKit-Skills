# divider (`B4XDaisyDivider`)

Visual separator line with optional text label, horizontal or vertical orientation, and theme color variants.

## 1. Overview
- **Class**: `B4XDaisyDivider`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyDivider.bas`
- **Web DaisyUI Mapping**: `.divider` → `B4XDaisyDivider`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim dv As B4XDaisyDivider
dv.Initialize(Me, "dv")
dv.AddToParent(pnlHost, pad, y, maxW, 20dip)
dv.Text = "OR"
dv.Variant = "neutral"
y = y + 20dip + gap
```

## 3. Native Composition Rules & Gotchas
- Set `Vertical = False` for standard horizontal section divider lines.
- Set `Vertical = True` for vertical divider bars between buttons in horizontal rows.
- Assign `Text` to render a centered separator badge (e.g. "OR").
- Set `StartAlign = True` or `EndAlign = True` for offset text badges.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Width | Width | String |  |  |
| Height | Height | String |  |  |
| Direction | Direction | String | vertical | vertical|horizontal |
| Placement | Placement | String | default | default|start|end |
| Text | Text | String |  |  |
| TextSize | Text Size | String | text-sm | text-xs|text-sm|text-base|text-lg|text-xl|text-2xl|text-3xl|text-4xl|text-5xl|text-6xl|text-7xl|text-8xl|text-9xl |
| Gap | Gap | String | 4 |  |
| LineThickness | Line Thickness | String | 0.5 |  |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| BackgroundColor | Background Color | Color | 0x00FFFFFF |  |
| TextColor | Text Color | Color | 0x00FFFFFF |  |
| Padding | Padding | String |  |  |
| Margin | Margin | String |  |  |
| DebugBorders | Debug Borders | Boolean | False |  |
| Visible | Visible | Boolean | True |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetActualHeight As Int`
- `getBackgroundColor As Int`
- `GetComputedHeight As Int`
- `getDebugBorders As Boolean`
- `getDirection As String`
- `getGap As Float`
- `getHeight As Float`
- `getLeft As Int`
- `getLineThickness As Float`
- `getMargin As String`
- `getPadding As String`
- `getPlacement As String`
- `getTag As Object`
- `getText As String`
- `getTextColor As Int`
- `getTextSize As String`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Float`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `RemoveViewFromParent`
- `SendToBack`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setDebugBorders(bValue As Boolean)`
- `setDirection(sValue As String)`
- `setGap(oValue As Object)`
- `setHeight(oValue As Object)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setLineThickness(oValue As Object)`
- `setMargin(sValue As String)`
- `setPadding(sValue As String)`
- `setPlacement(sValue As String)`
- `setTag(oValue As Object)`
- `setText(sValue As String)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTextSize(sValue As String)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
