# button (`B4XDaisyButton`)

DaisyUI `Button` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyButton`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyButton.bas`
- **Verified Demo Source**: B4XPageActionSheet.bas (lines 19–25), B4XPageAura.bas (lines 160–160), B4XPageButton.bas (lines 58–615), B4XPageCanvasSpinner.bas (lines 29–39), B4XPageCard.bas (lines 293–293), B4XPageColorWheel.bas (lines 21–23), B4XPageDock.bas (lines 18–379), B4XPageDrawer.bas (lines 29–29), B4XPageDrawerRail.bas (lines 33–34), B4XPageDrawerTree.bas (lines 29–31), B4XPageDropdown.bas (lines 325–325), B4XPageEasing.bas (lines 25–207), B4XPageEnjoyHint.bas (lines 18–166), B4XPageFocus.bas (lines 17–46), B4XPageHero.bas (lines 116–116), B4XPageMenuRuntime.bas (lines 332–341), B4XPageMenuRuntime2.bas (lines 290–299), B4XPageModal.bas (lines 59–409), B4XPageNavScrollDock.bas (lines 233–246), B4XPageNavbar.bas (lines 188–714), B4XPageOverlay.bas (lines 224–340), B4XPagePicker.bas (lines 32–453), B4XPageProgress.bas (lines 119–185), B4XPageRadialProgress.bas (lines 226–244), B4XPageRange.bas (lines 311–311), B4XPageRating.bas (lines 383–383), B4XPageScrollDemo.bas (lines 48–93), B4XPageSheetModal.bas (lines 19–281), B4XPageShineButton.bas (lines 31–32), B4XPageSignaturePad.bas (lines 19–31), B4XPageStat.bas (lines 443–443), B4XPageSweetAlert.bas (lines 77–77), B4XPageSweetAlertInputs.bas (lines 31–43), B4XPageTagSphere.bas (lines 29–31), B4XPageToast.bas (lines 59–113), B4XPageTooltip.bas (lines 62–247)
- **Web DaisyUI Mapping**: `.button` → `B4XDaisyButton`

## 2. Verified B4X Syntax & Recipe
```b4x
'  */
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
| `Text` | Text | `String` | `Button` |  |
| `Variant` | Variant | `String` | `default` | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| `Style` | Style | `String` | `solid` | solid|soft|outline|dash|ghost|link |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `Rounded` | Rounded | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Padding` | Padding | `String` | `` |  |
| `Margin` | Margin | `String` | `` |  |
| `Width` | Width | `String` | `auto` |  |
| `Height` | Height | `String` | `auto` |  |
| `IconName` | Icon Name | `String` | `` |  |
| `IconColor` | Icon Color | `Color` | `0x00FFFFFF` |  |
| `Wide` | Wide | `Boolean` | `False` |  |
| `Block` | Block | `Boolean` | `False` |  |
| `Square` | Square | `Boolean` | `False` |  |
| `Circle` | Circle | `Boolean` | `False` |  |
| `Active` | Active | `Boolean` | `False` |  |
| `Disabled` | Disabled | `Boolean` | `False` |  |
| `Loading` | Loading | `Boolean` | `False` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00FFFFFF` |  |
| `TextColor` | Text Color | `Color` | `0x00FFFFFF` |  |
| `BorderColor` | Border Color | `Color` | `0x00FFFFFF` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `TextAlignment` | Text Alignment | `String` | `CENTER` | CENTER|LEFT|RIGHT |
| `Glass` | Glass | `Boolean` | `False` |  |
| `ButtonSizeDip` | Button Size (dip) | `Int` | `0` |  |
| `IconSize` | Icon Size (dip) | `Int` | `0` |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `Release`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `getGlass As Boolean`
- `getLeft As Int`
- `getTop As Int`
- `setGlass(bValue As Boolean)`
- `setLeft(iValue As Int)`
- `setTop(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

