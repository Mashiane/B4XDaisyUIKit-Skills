# button (`B4XDaisyButton`)

DaisyUI `Button` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyButton`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyButton.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyButton.bas)
- **Verified Demo Source**: B4XPageActionSheet.bas, B4XPageAura.bas, B4XPageButton.bas, B4XPageCanvasSpinner.bas, B4XPageCard.bas, B4XPageColorWheel.bas, B4XPageDock.bas, B4XPageDrawer.bas, B4XPageDrawerRail.bas, B4XPageDrawerTree.bas, B4XPageDropdown.bas, B4XPageEasing.bas, B4XPageEnjoyHint.bas, B4XPageFocus.bas, B4XPageHero.bas, B4XPageMenuRuntime.bas, B4XPageMenuRuntime2.bas, B4XPageModal.bas, B4XPageNavScrollDock.bas, B4XPageNavbar.bas, B4XPageOverlay.bas, B4XPagePicker.bas, B4XPageProgress.bas, B4XPageRadialProgress.bas, B4XPageRange.bas, B4XPageRating.bas, B4XPageScrollDemo.bas, B4XPageSheetModal.bas, B4XPageShineButton.bas, B4XPageSignaturePad.bas, B4XPageStat.bas, B4XPageSweetAlert.bas, B4XPageSweetAlertInputs.bas, B4XPageTagSphere.bas, B4XPageToast.bas, B4XPageTooltip.bas
- **Web DaisyUI Mapping**: `.button` → `B4XDaisyButton`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``btn`` | Member | `.SetComponent(...)` | Native configuration |
| `color` | ``btn-neutral`, `btn-primary`, `btn-secondary`, `btn-accent`, `btn-info`, `btn-success`, `btn-warning`, `btn-error`` | Property | `.Variant = "primary"` (or secondary, accent, etc.) | Available on all interactive and display views |
| `style` | ``btn-outline`, `btn-dash`, `btn-soft`, `btn-ghost`, `btn-link`` | Property | `.Style = "outline"` (or soft, dash, ghost, etc.) | Visual fill and border style |
| `behavior` | ``btn-active`, `btn-disabled`` | Property | `.Enabled = False` | Disables touch and greys out view |
| `size` | ``btn-xs`, `btn-sm`, `btn-md`, `btn-lg`, `btn-xl`` | Property | `.Size = "sm"` (or xs, md, lg, xl) | Preset dimension scaling |
| `modifier` | ``btn-wide`, `btn-block`, `btn-square`, `btn-circle`` | Property | `.Shape = "circle"` / `.Shape = "square"` | Component aspect ratio shape |

### Web DaisyUI HTML Syntax
```html
<button class="btn {MODIFIER}">Button</button>
```

## 2. Verified B4X Syntax & Recipe
```b4x
    ' Example 1: Standard button
    y = AddSectionTitle("Button", y, maxW)
    Dim bDefault As B4XDaisyButton
    bDefault.Initialize(Me, "component")
    bDefault.AddToParent(pnlHost, PAGE_PAD, y, 120dip, 40dip)
    bDefault.Text = "Default"
    bDefault.Tag = "button-default"
    y = y + 54dip

    ' /**
    '  * Example 2: Button sizes.
    '  */
    y = AddSectionTitle("Button sizes", y, maxW)
    x = PAGE_PAD

    Dim bXs As B4XDaisyButton
    bXs.Initialize(Me, "component")
    Dim vSizeXs As B4XView = bXs.AddToParent(pnlHost, x, y, 70dip, 24dip)
    bXs.Text = "Xsmall"
    bXs.Size = "xs"
    bXs.Tag = "size-xs"
    x = vSizeXs.Left + vSizeXs.Width + 8dip

    Dim bSm As B4XDaisyButton
    bSm.Initialize(Me, "component")
    bSm.AddToParent(pnlHost, x, y, 70dip, 32dip)
    bSm.Text = "Small"
    bSm.Size = "sm"
    bSm.Tag = "size-sm"
    y = y + 44dip
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyButton` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getGlass, setLeft, getLeft` (+ 2 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Text` | Text | `String` | Button |  |
| `Variant` | Variant | `String` | default | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| `Style` | Style | `String` | solid | solid|soft|outline|dash|ghost|link |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `Rounded` | Rounded | `String` | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Padding` | Padding | `String` |  |  |
| `Margin` | Margin | `String` |  |  |
| `Width` | Width | `String` | auto |  |
| `Height` | Height | `String` | auto |  |
| `IconName` | Icon Name | `String` |  |  |
| `IconColor` | Icon Color | `Color` | 0x00FFFFFF |  |
| `Wide` | Wide | `Boolean` | False |  |
| `Block` | Block | `Boolean` | False |  |
| `Square` | Square | `Boolean` | False |  |
| `Circle` | Circle | `Boolean` | False |  |
| `Active` | Active | `Boolean` | False |  |
| `Disabled` | Disabled | `Boolean` | False |  |
| `Loading` | Loading | `Boolean` | False |  |
| `BackgroundColor` | Background Color | `Color` | 0x00FFFFFF |  |
| `TextColor` | Text Color | `Color` | 0x00FFFFFF |  |
| `BorderColor` | Border Color | `Color` | 0x00FFFFFF |  |
| `Visible` | Visible | `Boolean` | True |  |
| `TextAlignment` | Text Alignment | `String` | CENTER | CENTER|LEFT|RIGHT |
| `Glass` | Glass | `Boolean` | False |  |
| `ButtonSizeDip` | Button Size (dip) | `Int` | 0, MinRange: 0 |  |
| `IconSize` | Icon Size (dip) | `Int` | 0, MinRange: 0 |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Refresh`
- `setGlass(Value As Boolean)`
- `getGlass As Boolean`
- `GetEstimateContentWidth As Int`
- `setText(Value As String)`
- `getText As String`
- `setClass(Value As String)`
- `getClass As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setStyle(Value As String)`
- `getStyle As String`
- `setSize(Value As String)`
- `getSize As String`
- `setButtonSizeDip(Value As Int)`
- `getButtonSizeDip As Int`
- `setIconSize(Value As Int)`
- `getIconSize As Int`
- `setRounded(Value As String)`
- `getRounded As String`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setShadow(Value As String)`
- `getShadow As String`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setIconName(Value As String)`
- `getIconName As String`
- `setIconColor(Value As Int)`
- `getIconColor As Int`
- `setWide(Value As Boolean)`
- `getWide As Boolean`
- `setBlock(Value As Boolean)`
- `getBlock As Boolean`
- `setSquare(Value As Boolean)`
- `getSquare As Boolean`
- `setCircle(Value As Boolean)`
- `getCircle As Boolean`
- `setActive(Value As Boolean)`
- `getActive As Boolean`
- `setDisabled(Value As Boolean)`
- `getDisabled As Boolean`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setLoading(Value As Boolean)`
- `getLoading As Boolean`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setTextAlignment(Value As String)`
- `getTextAlignment As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `View As B4XView`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `setFocus(Value As Boolean)`
- `getIsFocused As Boolean`
- `RequestFocus`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `Release`

## 7. Public Fields
- `mBase As B4XView`

