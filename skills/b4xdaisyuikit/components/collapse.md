# collapse (`B4XDaisyCollapse`)

DaisyUI `Collapse` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyCollapse`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyCollapse.bas`
- **Verified Demo Source**: B4XPageAccordion.bas (lines 53–145), B4XPageCollapse.bas (lines 45–220)
- **Web DaisyUI Mapping**: `.collapse` → `B4XDaisyCollapse`

## 2. Verified B4X Syntax & Recipe
```b4x
' #region Example 1: Basic collapse (tap to expand)
    y = AddSectionTitle("Basic Collapse", y, maxW)
    Dim c1 As B4XDaisyCollapse
    c1.Initialize(Me, "collapse1")
    c1.AddToParent(pnlHost, PAGE_PAD, y, maxW, titleH)
    c1.TitleText = "Click to open!"
    AddBodyLabel(c1, "Hello! I am the collapse body.", maxW)
    y = y + titleH + gap
    ' #endregion

    ' #region Example 2: With arrow icon
    y = AddSectionTitle("With Arrow Icon", y, maxW)
    Dim c2 As B4XDaisyCollapse
    c2.Initialize(Me, "collapse2")
    c2.AddToParent(pnlHost, PAGE_PAD, y, maxW, titleH)
    c2.Icon = "arrow"
    c2.TitleText = "Click to open!"
    AddBodyLabel(c2, "Hello! I am the collapse body.", maxW)
    y = y + titleH + gap
    ' #endregion

    ' #region Example 3: With plus/minus icon
    y = AddSectionTitle("With Plus/Minus Icon", y, maxW)
    Dim c3 As B4XDaisyCollapse
    c3.Initialize(Me, "collapse3")
    c3.AddToParent(pnlHost, PAGE_PAD, y, maxW, titleH)
    c3.Icon = "plus"
    c3.TitleText = "Click to open!"
    AddBodyLabel(c3, "Hello! I am the collapse body.", maxW)
    y = y + titleH + gap
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyCollapse` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `UpdateTheme, setOpened, setOpen` (+ 36 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Opened` | Opened | `Boolean` | `False` |  |
| `Icon` | Icon | `String` | `none` | none|arrow|plus |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Rounded` | Rounded | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl|2xl |
| `Visible` | Visible | `Boolean` | `True` |  |
| `TitleText` | Title Text | `String` | `Click to expand` |  |
| `TitleVariant` | Title Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `TitleSize` | Title Size | `String` | `text-sm` | text-xs|text-sm|text-base|text-lg|text-xl|text-2xl |
| `TitleIconName` | Title Icon | `String` | `` |  |
| `TitleColor` | Title Color | `Color` | `0x00000000` |  |
| `TitleIconColor` | Title Icon Color | `Color` | `0x00000000` |  |
| `Width` | Width | `String` | `w-full` |  |
| `BorderWidth` | Border Width | `String` | `border` |  |
| `BorderStyle` | Border Style | `String` | `solid` | solid|dashed|dotted |
| `BorderColor` | Border Color | `String` | `border-base-300` |  |
| `IconPosition` | Icon Position | `String` | `right` | left|right |
| `GroupName` | Group Name | `String` | `` |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `StateChanged (Open As Boolean)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CollapseContent As B4XDaisyCollapseContent`
- `CollapseTitle As B4XDaisyCollapseTitle`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `RefreshContent`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `Toggle`
- `UpdateTheme`
- `View As B4XView`
- `getBorderColor As String`
- `getBorderStyle As String`
- `getBorderWidth As String`
- `getContentView As B4XView`
- `getGroupName As String`
- `getHeight As Int`
- `getIcon As String`
- `getIconPosition As String`
- `getLeft As Int`
- `getOpen As Boolean`
- `getOpened As Boolean`
- `getRounded As String`
- `getShadow As String`
- `getTag As Object`
- `getTitleBackgroundColor As Int`
- `getTitleColor As Int`
- `getTitleIconColor As Int`
- `getTitleIconName As String`
- `getTitleSize As String`
- `getTitleText As String`
- `getTitleTextColor As Int`
- `getTitleVariant As String`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As String`
- `setBorderColor(sValue As String)`
- `setBorderStyle(sValue As String)`
- `setBorderWidth(sValue As String)`
- `setGroupName(sValue As String)`
- `setHeight(iValue As Int)`
- `setIcon(sValue As String)`
- `setIconPosition(sValue As String)`
- `setLeft(iValue As Int)`
- `setOpen(bValue As Boolean)`
- `setOpened(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setShadow(sValue As String)`
- `setTag(oValue As Object)`
- `setTitleBackgroundColor(iValue As Int)`
- `setTitleColor(iValue As Int)`
- `setTitleIconColor(iValue As Int)`
- `setTitleIconName(sValue As String)`
- `setTitleSize(sValue As String)`
- `setTitleText(sValue As String)`
- `setTitleTextColor(iValue As Int)`
- `setTitleVariant(sValue As String)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(sValue As String)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

