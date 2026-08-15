# info-card (`B4XDaisyInfoCard`)

Summary card displaying icon, title, metric value, and sub-text description with color theme accents.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyInfoCard`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyInfoCard.bas`
- **Verified Demos**: `B4XPageInfoCard.bas`
- **Web DaisyUI Mapping**: `.info-card` → `B4XDaisyInfoCard`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim ic As B4XDaisyInfoCard
ic.Initialize(Me, "ic")
ic.AddToParent(pnlHost, pad, y, maxW, 100dip)
ic.Title = "System Health"
ic.Value = "Operational"
ic.Variant = "success"
y = y + ic.GetComputedHeight + gap
```

## 3. Native Composition Rules & Gotchas
- Single KPI metric card with icon, prominent value highlight, and trend label.
- Set `Title`, `Value`, `Description`, and `IconAsset`.
- Use semantic `Variant` (`"success"`, `"primary"`, `"info"`, `"warning"`) to denote trend severity.
- Set `Clickable = True` to enable drill-down navigation via the `Click` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| InforType | Type | String | 1 | 1|2|3|4|5|6 |
| Effect | Effect | String | none | none|hover-zoom |
| Icon | Icon | String | user-solid.svg |  |
| IconColor | Icon Color | Color | 0 |  |
| IconTextColor | Icon Text Color | Color | 0 |  |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| Title | Title | String | Employees |  |
| Value | Value | String | 1000 |  |
| StartFrom | Start From | Float | 0 |  |
| Prefix | Prefix | String |  |  |
| Suffix | Suffix | String |  |  |
| Separator | Separator | String |  |  |
| Decimal | Decimal | String | . |  |
| DecimalPlaces | Decimal Places | Int | 0 |  |
| UseGrouping | Use Grouping | Boolean | True |  |
| Animated | Animated | Boolean | True |  |
| Duration | Duration (s) | Int | 2 |  |
| BackgroundColor | Background Color | Color | 0 |  |
| TextColor | Text Color | Color | 0 |  |
| Shadow | Shadow | String | sm | none|xs|sm|md|lg|xl|2xl |
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `StartAnimation`
- `StopAnimation`
- `UpdateTheme`
- `getAnimated As Boolean`
- `getBackgroundColor As Int`
- `getComputedHeight As Int`
- `getDecimal As String`
- `getDecimalPlaces As Int`
- `getDuration As Int`
- `getEffect As String`
- `getEnabled As Boolean`
- `getHeight As Int`
- `getIcon As String`
- `getIconColor As Int`
- `getIconTextColor As Int`
- `getInforType As String`
- `getLeft As Int`
- `getPrefix As String`
- `getRole As String`
- `getSeparator As String`
- `getShadow As String`
- `getStartFrom As Float`
- `getSuffix As String`
- `getTag As Object`
- `getTextColor As Int`
- `getTitle As String`
- `getTop As Int`
- `getUseGrouping As Boolean`
- `getValue As String`
- `getVariant As String`
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAnimated(Value As Boolean)`
- `setBackgroundColor(Value As Int)`
- `setDecimal(Value As String)`
- `setDecimalPlaces(Value As Int)`
- `setDuration(Value As Int)`
- `setEffect(Value As String)`
- `setEnabled(Value As Boolean)`
- `setHeight(Value As Int)`
- `setIcon(Value As String)`
- `setIconColor(Value As Int)`
- `setIconTextColor(Value As Int)`
- `setInforType(Value As String)`
- `setLeft(Value As Int)`
- `setPrefix(Value As String)`
- `setSeparator(Value As String)`
- `setShadow(Value As String)`
- `setStartFrom(Value As Float)`
- `setSuffix(Value As String)`
- `setTag(Value As Object)`
- `setTextColor(Value As Int)`
- `setTitle(Value As String)`
- `setTop(Value As Int)`
- `setUseGrouping(Value As Boolean)`
- `setValue(Value As String)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
