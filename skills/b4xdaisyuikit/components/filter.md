# filter (`B4XDaisyFilter`)

DaisyUI `Filter` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyFilter`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyFilter.bas`
- **Verified Demo Source**: B4XPageFilter.bas (lines 63–134)
- **Web DaisyUI Mapping**: `.filter` → `B4XDaisyFilter`

## 2. Verified B4X Syntax & Recipe
```b4x
' #region Example 1: Filter with single selection and reset button
    y = AddSectionTitle("Filter with single selection and reset button", y, maxW)
    Dim c1 As B4XDaisyFilter
    c1.Initialize(Me, "filter1")
    c1.AddToParent(pnlHost, PAGE_PAD, y, maxW, 40dip)
    c1.Options = "svelte:Svelte, vue:Vue, react:React"
    c1.CloseType = "icon"
    c1.CloseIcon = "close.svg"
    c1.ResetPosition = "left"
    c1.Rounded = "theme"
    c1.Variant = "success"
    y = y + c1.GetComputedHeight + 20dip
    ' #endregion

    ' #region Example 2: Filter with custom reset text and outline style
    y = AddSectionTitle("Filter with custom reset text and outline style", y, maxW)
    Dim c2 As B4XDaisyFilter
    c2.Initialize(Me, "filter2")
    c2.AddToParent(pnlHost, PAGE_PAD, y, maxW, 40dip)
    c2.Options = "sveltekit:Sveltekit, nuxt:Nuxt, nextjs:Next.js"
    c2.CloseType = "text"
    c2.ResetText = "All"
    c2.ResetPosition = "left"
    c2.Rounded = "rounded-full" ' chip-like shape
    c2.Variant = "primary"
    c2.FilterStyle = "outline"
    y = y + c2.GetComputedHeight + 20dip
    ' #endregion

    ' #region Example 3: Filter with multi-select (checkboxes) and reset button
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyFilter` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `setEnabled, getEnabled, getVisible` (+ 40 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Options` | Options | `String` | `svelte:Svelte` |  |
| `ActiveKey` | Active Key | `String` | `` |  |
| `Rounded` | Rounded | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `FilterStyle` | Filter Style | `String` | `solid` | solid|soft|outline|dash|ghost |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `ResetPosition` | Reset Position | `String` | `left` | left|right |
| `ResetText` | Reset Text | `String` | `x` |  |
| `CloseType` | Close Type | `String` | `icon` | icon|text |
| `CloseIcon` | Close Icon | `String` | `close.svg` |  |
| `MultiSelect` | MultiSelect (Checkboxes) | `Boolean` | `False` |  |
| `Orientation` | Orientation | `String` | `horizontal` | horizontal|vertical |
| `Duration` | Duration | `Int` | `300` |  |
| `Width` | Width | `String` | `w-full` |  |
| `Height` | Height | `String` | `h-auto` |  |
| `Padding` | Padding | `String` | `` |  |
| `Margin` | Margin | `String` | `` |  |

## 5. Declared Events
- `ResetClick`
- `Changed (Keys As List)`
- `ItemChanged (Id As String, Text As String, Checked As Boolean)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `UpdateTheme`
- `View As B4XView`
- `getActiveKey As String`
- `getChecked As String`
- `getCheckedKeys As List`
- `getCloseIcon As String`
- `getCloseType As String`
- `getDuration As Int`
- `getEnabled As Boolean`
- `getFilterStyle As String`
- `getHeight As String`
- `getItems As Map`
- `getLeft As Int`
- `getMargin As String`
- `getMultiSelect As Boolean`
- `getOptions As String`
- `getOptionsList As List`
- `getOptionsMap As Map`
- `getOrientation As String`
- `getPadding As String`
- `getResetPosition As String`
- `getResetText As String`
- `getRounded As String`
- `getSelectedIds As List`
- `getSize As String`
- `getTag As Object`
- `getTop As Int`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As String`
- `isItemChecked(sKey As String) As Boolean`
- `setActiveKey(sValue As String)`
- `setChecked(sCheckedKeys As String)`
- `setCloseIcon(sValue As String)`
- `setCloseType(sValue As String)`
- `setDuration(iValue As Int)`
- `setEnabled(bValue As Boolean)`
- `setFilterStyle(sValue As String)`
- `setHeight(sValue As String)`
- `setItemChecked(sKey As String, bChecked As Boolean)`
- `setItems(mValue As Map)`
- `setLeft(iValue As Int)`
- `setMargin(sValue As String)`
- `setMultiSelect(bValue As Boolean)`
- `setOptions(sValue As String)`
- `setOptionsList(lstValue As List)`
- `setOptionsMap(mValue As Map)`
- `setOrientation(sValue As String)`
- `setPadding(sValue As String)`
- `setResetPosition(sValue As String)`
- `setResetText(sValue As String)`
- `setRounded(sValue As String)`
- `setSelectedIds(lstIds As List)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(sValue As String)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

