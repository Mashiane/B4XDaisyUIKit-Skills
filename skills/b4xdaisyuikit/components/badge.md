# badge (`B4XDaisyBadge`)

DaisyUI `Badge` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyBadge`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyBadge.bas`
- **Verified Demo Source**: B4XPageAlert.bas (lines 180–180), B4XPageBadge.bas (lines 18–680), B4XPageCard.bas (lines 326–334), B4XPageTooltip.bas (lines 225–225), B4XPageWindow.bas (lines 128–131)
- **Web DaisyUI Mapping**: `.badge` → `B4XDaisyBadge`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub RenderBadgeGroupSelectSections(MaxW As Int, StartY As Int) As Int
	Dim y As Int = StartY
	
	Dim titleLbl As B4XView = CreateSectionLabel("BadgeGroupSelect - Single Select", 14, xui.Color_RGB(30, 41, 59), True)
	pnlHost.AddView(titleLbl, PAGE_PAD, y, MaxW, 20dip)
	y = y + 22dip
	
	singleGroup.Initialize(Me, "singlegroup")
	Dim v1 As B4XView = singleGroup.AddToParent(pnlHost, PAGE_PAD, y, MaxW, 1dip)
	singleGroup.setLegend("Priority")
	singleGroup.setBadgeSelectionMode("single")
	singleGroup.setBadgeColor("neutral")
	singleGroup.setBadgeStyle("solid")
	singleGroup.setBadgeCheckedColor(B4XDaisyVariants.ResolveBackgroundColorVariant("success", xui.Color_RGB(34, 197, 94)))
	singleGroup.setBadgeCheckedTextColor(B4XDaisyVariants.ResolveTextColorVariant("success", xui.Color_White))
	singleGroup.setItemsSpec("low:Low|normal:Normal|high:High|urgent:Urgent")
	
		singleGroup.setChecked("normal")
	
	lblSingleState = CreateStateLabel("Selected: normal")
	pnlHost.AddView(lblSingleState, PAGE_PAD, y + v1.Height + 8dip, MaxW, 18dip)
	y = y + v1.Height + 34dip

	Dim titleLbl2 As B4XView = CreateSectionLabel("BadgeGroupSelect - Multi Select", 14, xui.Color_RGB(30, 41, 59), True)
	pnlHost.AddView(titleLbl2, PAGE_PAD, y, MaxW, 20dip)
	y = y + 22dip
	
	multiGroup.Initialize(Me, "multigroup")
	Dim v2 As B4XView = multiGroup.AddToParent(pnlHost, PAGE_PAD, y, MaxW, 1dip)
	multiGroup.setLegend("Skills")
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyBadge` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `AddToParentAt, getSize, getVariant` (+ 34 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Width` | Width | `String` | `fit-content` |  |
| `Height` | Height | `String` | `h-6` |  |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `BadgeStyle` | Style | `String` | `solid` | solid|soft|outline|dash|ghost |
| `Text` | Text | `String` | `Badge` |  |
| `Padding` | Padding | `String` | `` |  |
| `Margin` | Margin | `String` | `` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `AvatarVisible` | Avatar Visible | `Boolean` | `False` |  |
| `AvatarImage` | Avatar Image | `String` | `mashymain.jpg` |  |
| `AvatarText` | Avatar Text | `String` | `` |  |
| `AvatarPosition` | Avatar Position | `String` | `left` | left|right |
| `IconAsset` | Icon Asset | `String` | `` |  |
| `Toggle` | Toggle | `Boolean` | `False` |  |
| `Checked` | Checked | `Boolean` | `False` |  |
| `CheckedColor` | Checked Color | `Color` | `0x00000000` |  |
| `CheckedTextColor` | Checked Text Color | `Color` | `0x00000000` |  |
| `Id` | Id | `String` | `` |  |
| `Closable` | Closable | `Boolean` | `False` |  |
| `CloseIconAsset` | Close Icon Asset | `String` | `xmark-solid.svg` |  |
| `Rounded` | Rounded | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `CapValue` | Cap Value | `Int` | `99` |  |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl|2xl |
| `Clickable` | Clickable | `Boolean` | `True` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00FFFFFF` |  |
| `BorderColor` | Border Color | `Color` | `0x00FFFFFF` |  |
| `TextColor` | Text Color | `Color` | `0x00FFFFFF` |  |
| `TextCentered` | Text Centered | `Boolean` | `True` |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `CloseClick (Tag As Object)`
- `Checked (Id As String, Checked As Boolean)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddToParentAt(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `Release`
- `RemoveViewFromParent`
- `View As B4XView`
- `decrement As Int`
- `decrementBy(iAmount As Int) As Int`
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
- `getValue As String`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Float`
- `increment As Int`
- `incrementBy(iAmount As Int) As Int`
- `setAvatarImage(sValue As String)`
- `setAvatarPosition(sValue As String)`
- `setAvatarText(sValue As String)`
- `setAvatarVisible(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setBackgroundColorVariant(sVariantName As String)`
- `setBadgeStyle(sValue As String)`
- `setBorderColor(iValue As Int)`
- `setBorderColorVariant(sVariantName As String)`
- `setCapValue(iValue As Int)`
- `setChecked(bValue As Boolean)`
- `setCheckedColor(iValue As Int)`
- `setCheckedTextColor(iValue As Int)`
- `setClickable(bValue As Boolean)`
- `setClosable(bValue As Boolean)`
- `setCloseIconAsset(sValue As String)`
- `setHeight(oValue As Object)`
- `setIconAsset(sValue As String)`
- `setId(sValue As String)`
- `setMargin(sValue As String)`
- `setPadding(sValue As String)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setSize(sValue As String)`
- `setStyle(sValue As String)`
- `setTag(oValue As Object)`
- `setText(sValue As String)`
- `setTextCentered(bValue As Boolean)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setToggle(bValue As Boolean)`
- `setValue(oValue As Object)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

