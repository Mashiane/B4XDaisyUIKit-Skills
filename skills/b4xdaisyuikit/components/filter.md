# filter (`B4XDaisyFilter`)

Horizontal or vertical row of filter chip buttons for single or multi-select category filtering.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyFilter`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyFilter.bas`
- **Verified Demos**: `B4XPageFilter.bas`
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `Refresh`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `UpdateTheme`
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
- `isItemChecked(Key As String) As Boolean`
- `setActiveKey(Value As String)`
- `setChecked(CheckedKeys As String)`
- `setCloseIcon(Value As String)`
- `setCloseType(Value As String)`
- `setDuration(Value As Int)`
- `setEnabled(Value As Boolean)`
- `setFilterStyle(Value As String)`
- `setHeight(Value As String)`
- `setItemChecked(Key As String, Checked As Boolean)`
- `setItems(Value As Map)`
- `setLeft(Value As Int)`
- `setMargin(Value As String)`
- `setMultiSelect(Value As Boolean)`
- `setOptions(Value As String)`
- `setOptionsList(Value As List)`
- `setOptionsMap(Value As Map)`
- `setOrientation(Value As String)`
- `setPadding(Value As String)`
- `setResetPosition(Value As String)`
- `setResetText(Value As String)`
- `setRounded(Value As String)`
- `setSelectedIds(Ids As List)`
- `setSize(Value As String)`
- `setTag(Value As Object)`
- `setTop(Value As Int)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As String)`

## 7. Public Fields
- `mBase As B4XView`
