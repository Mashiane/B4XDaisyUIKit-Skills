# status (`B4XDaisyStatus`)

Small inline status dot/indicator for presence, connection, or availability states.

## 1. Overview
- **Class**: `B4XDaisyStatus`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyStatus.bas`
- **Web DaisyUI Mapping**: `.status` → `B4XDaisyStatus`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim sts As B4XDaisyStatus
sts.Initialize(Me, "sts")
' Small dot — anchor near an avatar
sts.AddToParent(avatarPanel, avatarPanel.Width - 12dip, avatarPanel.Height - 12dip, 12dip, 12dip)
sts.Variant = "success"
sts.Animation = "pulse"
sts.Size = "sm"

```

## 3. Native Composition Rules & Gotchas
- Status dot indicator for presence (online, offline, busy, away).
- Set `StatusType` (`"online"`, `"offline"`, `"busy"`, `"away"`).
- Set `Pulse = True` for animated beacon pulse ring.
- Set `Size` (`"xs"` to `"xl"`) to match adjacent avatars or text.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Width | Width | String |  |  |
| Height | Height | String |  |  |
| Size | Size | String | md | xs|sm|md|lg|xl |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| Animation | Animation | String | none | none|pulse|bounce |
| Padding | Padding | String |  |  |
| Margin | Margin | String | 1 |  |
| Visible | Visible | Boolean | True |  |
| Clickable | Clickable | Boolean | True |  |
| BackgroundColor | Background Color | Color | 0x00FFFFFF |  |
| TextColor | Text Color | Color | 0x00FFFFFF |  |
| Depth | Depth | Float | -1 |  |

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddToParentAt(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `CenterInParent(vParent As B4XView)`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getAnimation As String`
- `getBackgroundColor As Int`
- `getClickable As Boolean`
- `GetComputedHeight As Int`
- `getDepth As Float`
- `getHeight As Float`
- `getMargin As String`
- `getPadding As String`
- `getSize As String`
- `getTag As Object`
- `getTextColor As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Float`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `RemoveViewFromParent`
- `setAnimation(sValue As String)`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setClickable(bValue As Boolean)`
- `setDepth(fValue As Float)`
- `setHeight(oValue As Object)`
- `setMargin(sValue As String)`
- `setPadding(sValue As String)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
