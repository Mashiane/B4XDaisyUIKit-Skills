# avatar-group (`B4XDaisyAvatarGroup`)

Horizontally stacked row of overlapping avatars with an optional "limit" count bubble (e.g. "+5 more").

## 1. Overview
- **Class**: `B4XDaisyAvatarGroup`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyAvatarGroup.bas`
- **Web DaisyUI Mapping**: `.avatar-group` → `B4XDaisyAvatarGroup`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim grp As B4XDaisyAvatarGroup
grp.Initialize(Me, "grp")
grp.AddToParent(pnlHost, pad, y, maxW, 48dip)
grp.AvatarSize = "12"
grp.LimitTo = 4
grp.Spacing = "-space-x-4"

Dim av1 As B4XDaisyAvatar
av1.Initialize(Me, "av1")
av1.setImage("user1.jpg")
av1.setMask("circle")
grp.AddAvatar(av1)

Dim av2 As B4XDaisyAvatar
av2.Initialize(Me, "av2")
av2.setImage("user2.jpg")
av2.setMask("circle")
grp.AddAvatar(av2)
y = y + grp.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Add child avatars via `AddAvatar(imagePath)` or `AddAvatarView(avatarView)`.
- `Spacing` controls the horizontal overlap distance between adjacent avatars.
- Use `SetCounter(extraCount)` to render a `+N` badge indicating remaining users.
- `MaxVisible` limits how many avatars are rendered before the excess counter badge.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Width | Width | String | full |  |
| Height | Height | String | h-12 |  |
| Padding | Padding | String |  |  |
| Margin | Margin | String |  |  |
| Spacing | Spacing | String | -space-x-6 |  |
| AvatarSize | Avatar Size | String | 12 |  |
| LimitTo | Limit To | Int | 5 |  |

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `AddAvatar(Avatar As B4XDaisyAvatar) As Int`
- `AddAvatarView(vChildView As B4XView, oTag As Object) As Int`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `applyActiveTheme`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `Clear`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getAvatarSize As Object`
- `GetComputedHeight As Int`
- `getCount As Int`
- `getHeight As Float`
- `getLeft As Int`
- `getLimitTo As Int`
- `getMargin As String`
- `getPadding As String`
- `getSpacing As String`
- `getTag As Object`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Float`
- `Initialize(oCallback As Object, sEventName As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `setAvatarSize(oValue As Object)`
- `setHeight(oValue As Object)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setLimitTo(iValue As Int)`
- `setMargin(sValue As String)`
- `setPadding(sValue As String)`
- `setSpacing(sValue As String)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
