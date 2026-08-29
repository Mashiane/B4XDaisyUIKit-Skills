# text (`B4XDaisyText`)

DaisyUI `Text` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyText`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyText.bas`
- **Verified Demo Source**: B4XPageAccordion.bas (lines 131–146), B4XPageAlert.bas (lines 135–246), B4XPageBreadcrumbs.bas (lines 174–189), B4XPageButton.bas (lines 629–629), B4XPageCanvasSpinner.bas (lines 168–259), B4XPageCard.bas (lines 279–346), B4XPageCarousel.bas (lines 429–429), B4XPageCheckbox.bas (lines 385–385), B4XPageCheckboxGroup.bas (lines 17–219), B4XPageCollapse.bas (lines 221–234), B4XPageCountdown.bas (lines 111–111), B4XPageDiff.bas (lines 96–96), B4XPageDock.bas (lines 437–455), B4XPageDrawer.bas (lines 105–133), B4XPageDrawerRail.bas (lines 162–400), B4XPageDrawerTree.bas (lines 110–168), B4XPageDropdown.bas (lines 365–377), B4XPageDualRange.bas (lines 26–231), B4XPageFieldset.bas (lines 62–62), B4XPageFileInput.bas (lines 173–175), B4XPageFilter.bas (lines 151–151), B4XPageHero.bas (lines 81–106), B4XPageHover3d.bas (lines 205–219), B4XPageIconButton.bas (lines 311–311), B4XPageInfoCard.bas (lines 212–212), B4XPageInput.bas (lines 420–445), B4XPageKbd.bas (lines 257–257), B4XPageLink.bas (lines 50–190), B4XPageList.bas (lines 186–461), B4XPageMediaPicker.bas (lines 19–150), B4XPageMenu.bas (lines 395–406), B4XPageMenuRuntime.bas (lines 354–376), B4XPageMenuRuntime2.bas (lines 312–334), B4XPageModal.bas (lines 418–456), B4XPageNavbar.bas (lines 133–133), B4XPageOverlay.bas (lines 20–351), B4XPagePagination.bas (lines 167–264), B4XPageProgress.bas (lines 48–48), B4XPageRadialProgress.bas (lines 43–200), B4XPageRadio.bas (lines 395–395), B4XPageRadioGroup.bas (lines 17–219), B4XPageRange.bas (lines 468–468), B4XPageRating.bas (lines 394–397), B4XPageSelect.bas (lines 393–393), B4XPageShineButton.bas (lines 35–35), B4XPageSignaturePad.bas (lines 35–35), B4XPageSkeleton.bas (lines 15–132), B4XPageStack.bas (lines 44–153), B4XPageStat.bas (lines 454–454), B4XPageSteps.bas (lines 425–442), B4XPageSweetAlert.bas (lines 66–66), B4XPageTab.bas (lines 404–416), B4XPageTagSphere.bas (lines 26–28), B4XPageText.bas (lines 51–316), B4XPageTextRotate.bas (lines 39–201), B4XPageTextarea.bas (lines 209–260), B4XPageTimeline.bas (lines 171–171), B4XPageToast.bas (lines 43–89), B4XPageToggle.bas (lines 371–371), B4XPageToggleGroup.bas (lines 17–219), B4XPageTooltip.bas (lines 49–238), B4XPageWindow.bas (lines 60–200)
- **Web DaisyUI Mapping**: `.text` → `B4XDaisyText`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``link`` | Member | `.SetComponent(...)` | Native configuration |
| `style` | ``link-hover`` | Property | `.Style = "outline"` (or soft, dash, ghost, etc.) | Visual fill and border style |
| `color` | ``link-neutral`, `link-primary`, `link-secondary`, `link-accent`, `link-success`, `link-info`, `link-warning`, `link-error`` | Property | `.Variant = "primary"` (or secondary, accent, etc.) | Available on all interactive and display views |

### Web DaisyUI HTML Syntax
```html
<a class="link {MODIFIER}">Click me</a>
```

## 2. Verified B4X Syntax & Recipe
```b4x
' -
    ' Section 1: H1 to H6 Heading Hierarchy (ion-text style)
    ' -
    y = AddSectionTitle("Heading Hierarchy (H1 - H6)", y, maxW)
    
    ' H1
    Dim h1 As B4XDaisyText
    h1.Initialize(Me, "")
    h1.AddToParent(pnlHost, PAGE_PAD, y, maxW, 0)
    h1.Text = "H1 Heading - text-5xl"
    h1.TextSize = "text-5xl"
    h1.FontBold = True
    y = y + h1.GetComputedHeight + 8dip

    ' H2
    Dim h2 As B4XDaisyText
    h2.Initialize(Me, "")
    h2.AddToParent(pnlHost, PAGE_PAD, y, maxW, 0)
    h2.Text = "H2 Heading - text-4xl"
    h2.TextSize = "text-4xl"
    h2.FontBold = True
    y = y + h2.GetComputedHeight + 8dip

    ' H3
    Dim h3 As B4XDaisyText
    h3.Initialize(Me, "")
    h3.AddToParent(pnlHost, PAGE_PAD, y, maxW, 0)
    h3.Text = "H3 Heading - text-3xl"
    h3.TextSize = "text-3xl"
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyText` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `UpdateTheme, MeasureTextWidth, MeasureTextHeight` (+ 61 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Width` | Width | `String` | `w-full` |  |
| `Height` | Height | `String` | `h-auto` |  |
| `Text` | Text | `String` | `` |  |
| `TextColor` | Text Color | `Color` | `0xFF000000` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `TextSize` | Text Size | `String` | `text-sm` |  |
| `Heading` | Heading | `String` | `none` | none|h1|h2|h3|h4|h5|h6 |
| `FontBold` | Font Bold | `Boolean` | `False` |  |
| `SingleLine` | Single Line | `Boolean` | `False` |  |
| `Ellipsize` | Ellipsize | `String` | `none` | none|start|middle|end|marquee |
| `HAlign` | Horizontal Align | `String` | `LEFT` | LEFT|CENTER|RIGHT |
| `VAlign` | Vertical Align | `String` | `CENTER` | TOP|CENTER|BOTTOM |
| `Padding` | Padding | `Int` | `0` |  |
| `Margin` | Margin | `String` | `` |  |
| `Rounded` | Rounded | `String` | `rounded-none` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `BorderWidth` | Border Width | `Int` | `0` |  |
| `BorderColor` | Border Color | `Color` | `0x00000000` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `IsSkeleton` | Is Skeleton | `Boolean` | `False` |  |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `AutoResize` | Auto Resize | `Boolean` | `True` |  |
| `Link` | Link | `Boolean` | `False` |  |
| `Underline` | Underline | `Boolean` | `False` |  |
| `Url` | URL | `String` | `` |  |
| `Clickable` | Clickable | `Boolean` | `True` |  |
| `UpperCase` | Upper Case | `Boolean` | `False` |  |
| `Italic` | Italic | `Boolean` | `False` |  |
| `Strikethrough` | Strikethrough | `Boolean` | `False` |  |
| `LowerCase` | Lower Case | `Boolean` | `False` |  |
| `Capitalize` | Capitalize | `Boolean` | `False` |  |
| `LetterSpacing` | Letter Spacing | `Float` | `0.0` |  |
| `ShadowRadius` | Shadow Radius | `Float` | `0.0` |  |
| `ShadowDx` | Shadow Dx | `Float` | `0.0` |  |
| `ShadowDy` | Shadow Dy | `Float` | `0.0` |  |
| `ShadowColor` | Shadow Color | `Color` | `0xFF000000` |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `GetPreferredHeight(iMaxContentWidth As Int) As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `MeasureTextHeight As Float`
- `MeasureTextWidth As Float`
- `RefreshText`
- `RemoveViewFromParent`
- `SendToBack`
- `SetColorAndBorder(iCBackgroundColor As Int, fCBorderW As Float, iCBorderC As Int, fCornerRadius As Float)`
- `SetLayoutAnimated(iDuration As Int, iLeftPos As Int, iTopPos As Int, iWidth As Int, iHeight As Int)`
- `SetTextAlignment(sVertical As String, sHorizontal As String)`
- `StartAnimation`
- `StopAnimation`
- `UpdateTheme`
- `View As B4XView`
- `getAutoResize As Boolean`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getBorderWidth As Float`
- `getCapitalize As Boolean`
- `getClickable As Boolean`
- `getColor As Int`
- `getEllipsize As String`
- `getEnabled As Boolean`
- `getFontBold As Boolean`
- `getHAlign As String`
- `getHeading As String`
- `getHeight As Float`
- `getIsSkeleton As Boolean`
- `getItalic As Boolean`
- `getLeft As Int`
- `getLetterSpacing As Float`
- `getLink As Boolean`
- `getLowerCase As Boolean`
- `getMargin As String`
- `getPadding As Float`
- `getRounded As String`
- `getRoundedBox As Boolean`
- `getShadowColor As Int`
- `getShadowDx As Float`
- `getShadowDy As Float`
- `getShadowRadius As Float`
- `getSingleLine As Boolean`
- `getStrikethrough As Boolean`
- `getTag As Object`
- `getText As String`
- `getTextColor As Int`
- `getTextSize As Object`
- `getTop As Int`
- `getUnderline As Boolean`
- `getUpperCase As Boolean`
- `getUrl As String`
- `getVAlign As String`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Float`
- `setAutoResize(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setBorderColor(iValue As Int)`
- `setBorderWidth(fValue As Float)`
- `setCapitalize(bValue As Boolean)`
- `setClickable(bValue As Boolean)`
- `setColor(iBackgroundColor As Int)`
- `setEllipsize(sValue As String)`
- `setEnabled(bValue As Boolean)`
- `setFontBold(bValue As Boolean)`
- `setHAlign(sValue As String)`
- `setHeading(sValue As String)`
- `setHeight(oValue As Object)`
- `setIsSkeleton(bValue As Boolean)`
- `setItalic(bValue As Boolean)`
- `setLeft(iValue As Int)`
- `setLetterSpacing(fValue As Float)`
- `setLink(bValue As Boolean)`
- `setLowerCase(bValue As Boolean)`
- `setMargin(sValue As String)`
- `setPadding(fValue As Float)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setShadowColor(iValue As Int)`
- `setShadowDx(fValue As Float)`
- `setShadowDy(fValue As Float)`
- `setShadowRadius(fValue As Float)`
- `setSingleLine(bValue As Boolean)`
- `setStrikethrough(bValue As Boolean)`
- `setTag(oValue As Object)`
- `setText(sValue As String)`
- `setTextColor(iValue As Int)`
- `setTextColorVariant(sVariantName As String)`
- `setTextSize(oValue As Object)`
- `setTop(iValue As Int)`
- `setUnderline(bValue As Boolean)`
- `setUpperCase(bValue As Boolean)`
- `setUrl(sValue As String)`
- `setVAlign(sValue As String)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(oValue As Object)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

