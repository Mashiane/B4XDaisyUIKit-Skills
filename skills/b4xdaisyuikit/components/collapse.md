# collapse (`B4XDaisyCollapse`)

Expandable/collapsible content disclosure panel with arrow indicator and smooth animations.

## 1. Overview
- **Class**: `B4XDaisyCollapse`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyCollapse.bas`
- **Web DaisyUI Mapping**: `.collapse` → `B4XDaisyCollapse`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim col As B4XDaisyCollapse
col.Initialize(Me, "col")
col.AddToParent(pnlHost, pad, y, maxW, 48dip)
col.TitleText = "Click to reveal details"
col.Variant = "neutral"
y = y + col.GetComputedHeight + gap
```

## 3. Native Composition Rules & Gotchas
- Expandable content disclosure panel with smooth accordion animation.
- Mount inner content into `clp.getContentView` after calling `AddToParent`.
- Use `Open = True` to expand the panel by default.
- When expanding inside custom scroll flows, use `B4XDaisyVariants.ShiftSiblingsBelow` to reflow content.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Opened | Opened | Boolean | False |  |
| Icon | Icon | String | none | none|arrow|plus |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| Rounded | Rounded | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| Visible | Visible | Boolean | True |  |
| TitleText | Title Text | String | Click to expand |  |
| TitleVariant | Title Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| TitleSize | Title Size | String | text-sm | text-xs|text-sm|text-base|text-lg|text-xl|text-2xl |
| TitleIconName | Title Icon | String |  |  |
| TitleColor | Title Color | Color | 0x00000000 |  |
| TitleIconColor | Title Icon Color | Color | 0x00000000 |  |
| Width | Width | String | w-full |  |
| BorderWidth | Border Width | String | border |  |
| BorderStyle | Border Style | String | solid | solid|dashed|dotted |
| BorderColor | Border Color | String | border-base-300 |  |
| IconPosition | Icon Position | String | right | left|right |
| GroupName | Group Name | String |  |  |

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
- `getBorderColor As String`
- `getBorderStyle As String`
- `getBorderWidth As String`
- `GetComputedHeight As Int`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `RefreshContent`
- `RemoveViewFromParent`
- `SendToBack`
- `setBorderColor(sValue As String)`
- `setBorderStyle(sValue As String)`
- `setBorderWidth(sValue As String)`
- `setGroupName(sValue As String)`
- `setHeight(iValue As Int)`
- `setIcon(sValue As String)`
- `setIconPosition(sValue As String)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
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
- `Toggle`
- `UpdateTheme`
- `View As B4XView`


## 7. Public Fields
- `Content As B4XDaisyCollapseContent`
- `Title As B4XDaisyCollapseTitle`
- `mBase As B4XView`

## 8. Compound Sub-Components
- **`B4XDaisyCollapseTitle`**: Expandable header trigger container displaying title text and arrow/plus icons.
- **`B4XDaisyCollapseContent`**: Expandable inner content panel accessed via `clp.getContentView` where child controls are placed.
