# avatar-group (`B4XDaisyAvatarGroup`)

Horizontally stacked row of overlapping avatars with an optional "limit" count bubble (e.g. "+5 more").

## 1. Overview & Verification Status
- **Class**: `B4XDaisyAvatarGroup`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyAvatarGroup.bas`
- **Verified Demos**: `B4XPageAvatar.bas, B4XPageAvatarGroup.bas`
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
- `AddAvatarView(ChildView As B4XView, Tag As Object) As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `Clear`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `View As B4XView`
- `applyActiveTheme`
- `getAvatarSize As Object`
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
- `setAvatarSize(Value As Object)`
- `setHeight(Value As Object)`
- `setLeft(Value As Int)`
- `setLimitTo(Value As Int)`
- `setMargin(Value As String)`
- `setPadding(Value As String)`
- `setSpacing(Value As String)`
- `setTag(Value As Object)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Object)`

## 7. Public Fields
- `mBase As B4XView`
