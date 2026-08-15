# icon-button (`B4XDaisyIconButton`)

Icon-only button (square or circle) for toolbar actions, nav items, and inline controls.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyIconButton`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyIconButton.bas`
- **Verified Demos**: `B4XPageIconButton.bas, B4XPageList.bas, B4XPageMediaPicker.bas`
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `CreateView(SizeDip As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `GetComputedWidth As Int`
- `Initialize(Callback As Object, EventName As String)`
- `Release`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `getActive As Boolean`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getClickable As Boolean`
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
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As Int`
- `setActive(Value As Boolean)`
- `setBackgroundColor(Value As Int)`
- `setBorderColor(Value As Int)`
- `setClickable(Value As Boolean)`
- `setCustomSize(Value As Int)`
- `setDisabled(Value As Boolean)`
- `setHeight(Value As Int)`
- `setIconAsset(Value As String)`
- `setIconColor(Value As Int)`
- `setLeft(Value As Int)`
- `setLoading(Value As Boolean)`
- `setMargin(Value As String)`
- `setPadding(Value As String)`
- `setRounded(Value As String)`
- `setShape(Value As String)`
- `setSize(Value As String)`
- `setStyle(Value As String)`
- `setTag(Value As Object)`
- `setTop(Value As Int)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
