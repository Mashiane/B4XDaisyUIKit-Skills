# badge (`B4XDaisyBadge`)

Compact label used for status, counts, or tags. Can show numeric counters, be toggled, closable, or include an avatar icon.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyBadge`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyBadge.bas`
- **Verified Demos**: `B4XPageAlert.bas, B4XPageBadge.bas, B4XPageCard.bas, B4XPageTooltip.bas, B4XPageWindow.bas`
- **Web DaisyUI Mapping**: `.badge` → `B4XDaisyBadge`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim bdg As B4XDaisyBadge
bdg.Initialize(Me, "bdg")
bdg.AddToParent(pnlHost, pad, y, 80dip, 24dip)
bdg.Variant = "success"
bdg.BadgeStyle = "soft"
bdg.Text = "Active"
bdg.Size = "sm"
y = y + bdg.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Can be rendered standalone or embedded inside `B4XDaisyNavbar`, `B4XDaisyButton`, or `B4XDaisyDock`.
- Set `BadgeStyle = "outline"` for subtle pill indicators or `"soft"` for tinted badges.
- Set `Closable = True` to display a trailing 'x' icon; handle dismissal in the `CloseClick` event.
- To create an empty status dot badge, leave `Text = ""` with small dimensions.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Width | Width | String | fit-content |  |
| Height | Height | String | h-6 |  |
| Size | Size | String | md | xs|sm|md|lg|xl |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| BadgeStyle | Style | String | solid | solid|soft|outline|dash|ghost |
| Text | Text | String | Badge |  |
| Padding | Padding | String |  |  |
| Margin | Margin | String |  |  |
| Visible | Visible | Boolean | True |  |
| AvatarVisible | Avatar Visible | Boolean | False |  |
| AvatarImage | Avatar Image | String | mashymain.jpg |  |
| AvatarText | Avatar Text | String |  |  |
| AvatarPosition | Avatar Position | String | left | left|right |
| IconAsset | Icon Asset | String |  |  |
| Toggle | Toggle | Boolean | False |  |
| Checked | Checked | Boolean | False |  |
| CheckedColor | Checked Color | Color | 0x00000000 |  |
| CheckedTextColor | Checked Text Color | Color | 0x00000000 |  |
| Id | Id | String |  |  |
| Closable | Closable | Boolean | False |  |
| CloseIconAsset | Close Icon Asset | String | xmark-solid.svg |  |
| Rounded | Rounded | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| RoundedBox | Rounded Box | Boolean | True |  |
| CapValue | Cap Value | Int | 99 |  |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| Clickable | Clickable | Boolean | True |  |
| BackgroundColor | Background Color | Color | 0x00FFFFFF |  |
| BorderColor | Border Color | Color | 0x00FFFFFF |  |
| TextColor | Text Color | Color | 0x00FFFFFF |  |
| TextCentered | Text Centered | Boolean | True |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `CloseClick (Tag As Object)`
- `Checked (Id As String, Checked As Boolean)`

## 6. Public Methods & APIs
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `IsReady As Boolean`
- `Release`
- `RemoveViewFromParent`
- `View As B4XView`
- `decrement As Int`
- `decrementBy(Amount As Int) As Int`
- `getAvatarImage As String`
- `getAvatarPosition As String`
- `getAvatarText As String`
- `getAvatarVisible As Boolean`
- `getBackgroundColor As Int`
- `getBadgeStyle As String`
- `getBorderColor As Int`
- `getCapValue As Int`
- `getChecked As Boolean`
- `getCheckedColor As Int`
- `getCheckedTextColor As Int`
- `getClickable As Boolean`
- `getClosable As Boolean`
- `getCloseIconAsset As String`
- `getHeight As Float`
- `getIconAsset As String`
- `getId As String`
- `getMargin As String`
- `getPadding As String`
- `getRounded As String`
- `getRoundedBox As Boolean`
- `getShadow As String`
- `getSize As String`
- `getStyle As String`
- `getTag As Object`
- `getText As String`
- `getTextCentered As Boolean`
- `getTextColor As Int`
- `getToggle As Boolean`
- `getValue As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Float`
- `increment As Int`
- `incrementBy(Amount As Int) As Int`
- `setAvatarImage(Value As String)`
- `setAvatarPosition(Value As String)`
- `setAvatarText(Value As String)`
- `setAvatarVisible(Value As Boolean)`
- `setBackgroundColor(Value As Int)`
- `setBackgroundColorVariant(VariantName As String)`
- `setBadgeStyle(Value As String)`
- `setBorderColor(Value As Int)`
- `setBorderColorVariant(VariantName As String)`
- `setCapValue(Value As Int)`
- `setChecked(Value As Boolean)`
- `setCheckedColor(Value As Int)`
- `setCheckedTextColor(Value As Int)`
- `setClickable(Value As Boolean)`
- `setClosable(Value As Boolean)`
- `setCloseIconAsset(Value As String)`
- `setHeight(Value As Object)`
- `setIconAsset(Value As String)`
- `setId(Value As String)`
- `setMargin(Value As String)`
- `setPadding(Value As String)`
- `setRounded(Value As String)`
- `setRoundedBox(Value As Boolean)`
- `setShadow(Value As String)`
- `setSize(Value As String)`
- `setStyle(Value As String)`
- `setTag(Value As Object)`
- `setText(Value As String)`
- `setTextCentered(Value As Boolean)`
- `setTextColor(Value As Int)`
- `setTextColorVariant(VariantName As String)`
- `setToggle(Value As Boolean)`
- `setValue(Value As Int)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Object)`

## 7. Public Fields
- `mBase As B4XView`
