# text (`B4XDaisyText`)

Versatile text label with heading levels, color variants, typography utilities, and skeleton loading state.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyText`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyText.bas`
- **Verified Demos**: `B4XPageAccordion.bas, B4XPageAlert.bas, B4XPageBreadcrumbs.bas, B4XPageButton.bas, B4XPageCanvasSpinner.bas, B4XPageCard.bas, B4XPageCarousel.bas, B4XPageCheckbox.bas, B4XPageCheckboxGroup.bas, B4XPageCollapse.bas, B4XPageCountdown.bas, B4XPageDiff.bas, B4XPageDock.bas, B4XPageDropdown.bas, B4XPageFieldset.bas, B4XPageFileInput.bas, B4XPageFilter.bas, B4XPageHero.bas, B4XPageHover3d.bas, B4XPageIconButton.bas, B4XPageInfoCard.bas, B4XPageInput.bas, B4XPageKbd.bas, B4XPageLabel.bas, B4XPageLink.bas, B4XPageList.bas, B4XPageMediaPicker.bas, B4XPageMenu.bas, B4XPageMenuRuntime.bas, B4XPageMenuRuntime2.bas, B4XPageModal.bas, B4XPageNavbar.bas, B4XPageOverlay.bas, B4XPagePagination.bas, B4XPageProgress.bas, B4XPageRadialProgress.bas, B4XPageRadio.bas, B4XPageRadioGroup.bas, B4XPageRange.bas, B4XPageRating.bas, B4XPageSelect.bas, B4XPageSignaturePad.bas, B4XPageSkeleton.bas, B4XPageStack.bas, B4XPageStat.bas, B4XPageSteps.bas, B4XPageSweetAlert.bas, B4XPageTab.bas, B4XPageTagSphere.bas, B4XPageText.bas, B4XPageTextarea.bas, B4XPageTextRotate.bas, B4XPageTimeline.bas, B4XPageToast.bas, B4XPageToggle.bas, B4XPageToggleGroup.bas, B4XPageTooltip.bas, B4XPageWindow.bas`
- **Web DaisyUI Mapping**: `.text` → `B4XDaisyText`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim txt As B4XDaisyText
txt.Initialize(Me, "txt")
txt.AddToParent(pnlHost, pad, y, maxW, 36dip)
txt.Text = "Welcome back!"
txt.Heading = "h2"
txt.Variant = "primary"
txt.FontBold = True
txt.TextSize = "text-xl"
txt.HAlign = "LEFT"
y = y + txt.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Primary typography component for headings, body text, labels, and captions.
- Set heading level via `HeadingType` (`"h1"`, `"h2"`, `"h3"`, `"h4"`, `"h5"`, `"h6"`, `"p"`, `"caption"`).
- Set text alignment via `TextAlignment` (`"left"`, `"center"`, `"right"`).
- Set `Bold = True` for titles and `Wrap = True` for multi-line paragraphs.
- Use semantic color variants (`"primary"`, `"neutral"`, `"error"`) instead of hardcoded hex values.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Width | Width | String | w-full |  |
| Height | Height | String | h-auto |  |
| Text | Text | String |  |  |
| TextColor | Text Color | Color | 0xFF000000 |  |
| BackgroundColor | Background Color | Color | 0x00000000 |  |
| TextSize | Text Size | String | text-sm |  |
| Heading | Heading | String | none | none|h1|h2|h3|h4|h5|h6 |
| FontBold | Font Bold | Boolean | False |  |
| SingleLine | Single Line | Boolean | False |  |
| Ellipsize | Ellipsize | String | none | none|start|middle|end|marquee |
| HAlign | Horizontal Align | String | LEFT | LEFT|CENTER|RIGHT |
| VAlign | Vertical Align | String | CENTER | TOP|CENTER|BOTTOM |
| Padding | Padding | Int | 0 |  |
| Margin | Margin | String |  |  |
| RoundedBox | Rounded Box | Boolean | False |  |
| BorderWidth | Border Width | Int | 0 |  |
| BorderColor | Border Color | Color | 0x00000000 |  |
| Visible | Visible | Boolean | True |  |
| Enabled | Enabled | Boolean | True |  |
| IsSkeleton | Is Skeleton | Boolean | False |  |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| AutoResize | Auto Resize | Boolean | True |  |
| Link | Link | Boolean | False |  |
| Underline | Underline | Boolean | False |  |
| Url | URL | String |  |  |
| Clickable | Clickable | Boolean | True |  |
| UpperCase | Upper Case | Boolean | False |  |
| Italic | Italic | Boolean | False |  |
| Strikethrough | Strikethrough | Boolean | False |  |
| LowerCase | Lower Case | Boolean | False |  |
| Capitalize | Capitalize | Boolean | False |  |
| LetterSpacing | Letter Spacing | Float | 0.0 |  |
| ShadowRadius | Shadow Radius | Float | 0.0 |  |
| ShadowDx | Shadow Dx | Float | 0.0 |  |
| ShadowDy | Shadow Dy | Float | 0.0 |  |
| ShadowColor | Shadow Color | Color | 0xFF000000 |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `GetPreferredHeight(MaxContentWidth As Int) As Int`
- `Initialize(Callback As Object, EventName As String)`
- `IsReady As Boolean`
- `MeasureTextHeight As Float`
- `MeasureTextWidth As Float`
- `RefreshText`
- `RemoveViewFromParent`
- `SendToBack`
- `SetColorAndBorder(CBackgroundColor As Int, CBorderW As Float, CBorderC As Int, CornerRadius As Float)`
- `SetLayoutAnimated(Duration As Int, LeftPos As Int, TopPos As Int, Width As Int, Height As Int)`
- `SetTextAlignment(Vertical As String, Horizontal As String)`
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
- `setAutoResize(Value As Boolean)`
- `setBackgroundColor(Value As Int)`
- `setBorderColor(Value As Int)`
- `setBorderWidth(Value As Float)`
- `setCapitalize(Value As Boolean)`
- `setClickable(Value As Boolean)`
- `setColor(BackgroundColor As Int)`
- `setEllipsize(Value As String)`
- `setEnabled(Value As Boolean)`
- `setFontBold(Value As Boolean)`
- `setHAlign(Value As String)`
- `setHeading(Value As String)`
- `setHeight(Value As Object)`
- `setIsSkeleton(Value As Boolean)`
- `setItalic(Value As Boolean)`
- `setLeft(Value As Int)`
- `setLetterSpacing(Value As Float)`
- `setLink(Value As Boolean)`
- `setLowerCase(Value As Boolean)`
- `setMargin(Value As String)`
- `setPadding(Value As Float)`
- `setRoundedBox(Value As Boolean)`
- `setShadowColor(Value As Int)`
- `setShadowDx(Value As Float)`
- `setShadowDy(Value As Float)`
- `setShadowRadius(Value As Float)`
- `setSingleLine(Value As Boolean)`
- `setStrikethrough(Value As Boolean)`
- `setTag(Value As Object)`
- `setText(Value As String)`
- `setTextColor(Value As Int)`
- `setTextColorVariant(VariantName As String)`
- `setTextSize(Value As Object)`
- `setTop(Value As Int)`
- `setUnderline(Value As Boolean)`
- `setUpperCase(Value As Boolean)`
- `setUrl(Value As String)`
- `setVAlign(Value As String)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Object)`

## 7. Public Fields
- `mBase As B4XView`
