# badge (`B4XDaisyBadge`)

DaisyUI `Badge` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyBadge`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyBadge.bas`
- **Verified Demo Source**: B4XPageAlert.bas, B4XPageBadge.bas, B4XPageCard.bas, B4XPageTooltip.bas, B4XPageWindow.bas
- **Web DaisyUI Mapping**: `.badge` → `B4XDaisyBadge`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``badge`` | Member | `.SetComponent(...)` | Native configuration |
| `style` | ``badge-outline`, `badge-dash`, `badge-soft`, `badge-ghost`` | Property | `.Style = "outline"` (or soft, dash, ghost, etc.) | Visual fill and border style |
| `color` | ``badge-neutral`, `badge-primary`, `badge-secondary`, `badge-accent`, `badge-info`, `badge-success`, `badge-warning`, `badge-error`` | Property | `.Variant = "primary"` (or secondary, accent, etc.) | Available on all interactive and display views |
| `size` | ``badge-xs`, `badge-sm`, `badge-md`, `badge-lg`, `badge-xl`` | Property | `.Size = "sm"` (or xs, md, lg, xl) | Preset dimension scaling |

### Web DaisyUI HTML Syntax
```html
<span class="badge {MODIFIER}">Badge</span>
```

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
| `Width` | Width | `String` | fit-content |  |
| `Height` | Height | `String` | h-6 |  |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `BadgeStyle` | Style | `String` | solid | solid|soft|outline|dash|ghost |
| `Text` | Text | `String` | Badge |  |
| `Padding` | Padding | `String` |  |  |
| `Margin` | Margin | `String` |  |  |
| `Visible` | Visible | `Boolean` | True |  |
| `AvatarVisible` | Avatar Visible | `Boolean` | False |  |
| `AvatarImage` | Avatar Image | `String` | mashymain.jpg |  |
| `AvatarText` | Avatar Text | `String` |  |  |
| `AvatarPosition` | Avatar Position | `String` | left | left|right |
| `IconAsset` | Icon Asset | `String` |  |  |
| `Toggle` | Toggle | `Boolean` | False |  |
| `Checked` | Checked | `Boolean` | False |  |
| `CheckedColor` | Checked Color | `Color` | 0x00000000 |  |
| `CheckedTextColor` | Checked Text Color | `Color` | 0x00000000 |  |
| `Id` | Id | `String` |  |  |
| `Closable` | Closable | `Boolean` | False |  |
| `CloseIconAsset` | Close Icon Asset | `String` | xmark-solid.svg |  |
| `Rounded` | Rounded | `String` | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `CapValue` | Cap Value | `Int` | 99 |  |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |
| `Clickable` | Clickable | `Boolean` | True |  |
| `BackgroundColor` | Background Color | `Color` | 0x00FFFFFF |  |
| `BorderColor` | Border Color | `Color` | 0x00FFFFFF |  |
| `TextColor` | Text Color | `Color` | 0x00FFFFFF |  |
| `TextCentered` | Text Centered | `Boolean` | True |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `CloseClick (Tag As Object)`
- `Checked (Id As String, Checked As Boolean)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `AddToParentAt(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setSize(Value As String)`
- `getSize As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setBadgeStyle(Value As String)`
- `getBadgeStyle As String`
- `setStyle(Value As String)`
- `getStyle As String`
- `setText(Value As String)`
- `getText As String`
- `setTextCentered(Value As Boolean)`
- `getTextCentered As Boolean`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setAvatarVisible(Value As Boolean)`
- `getAvatarVisible As Boolean`
- `setAvatarImage(Value As String)`
- `getAvatarImage As String`
- `setAvatarText(Value As String)`
- `getAvatarText As String`
- `setAvatarPosition(Value As String)`
- `getAvatarPosition As String`
- `setIconAsset(Value As String)`
- `getIconAsset As String`
- `setToggle(Value As Boolean)`
- `getToggle As Boolean`
- `setChecked(Value As Boolean)`
- `getChecked As Boolean`
- `setCheckedColor(Value As Int)`
- `getCheckedColor As Int`
- `setCheckedTextColor(Value As Int)`
- `getCheckedTextColor As Int`
- `setId(Value As String)`
- `getId As String`
- `setClosable(Value As Boolean)`
- `getClosable As Boolean`
- `setCloseIconAsset(Value As String)`
- `getCloseIconAsset As String`
- `setCapValue(Value As Int)`
- `getCapValue As Int`
- `setValue(Value As Object)`
- `getValue As String`
- `increment As Int`
- `incrementBy(Amount As Int) As Int`
- `decrement As Int`
- `decrementBy(Amount As Int) As Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setBackgroundColorVariant(VariantName As String)`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setBorderColorVariant(VariantName As String)`
- `setTag(Value As Object)`
- `getTag As Object`
- `GetComputedHeight As Int`
- `setClickable(Value As Boolean)`
- `getClickable As Boolean`
- `RemoveViewFromParent`
- `Release`

## 7. Public Fields
- `mBase As B4XView`

