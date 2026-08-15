# button (`B4XDaisyButton`)

The primary action trigger. Supports text, icons, loading states, sizes, variants, and styles.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyButton`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyButton.bas`
- **Verified Demos**: `B4XPageActionSheet.bas, B4XPageAura.bas, B4XPageButton.bas, B4XPageCanvasSpinner.bas, B4XPageCard.bas, B4XPageColorWheel.bas, B4XPageDock.bas, B4XPageDropdown.bas, B4XPageEasing.bas, B4XPageEnjoyHint.bas, B4XPageFocus.bas, B4XPageHero.bas, B4XPageInput.bas, B4XPageMenuRuntime.bas, B4XPageMenuRuntime2.bas, B4XPageModal.bas, B4XPageNavbar.bas, B4XPageNavScrollDock.bas, B4XPageOverlay.bas, B4XPagePicker.bas, B4XPageProgress.bas, B4XPageRadialProgress.bas, B4XPageRange.bas, B4XPageRating.bas, B4XPageScrollDemo.bas, B4XPageSheetModal.bas, B4XPageShineButton.bas, B4XPageSignaturePad.bas, B4XPageStat.bas, B4XPageSweetAlert.bas, B4XPageSweetAlertInputs.bas, B4XPageTagSphere.bas, B4XPageToast.bas, B4XPageTooltip.bas`
- **Web DaisyUI Mapping**: `.button` → `B4XDaisyButton`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim btn As B4XDaisyButton
btn.Initialize(Me, "btn")
btn.AddToParent(pnlHost, pad, y, maxW, 44dip)
btn.Variant = "primary"
btn.Style = "solid"
btn.Size = "md"
btn.Text = "Submit"
y = y + btn.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- To create an icon-only circular button, set `Text = ""`, `Circle = True`, and assign `IconName`.
- Setting `Loading = True` replaces the button text with an animated spinner automatically.
- Never set `Width`/`Height` directly via field assignment; use `AddToParent` or size tokens (`setWidth`/`setHeight`).
- Use the primary variant (`Variant = "primary"`) **once per screen** for the main CTA; use `"neutral"` or `"ghost"` for secondary buttons.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Text | Text | String | Button |  |
| Variant | Variant | String | default | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| Style | Style | String | solid | solid|soft|outline|dash|ghost|link |
| Size | Size | String | md | xs|sm|md|lg|xl |
| Rounded | Rounded | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| Padding | Padding | String |  |  |
| Margin | Margin | String |  |  |
| Width | Width | String | auto |  |
| Height | Height | String | auto |  |
| IconName | Icon Name | String |  |  |
| IconColor | Icon Color | Color | 0x00FFFFFF |  |
| Wide | Wide | Boolean | False |  |
| Block | Block | Boolean | False |  |
| Square | Square | Boolean | False |  |
| Circle | Circle | Boolean | False |  |
| Active | Active | Boolean | False |  |
| Disabled | Disabled | Boolean | False |  |
| Loading | Loading | Boolean | False |  |
| BackgroundColor | Background Color | Color | 0x00FFFFFF |  |
| TextColor | Text Color | Color | 0x00FFFFFF |  |
| BorderColor | Border Color | Color | 0x00FFFFFF |  |
| Visible | Visible | Boolean | True |  |
| TextAlignment | Text Alignment | String | CENTER | CENTER|LEFT|RIGHT |
| Glass | Glass | Boolean | False |  |
| ButtonSizeDip | Button Size (dip) | Int | 0 |  |
| IconSize | Icon Size (dip) | Int | 0 |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `GetEstimateContentWidth As Int`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `View As B4XView`
- `getActive As Boolean`
- `getBackgroundColor As Int`
- `getBlock As Boolean`
- `getBorderColor As Int`
- `getButtonSizeDip As Int`
- `getCircle As Boolean`
- `getClass As String`
- `getDisabled As Boolean`
- `getEnabled As Boolean`
- `getGlass As Boolean`
- `getHeight As String`
- `getIconColor As Int`
- `getIconName As String`
- `getIconSize As Int`
- `getIsFocused As Boolean`
- `getLeft As Int`
- `getLoading As Boolean`
- `getMargin As String`
- `getPadding As String`
- `getRounded As String`
- `getShadow As String`
- `getSize As String`
- `getSquare As Boolean`
- `getStyle As String`
- `getTag As Object`
- `getText As String`
- `getTextAlignment As String`
- `getTextColor As Int`
- `getTop As Int`
- `getVariant As String`
- `getView As B4XView`
- `getVisible As Boolean`
- `getWide As Boolean`
- `getWidth As String`
- `setActive(Value As Boolean)`
- `setBackgroundColor(Value As Int)`
- `setBlock(Value As Boolean)`
- `setBorderColor(Value As Int)`
- `setButtonSizeDip(Value As Int)`
- `setCircle(Value As Boolean)`
- `setClass(Value As String)`
- `setDisabled(Value As Boolean)`
- `setEnabled(Value As Boolean)`
- `setFocus(Value As Boolean)`
- `setGlass(Value As Boolean)`
- `setHeight(Value As String)`
- `setIconColor(Value As Int)`
- `setIconName(Value As String)`
- `setIconSize(Value As Int)`
- `setLeft(Value As Int)`
- `setLoading(Value As Boolean)`
- `setMargin(Value As String)`
- `setPadding(Value As String)`
- `setRounded(Value As String)`
- `setShadow(Value As String)`
- `setSize(Value As String)`
- `setSquare(Value As Boolean)`
- `setStyle(Value As String)`
- `setTag(Value As Object)`
- `setText(Value As String)`
- `setTextAlignment(Value As String)`
- `setTextColor(Value As Int)`
- `setTop(Value As Int)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWide(Value As Boolean)`
- `setWidth(Value As String)`

## 7. Public Fields
- `mBase As B4XView`
