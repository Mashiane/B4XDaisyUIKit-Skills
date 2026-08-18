# filter (`B4XDaisyFilter`)

Horizontal or vertical row of filter chip buttons for single or multi-select category filtering.

## 1. Overview
- **Class**: `B4XDaisyFilter`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyFilter.bas`
- **Web DaisyUI Mapping**: `.filter` → `B4XDaisyFilter`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim flt As B4XDaisyFilter
flt.Initialize(Me, "flt")
flt.AddToParent(pnlHost, pad, y, maxW, 48dip)
flt.Options = "all:All|vue:Vue|react:React|svelte:Svelte"
flt.Variant = "primary"
flt.FilterStyle = "soft"
flt.ActiveKey = "all"
flt.MultiSelect = False
y = y + flt.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Horizontal filter pill bar for data filtering and category switching.
- Add filter chips using `AddFilterOption(Id, Label, Count, Icon)`.
- Retrieve or set active filter via `SelectedId`.
- Handle filter changes in the `FilterChange (SelectedId As String)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| Options | Options | String | svelte:Svelte |  |
| ActiveKey | Active Key | String |  |  |
| Rounded | Rounded | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| FilterStyle | Filter Style | String | solid | solid|soft|outline|dash|ghost |
| Size | Size | String | md | xs|sm|md|lg|xl |
| ResetPosition | Reset Position | String | left | left|right |
| ResetText | Reset Text | String | × |  |
| CloseType | Close Type | String | icon | icon|text |
| CloseIcon | Close Icon | String | close.svg |  |
| MultiSelect | MultiSelect (Checkboxes) | Boolean | False |  |
| Orientation | Orientation | String | horizontal | horizontal|vertical |
| Duration | Duration | Int | 300 |  |
| Width | Width | String | w-full |  |
| Height | Height | String | h-auto |  |
| Padding | Padding | String |  |  |
| Margin | Margin | String |  |  |

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
- `getActiveKey As String`
- `getChecked As String`
- `getCheckedKeys As List`
- `getCloseIcon As String`
- `getCloseType As String`
- `GetComputedHeight As Int`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `isItemChecked(sKey As String) As Boolean`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
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
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
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
- `UpdateTheme`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
