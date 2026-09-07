# text (`B4XDaisyText`)

DaisyUI `Text` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyText`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyText.bas`
- **Verified Demo Source**: B4XPageAccordion.bas, B4XPageAlert.bas, B4XPageBreadcrumbs.bas, B4XPageButton.bas, B4XPageCanvasSpinner.bas, B4XPageCard.bas, B4XPageCarousel.bas, B4XPageCheckbox.bas, B4XPageCheckboxGroup.bas, B4XPageCollapse.bas, B4XPageCountdown.bas, B4XPageDiff.bas, B4XPageDock.bas, B4XPageDrawer.bas, B4XPageDrawerRail.bas, B4XPageDrawerTree.bas, B4XPageDropdown.bas, B4XPageDualRange.bas, B4XPageFieldset.bas, B4XPageFileInput.bas, B4XPageFilter.bas, B4XPageHero.bas, B4XPageHover3d.bas, B4XPageIconButton.bas, B4XPageInfoCard.bas, B4XPageInput.bas, B4XPageKbd.bas, B4XPageLink.bas, B4XPageList.bas, B4XPageMediaPicker.bas, B4XPageMenu.bas, B4XPageMenuRuntime.bas, B4XPageMenuRuntime2.bas, B4XPageModal.bas, B4XPageNavbar.bas, B4XPageOverlay.bas, B4XPagePagination.bas, B4XPageProgress.bas, B4XPageRadialProgress.bas, B4XPageRadio.bas, B4XPageRadioGroup.bas, B4XPageRange.bas, B4XPageRating.bas, B4XPageSelect.bas, B4XPageShineButton.bas, B4XPageSignaturePad.bas, B4XPageSkeleton.bas, B4XPageStack.bas, B4XPageStat.bas, B4XPageSteps.bas, B4XPageSweetAlert.bas, B4XPageTab.bas, B4XPageTagSphere.bas, B4XPageText.bas, B4XPageTextRotate.bas, B4XPageTextarea.bas, B4XPageTimeline.bas, B4XPageToast.bas, B4XPageToggle.bas, B4XPageToggleGroup.bas, B4XPageTooltip.bas, B4XPageWindow.bas
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
| `Width` | Width | `String` | w-full |  |
| `Height` | Height | `String` | h-auto |  |
| `Text` | Text | `String` |  |  |
| `TextColor` | Text Color | `Color` | 0xFF000000 |  |
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |
| `TextSize` | Text Size | `String` | text-sm |  |
| `Heading` | Heading | `String` | none | none|h1|h2|h3|h4|h5|h6 |
| `FontBold` | Font Bold | `Boolean` | False |  |
| `SingleLine` | Single Line | `Boolean` | False |  |
| `Ellipsize` | Ellipsize | `String` | none | none|start|middle|end|marquee |
| `HAlign` | Horizontal Align | `String` | LEFT | LEFT|CENTER|RIGHT |
| `VAlign` | Vertical Align | `String` | CENTER | TOP|CENTER|BOTTOM |
| `Padding` | Padding | `Int` | 0 |  |
| `Margin` | Margin | `String` |  |  |
| `Rounded` | Rounded | `String` | rounded-none | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `BorderWidth` | Border Width | `Int` | 0 |  |
| `BorderColor` | Border Color | `Color` | 0x00000000 |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Enabled` | Enabled | `Boolean` | True |  |
| `IsSkeleton` | Is Skeleton | `Boolean` | False |  |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `AutoResize` | Auto Resize | `Boolean` | True |  |
| `Link` | Link | `Boolean` | False |  |
| `Underline` | Underline | `Boolean` | False |  |
| `Url` | URL | `String` |  |  |
| `Clickable` | Clickable | `Boolean` | True |  |
| `UpperCase` | Upper Case | `Boolean` | False |  |
| `Italic` | Italic | `Boolean` | False |  |
| `Strikethrough` | Strikethrough | `Boolean` | False |  |
| `LowerCase` | Lower Case | `Boolean` | False |  |
| `Capitalize` | Capitalize | `Boolean` | False |  |
| `LetterSpacing` | Letter Spacing | `Float` | 0.0 |  |
| `ShadowRadius` | Shadow Radius | `Float` | 0.0 |  |
| `ShadowDx` | Shadow Dx | `Float` | 0.0 |  |
| `ShadowDy` | Shadow Dy | `Float` | 0.0 |  |
| `ShadowColor` | Shadow Color | `Color` | 0xFF000000 |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `UpdateTheme`
- `RefreshText`
- `MeasureTextWidth As Float`
- `MeasureTextHeight As Float`
- `GetPreferredHeight(MaxContentWidth As Int) As Int`
- `GetComputedHeight As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `IsReady As Boolean`
- `setText(Value As String)`
- `getText As String`
- `setWidth(Value As Object)`
- `getWidth As Float`
- `setHeight(Value As Object)`
- `getHeight As Float`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColorVariant(VariantName As String)`
- `setVariant(Value As String)`
- `getVariant As String`
- `setTextSize(Value As Object)`
- `setHeading(Value As String)`
- `getHeading As String`
- `getTextSize As Object`
- `setFontBold(Value As Boolean)`
- `getFontBold As Boolean`
- `setSingleLine(Value As Boolean)`
- `getSingleLine As Boolean`
- `setEllipsize(Value As String)`
- `getEllipsize As String`
- `setHAlign(Value As String)`
- `getHAlign As String`
- `setVAlign(Value As String)`
- `getVAlign As String`
- `setPadding(Value As Float)`
- `getPadding As Float`
- `setMargin(Value As String)`
- `getMargin As String`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setBorderWidth(Value As Float)`
- `getBorderWidth As Float`
- `setBorderColor(Value As Int)`
- `getBorderColor As Int`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setLink(Value As Boolean)`
- `getLink As Boolean`
- `setUnderline(Value As Boolean)`
- `getUnderline As Boolean`
- `setUrl(Value As String)`
- `getUrl As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `StartAnimation`
- `StopAnimation`
- `setIsSkeleton(Value As Boolean)`
- `getIsSkeleton As Boolean`
- `setAutoResize(Value As Boolean)`
- `getAutoResize As Boolean`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setColor(BackgroundColor As Int)`
- `getColor As Int`
- `SetTextAlignment(Vertical As String, Horizontal As String)`
- `SetLayoutAnimated(Duration As Int, LeftPos As Int, TopPos As Int, Width As Int, Height As Int)`
- `SetColorAndBorder(CBackgroundColor As Int, CBorderW As Float, CBorderC As Int, CornerRadius As Float)`
- `setClickable(Value As Boolean)`
- `getClickable As Boolean`
- `setUpperCase(Value As Boolean)`
- `getUpperCase As Boolean`
- `setItalic(Value As Boolean)`
- `getItalic As Boolean`
- `setStrikethrough(Value As Boolean)`
- `getStrikethrough As Boolean`
- `setLowerCase(Value As Boolean)`
- `getLowerCase As Boolean`
- `setCapitalize(Value As Boolean)`
- `getCapitalize As Boolean`
- `setLetterSpacing(Value As Float)`
- `getLetterSpacing As Float`
- `setShadowRadius(Value As Float)`
- `getShadowRadius As Float`
- `setShadowDx(Value As Float)`
- `getShadowDx As Float`
- `setShadowDy(Value As Float)`
- `getShadowDy As Float`
- `setShadowColor(Value As Int)`
- `getShadowColor As Int`
- `RemoveViewFromParent`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

