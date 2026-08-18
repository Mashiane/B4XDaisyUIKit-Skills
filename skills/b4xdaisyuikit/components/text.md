# text (`B4XDaisyText`)

Versatile text label with heading levels, color variants, typography utilities, and skeleton loading state.

## 1. Overview
- **Class**: `B4XDaisyText`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyText.bas`
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
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getAutoResize As Boolean`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getBorderWidth As Float`
- `getCapitalize As Boolean`
- `getClickable As Boolean`
- `getColor As Int`
- `GetComputedHeight As Int`
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
- `GetPreferredHeight(iMaxContentWidth As Int) As Int`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `IsReady As Boolean`
- `MeasureTextHeight As Float`
- `MeasureTextWidth As Float`
- `RefreshText`
- `RemoveViewFromParent`
- `SendToBack`
- `setAutoResize(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setBorderColor(iValue As Int)`
- `setBorderWidth(fValue As Float)`
- `setCapitalize(bValue As Boolean)`
- `setClickable(bValue As Boolean)`
- `setColor(iBackgroundColor As Int)`
- `SetColorAndBorder(iCBackgroundColor As Int, fCBorderW As Float, iCBorderC As Int, fCornerRadius As Float)`
- `setEllipsize(sValue As String)`
- `setEnabled(bValue As Boolean)`
- `setFontBold(bValue As Boolean)`
- `setHAlign(sValue As String)`
- `setHeading(sValue As String)`
- `setHeight(oValue As Object)`
- `setIsSkeleton(bValue As Boolean)`
- `setItalic(bValue As Boolean)`
- `SetLayoutAnimated(iDuration As Int, iLeftPos As Int, iTopPos As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setLetterSpacing(fValue As Float)`
- `setLink(bValue As Boolean)`
- `setLowerCase(bValue As Boolean)`
- `setMargin(sValue As String)`
- `setPadding(fValue As Float)`
- `setRoundedBox(bValue As Boolean)`
- `setShadowColor(iValue As Int)`
- `setShadowDx(fValue As Float)`
- `setShadowDy(fValue As Float)`
- `setShadowRadius(fValue As Float)`
- `setSingleLine(bValue As Boolean)`
- `setStrikethrough(bValue As Boolean)`
- `setTag(oValue As Object)`
- `setText(sValue As String)`
- `SetTextAlignment(sVertical As String, sHorizontal As String)`
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
- `StartAnimation`
- `StopAnimation`
- `UpdateTheme`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
