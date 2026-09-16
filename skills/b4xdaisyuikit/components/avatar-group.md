# avatar-group (`B4XDaisyAvatarGroup`)

DaisyUI `AvatarGroup` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyAvatarGroup`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyAvatarGroup.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyAvatarGroup.bas)
- **Verified Demo Source**: B4XPageAvatar.bas
- **Web DaisyUI Mapping**: `.avatar-group` → `B4XDaisyAvatarGroup`

## 2. Verified B4X Syntax & Recipe

```b4x
' Overlapping avatar group container:
Dim avGroup As B4XDaisyAvatarGroup
avGroup.Initialize(Me, "avGroup")
avGroup.AddToParent(pnlHost, 16dip, y, 160dip, 48dip)
avGroup.setLimitTo(4)

' Add individual avatars to the group:
For Each img As String In Array As String("face11.jpg", "face12.jpg", "face14.jpg", "face16.jpg")
	Dim av As B4XDaisyAvatar
	av.Initialize(Me, "grp_av")
	av.CreateView(48dip, 48dip)
	av.SetImage(img)
	av.SetAvatarMask("rounded-full")
	avGroup.AddAvatar(av)
Next

y = y + 48dip + 16dip
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyAvatarGroup` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddAvatarView, getCount, setMargin` (+ 12 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Width` | Width | `String` | full |  |
| `Height` | Height | `String` | h-12 |  |
| `Padding` | Padding | `String` |  |  |
| `Margin` | Margin | `String` |  |  |
| `Spacing` | Spacing | `String` | -space-x-6 |  |
| `AvatarSize` | Avatar Size | `String` | 12 |  |
| `LimitTo` | Limit To | `Int` | 5 |  |

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddAvatar(Avatar As B4XDaisyAvatar) As Int`
- `AddAvatarView(ChildView As B4XView, Tag As Object) As Int`
- `Clear`
- `getCount As Int`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setSpacing(Value As String)`
- `getSpacing As String`
- `applyActiveTheme`
- `setAvatarSize(Value As Object)`
- `getAvatarSize As Object`
- `setLimitTo(Value As Int)`
- `getLimitTo As Int`
- `setTag(Value As Object)`
- `getTag As Object`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

## 7. Public Fields
- `mBase As B4XView`

