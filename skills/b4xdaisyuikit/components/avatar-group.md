# avatar-group (`B4XDaisyAvatarGroup`)

DaisyUI `AvatarGroup` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyAvatarGroup`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyAvatarGroup.bas`
- **Verified Demo Source**: B4XPageAvatar.bas (lines 790–921)
- **Web DaisyUI Mapping**: `.avatar-group` → `B4XDaisyAvatarGroup`

## 2. Verified B4X Syntax & Recipe
```b4x
pnlHost.AddView(cardG1, 0, 0, 10dip, 10dip)

	Dim groupG1 As B4XDaisyAvatarGroup
	groupG1.Initialize(Me, "avatar_group1")
	Dim groupViewG1 As B4XView = groupG1.AddToParent(cardG1, 0, 0, 120dip, 120dip)
	
	For Each img As String In Array As String("face11.jpg", "face12.jpg", "face14.jpg", "face16.jpg")
		Dim av As B4XDaisyAvatar
		av.Initialize(Me, "grp_av")
		av.CreateView(48dip, 48dip)
		av.SetImage(img)
		av.SetAvatarMask("rounded-full")
		groupG1.AddAvatar(av)
	Next

	groupViewG1.Tag = "avatar-group -space-x-6"

	Dim lblTitleG1 As Label
	lblTitleG1.Initialize("")
	Dim xlblTitleG1 As B4XView = lblTitleG1
	xlblTitleG1.Text = "Group -space-x-6 (Overlap)"
	xlblTitleG1.TextColor = xui.Color_RGB(15, 23, 42)
	xlblTitleG1.TextSize = 13
	xlblTitleG1.SetTextAlignment("CENTER", "CENTER")
	cardG1.AddView(xlblTitleG1, 0, 0, 10dip, 10dip)

	Dim itemG1 As Map = CreateMap( _
		"panel": cardG1, _
		"avatar": groupG1, _
		"avatar_view": groupViewG1, _
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
| `Width` | Width | `String` | `full` |  |
| `Height` | Height | `String` | `h-12` |  |
| `Padding` | Padding | `String` | `` |  |
| `Margin` | Margin | `String` | `` |  |
| `Spacing` | Spacing | `String` | `-space-x-6` |  |
| `AvatarSize` | Avatar Size | `String` | `12` |  |
| `LimitTo` | Limit To | `Int` | `5` |  |

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `AddAvatar(Avatar As B4XDaisyAvatar) As Int`
- `AddAvatarView(vChildView As B4XView, oTag As Object) As Int`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `Clear`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
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
- `setAvatarSize(oValue As Object)`
- `setHeight(oValue As Object)`
- `setLeft(iValue As Int)`
- `setLimitTo(iValue As Int)`
- `setMargin(sValue As String)`
- `setPadding(sValue As String)`
- `setSpacing(sValue As String)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

