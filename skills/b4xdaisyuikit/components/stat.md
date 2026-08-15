# stat / stat-item (`B4XDaisyStat / statItem`)

Metric display component combining a figure (number/icon/radial), title, description, and optional action buttons.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyStat / statItem`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyStat / statItem.bas`
- **Verified Demos**: `B4XPageStat / statItem.bas`
- **Web DaisyUI Mapping**: `.stat / stat-item` → `B4XDaisyStat / statItem`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim stt As B4XDaisyStat
stt.Initialize(Me, "stt")
stt.AddToParent(pnlHost, pad, y, maxW, 0)
stt.Orientation = "horizontal"
stt.Shadow = "md"

' Add items (each gets a B4XDaisyStatItem)
' ... see below
y = y + stt.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Metric summary card displaying title, large numeric figure, and trend description.
- Add metric tiles using `stat.AddStatBasic(Tag, Title, Value, Description)`.
- Add leading vector icons with `stat.SetStatIcon(Tag, IconAsset)`.
- Add status badges with `stat.SetStatBadge(Tag, BadgeText, BadgeVariant)`.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Orientation | Orientation | String | horizontal | horizontal|vertical |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| Rounded | Rounded | String | box | none|selector|field|box|full |
| BorderWidth | Border Width | String | token |  |
| BorderColor | Border Color | String | base-300 | base-300|base-200|base-content|primary|secondary|accent|info|success|warning|error|none |
| Width | Width | String | w-content |  |
| Height | Height | String |  |  |
| Visible | Visible | Boolean | True |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddItem(Item As B4XDaisyStatItem)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `StartAnimation`
- `UpdateTheme`
- `getBorderColor As String`
- `getBorderWidth As String`
- `getContentHeight As Int`
- `getContentWidth As Int`
- `getHeight As String`
- `getLeft As Int`
- `getOrientation As String`
- `getRounded As String`
- `getShadow As String`
- `getTag As Object`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As String`
- `setBorderColor(Value As String)`
- `setBorderWidth(Value As String)`
- `setHeight(Value As String)`
- `setLeft(Value As Int)`
- `setOrientation(Value As String)`
- `setRounded(Value As String)`
- `setShadow(Value As String)`
- `setTag(Value As Object)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As String)`

## 7. Public Fields
- `mBase As B4XView`

## 8. Compound Sub-Components
- **`B4XDaisyStatItem`**: Individual metric tile container created and configured when calling `stat.AddStatBasic(Tag, Title, Value, Desc)`. Supports title, large numeric figure, sub-description, leading icon, and status badge.
