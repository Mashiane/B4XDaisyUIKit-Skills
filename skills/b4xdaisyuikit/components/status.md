# status (`B4XDaisyStatus`)

Small inline status dot/indicator for presence, connection, or availability states.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyStatus`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyStatus.bas`
- **Verified Demos**: `B4XPageStatus.bas`
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `CenterInParent(Parent As B4XView)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `IsReady As Boolean`
- `RemoveViewFromParent`
- `View As B4XView`
- `getAnimation As String`
- `getBackgroundColor As Int`
- `getClickable As Boolean`
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
- `setAnimation(Value As String)`
- `setBackgroundColor(Value As Int)`
- `setBackgroundColorVariant(VariantName As String)`
- `setClickable(Value As Boolean)`
- `setDepth(Value As Float)`
- `setHeight(Value As Object)`
- `setMargin(Value As String)`
- `setPadding(Value As String)`
- `setSize(Value As String)`
- `setTag(Value As Object)`
- `setTextColor(Value As Int)`
- `setTextColorVariant(VariantName As String)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Object)`

## 7. Public Fields
- `mBase As B4XView`
