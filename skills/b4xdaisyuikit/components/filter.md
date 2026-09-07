# filter (`B4XDaisyFilter`)

DaisyUI `Filter` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyFilter`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyFilter.bas`
- **Verified Demo Source**: B4XPageFilter.bas
- **Web DaisyUI Mapping**: `.filter` → `B4XDaisyFilter`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``filter`` | Member | `.SetComponent(...)` | Native configuration |
| `part` | ``filter-reset`` | Method / Part | `AddItem(...)` / `GetContentPanel` | Sub-element container |

### Web DaisyUI HTML Syntax
Using HTML form
```html
<form class="filter">
  <input class="btn btn-square" type="reset" value="×"/>
  <input class="btn" type="radio" name="{NAME}" aria-label="Tab 1 title"/>
  <input class="btn" type="radio" name="{NAME}" aria-label="Tab 2 title"/>
</form>
```
Without HTML form
```html
<div class="filter">
  <input class="btn filter-reset" type="radio" name="{NAME}" aria-label="×"/>
  <input class="btn" type="radio" name="{NAME}" aria-label="Tab 1 title"/>
  <input class="btn" type="radio" name="{NAME}" aria-label="Tab 2 title"/>
</div>
```

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
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Options` | Options | `String` | svelte:Svelte, vue:Vue, react:React |  |
| `ActiveKey` | Active Key | `String` |  |  |
| `Rounded` | Rounded | `String` | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `FilterStyle` | Filter Style | `String` | solid | solid|soft|outline|dash|ghost |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `ResetPosition` | Reset Position | `String` | left | left|right |
| `ResetText` | Reset Text | `String` | x |  |
| `CloseType` | Close Type | `String` | icon | icon|text |
| `CloseIcon` | Close Icon | `String` | close.svg |  |
| `MultiSelect` | MultiSelect (Checkboxes) | `Boolean` | False |  |
| `Orientation` | Orientation | `String` | horizontal | horizontal|vertical |
| `Duration` | Duration | `Int` | 300 |  |
| `Width` | Width | `String` | w-full |  |
| `Height` | Height | `String` | h-auto |  |
| `Padding` | Padding | `String` |  |  |
| `Margin` | Margin | `String` |  |  |

## 5. Declared Events
- `ResetClick`
- `Changed (Keys As List)`
- `ItemChanged (Id As String, Text As String, Checked As Boolean)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setOptions(Value As String)`
- `getOptions As String`
- `setActiveKey(Value As String)`
- `getActiveKey As String`
- `setOptionsMap(Value As Map)`
- `getOptionsMap As Map`
- `setOptionsList(lstValue As List)`
- `getOptionsList As List`
- `setRounded(Value As String)`
- `getRounded As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setFilterStyle(Value As String)`
- `getFilterStyle As String`
- `setSize(Value As String)`
- `getSize As String`
- `setResetPosition(Value As String)`
- `getResetPosition As String`
- `setResetText(Value As String)`
- `getResetText As String`
- `setCloseType(Value As String)`
- `getCloseType As String`
- `setCloseIcon(Value As String)`
- `getCloseIcon As String`
- `setMultiSelect(Value As Boolean)`
- `getMultiSelect As Boolean`
- `setOrientation(Value As String)`
- `getOrientation As String`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setPadding(Value As String)`
- `getPadding As String`
- `setMargin(Value As String)`
- `getMargin As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `setItemChecked(Key As String, Checked As Boolean)`
- `isItemChecked(Key As String) As Boolean`
- `getCheckedKeys As List`
- `setChecked(CheckedKeys As String)`
- `getChecked As String`
- `setItems(Value As Map)`
- `getItems As Map`
- `setSelectedIds(lstIds As List)`
- `getSelectedIds As List`
- `Refresh`
- `UpdateTheme`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `RemoveViewFromParent`
- `GetComputedHeight As Int`
- `Base_Resize(Width As Double, Height As Double)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

