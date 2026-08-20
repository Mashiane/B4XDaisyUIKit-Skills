# stat / stat-item (`B4XDaisyStat / statItem`)

Metric display component combining a figure (number/icon/radial), title, description, and optional action buttons.

## 1. Overview
- **Class**: `B4XDaisyStat / statItem`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyStat / statItem.bas`
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
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getBorderColor As String`
- `getBorderWidth As String`
- `GetComputedHeight As Int`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `setBorderColor(sValue As String)`
- `setBorderWidth(sValue As String)`
- `setHeight(sValue As String)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setOrientation(sValue As String)`
- `setRounded(sValue As String)`
- `setShadow(sValue As String)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(sValue As String)`
- `StartAnimation`
- `UpdateTheme`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`

## 8. Compound Sub-Components
- **`B4XDaisyStatItem`**: Individual metric tile container created and configured when calling `stat.AddStatBasic(Tag, Title, Value, Desc)`. Supports title, large numeric figure, sub-description, leading icon, and status badge.
