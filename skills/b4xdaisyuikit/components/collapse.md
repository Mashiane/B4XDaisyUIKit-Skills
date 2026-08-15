# collapse (`B4XDaisyCollapse`)

Expandable/collapsible content disclosure panel with arrow indicator and smooth animations.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyCollapse`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyCollapse.bas`
- **Verified Demos**: `B4XPageAccordion.bas, B4XPageCollapse.bas`
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
| Open | Open | Boolean | False |  |
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `CollapseContent As B4XDaisyCollapseContent`
- `CollapseTitle As B4XDaisyCollapseTitle`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `RefreshContent`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Toggle`
- `UpdateTheme`
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
- `setBorderColor(Value As String)`
- `setBorderStyle(Value As String)`
- `setBorderWidth(Value As String)`
- `setGroupName(Value As String)`
- `setHeight(Value As Int)`
- `setIcon(Value As String)`
- `setIconPosition(Value As String)`
- `setLeft(Value As Int)`
- `setOpen(Value As Boolean)`
- `setRounded(Value As String)`
- `setShadow(Value As String)`
- `setTag(Value As Object)`
- `setTitleBackgroundColor(Value As Int)`
- `setTitleColor(Value As Int)`
- `setTitleIconColor(Value As Int)`
- `setTitleIconName(Value As String)`
- `setTitleSize(Value As String)`
- `setTitleText(Value As String)`
- `setTitleTextColor(Value As Int)`
- `setTitleVariant(Value As String)`
- `setTop(Value As Int)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As String)`

## 7. Public Fields
- `Content As B4XDaisyCollapseContent`
- `Title As B4XDaisyCollapseTitle`
- `mBase As B4XView`

## 8. Compound Sub-Components
- **`B4XDaisyCollapseTitle`**: Expandable header trigger container displaying title text and arrow/plus icons.
- **`B4XDaisyCollapseContent`**: Expandable inner content panel accessed via `clp.getContentView` where child controls are placed.
