# icon-button (`B4XDaisyIconButton`)

Icon-only button (square or circle) for toolbar actions, nav items, and inline controls.

## 1. Overview
- **Class**: `B4XDaisyIconButton`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyIconButton.bas`
- **Web DaisyUI Mapping**: `.icon-button` → `B4XDaisyIconButton`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim ib As B4XDaisyIconButton
ib.Initialize(Me, "ib")
ib.AddToParent(pnlHost, pad, y, 44dip, 44dip)
ib.Variant = "primary"
ib.Style = "ghost"
ib.Shape = "circle"
ib.IconAsset = "heart-solid.svg"
ib.Size = "md"
y = y + ib.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Square or circular icon button optimized for toolbars, headers, and floating actions.
- Set `Shape = "circle"` for circular buttons or `"square"` for square buttons.
- Assign vector icon asset name to `IconAsset` (e.g. `"search-solid.svg"`).
- Handle clicks in the `Click (Tag As Object)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| IconAsset | Icon Asset | String |  |  |
| IconColor | Icon Color | Color | 0x00FFFFFF |  |
| Variant | Variant | String | default | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| Style | Style | String | solid | solid|soft|outline|dash|ghost|link |
| Size | Size | String | md | xs|sm|md|lg|xl |
| CustomSize | Custom Size | Int | 0 |  |
| Shape | Shape | String | square | square|circle |
| Rounded | Rounded | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| Padding | Padding | String |  |  |
| Margin | Margin | String |  |  |
| Loading | Loading | Boolean | False |  |
| Disabled | Disabled | Boolean | False |  |
| Active | Active | Boolean | False |  |
| BackgroundColor | Background Color | Color | 0x00FFFFFF |  |
| BorderColor | Border Color | Color | 0x00FFFFFF |  |
| Visible | Visible | Boolean | True |  |
| Clickable | Clickable | Boolean | True |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iSizeDip As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getActive As Boolean`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getClickable As Boolean`
- `GetComputedHeight As Int`
- `GetComputedWidth As Int`
- `getCustomSize As Int`
- `getDisabled As Boolean`
- `getHeight As Int`
- `getIconAsset As String`
- `getIconColor As Int`
- `getLeft As Int`
- `getLoading As Boolean`
- `getMargin As String`
- `getPadding As String`
- `getRounded As String`
- `getShape As String`
- `getSize As String`
- `getStyle As String`
- `getTag As Object`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Release`
- `RemoveViewFromParent`
- `SendToBack`
- `setActive(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setBorderColor(iValue As Int)`
- `setClickable(bValue As Boolean)`
- `setCustomSize(iValue As Int)`
- `setDisabled(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `setIconAsset(sValue As String)`
- `setIconColor(iValue As Int)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setLoading(bValue As Boolean)`
- `setMargin(sValue As String)`
- `setPadding(sValue As String)`
- `setRounded(sValue As String)`
- `setShape(sValue As String)`
- `setSize(sValue As String)`
- `setStyle(sValue As String)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
