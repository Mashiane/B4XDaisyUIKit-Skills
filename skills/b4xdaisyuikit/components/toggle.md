# toggle (`B4XDaisyToggle`)

DaisyUI `Toggle` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyToggle`
- **Lifecycle Type**: `Standard`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyToggle.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyToggle.bas)
- **Verified Demo Source**: B4XPageDrawerRail.bas, B4XPageEnjoyHint.bas, B4XPageFocus.bas, B4XPageNavScrollDock.bas, B4XPageSignaturePad.bas, B4XPageTagSphere.bas, B4XPageToggle.bas
- **Web DaisyUI Mapping**: `.toggle` → `B4XDaisyToggle`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |

### Web DaisyUI HTML Syntax
```html
<input type="checkbox" class="toggle {MODIFIER}" />
```

## 2. Verified B4X Syntax & Recipe
```b4x
''' Example: Standard checked toggle
    Dim tgBaseChecked As B4XDaisyToggle
    tgBaseChecked.Initialize(Me, "tg")
    tgBaseChecked.AddToParent(pnlHost, PAGE_PAD, y, maxW, 36dip)
    tgBaseChecked.Text = "Checked Toggle"
    tgBaseChecked.Checked = True
    tgBaseChecked.Tag = "base-checked"
    y = y + 44dip

    ''' Example: Standard unchecked toggle
    Dim tgBaseUnchecked As B4XDaisyToggle
    tgBaseUnchecked.Initialize(Me, "tg")
    tgBaseUnchecked.AddToParent(pnlHost, PAGE_PAD, y, maxW, 36dip)
    tgBaseUnchecked.Text = "Unchecked Toggle"
    tgBaseUnchecked.Checked = False
    tgBaseUnchecked.Tag = "base-unchecked"
    y = y + 44dip

    ''' Example: Indeterminate toggle
    Dim tgBaseIndet As B4XDaisyToggle
    tgBaseIndet.Initialize(Me, "tg")
    tgBaseIndet.AddToParent(pnlHost, PAGE_PAD, y, maxW, 36dip)
    tgBaseIndet.Text = "Indeterminate Toggle"
    tgBaseIndet.Indeterminate = True
    tgBaseIndet.Tag = "base-indeterminate"
    y = y + 56dip

    ' -
    ' 2. TEXTLESS (VISUAL ONLY) SECTION
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyToggle` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `getChecked, setIndeterminate, getIndeterminate` (+ 30 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `GroupName` | Group Name | `String` |  |  |
| `Checked` | Checked | `Boolean` | False |  |
| `Indeterminate` | Indeterminate | `Boolean` | False |  |
| `Value` | Value | `String` |  |  |
| `Text` | Text | `String` |  |  |
| `Variant` | Variant | `String` | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Size` | Size | `String` | md | xs|sm|md|lg|xl |
| `Position` | Position | `String` | start | start|end |
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl|2xl |
| `BackgroundColor` | Background Color | `Color` | 0x00FFFFFF |  |
| `BorderColor` | Border Color | `Color` | 0x00FFFFFF |  |
| `TextColor` | Text Color | `Color` | 0x00FFFFFF |  |
| `CheckedBackgroundColor` | Checked Background Color | `Color` | 0x00FFFFFF |  |
| `CheckedBorderColor` | Checked Border Color | `Color` | 0x00FFFFFF |  |
| `CheckedTextColor` | Checked Text Color | `Color` | 0x00FFFFFF |  |
| `Required` | Required | `Boolean` | False |  |
| `ErrorText` | Error Text | `String` |  |  |

## 5. Declared Events
- `Checked (Checked As Boolean)`
- `Click (Tag As Object)`
- `FocusChanged (HasFocus As Boolean)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `setChecked(Value As Boolean)`
- `getChecked As Boolean`
- `setIndeterminate(Value As Boolean)`
- `getIndeterminate As Boolean`
- `setText(Value As String)`
- `getText As String`
- `setVariant(Value As String)`
- `getVariant As String`
- `setSize(Value As String)`
- `getSize As String`
- `setPosition(Value As String)`
- `getPosition As String`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setValue(Value As String)`
- `getValue As String`
- `setGroupName(Value As String)`
- `getGroupName As String`
- `getRole As String`
- `setRequired(Value As Boolean)`
- `getRequired As Boolean`
- `setErrorText(Value As String)`
- `getErrorText As String`
- `getIsValid As Boolean`
- `ShowError(ErrorMessage As String)`
- `ClearError`
- `Validate As Boolean`
- `setBackgroundColor(Color As Int)`
- `getBackgroundColor As Int`
- `setBorderColor(Color As Int)`
- `getBorderColor As Int`
- `setTextColor(Color As Int)`
- `getTextColor As Int`
- `setCheckedBackgroundColor(Color As Int)`
- `getCheckedBackgroundColor As Int`
- `setCheckedBorderColor(Color As Int)`
- `getCheckedBorderColor As Int`
- `setCheckedTextColor(Color As Int)`
- `getCheckedTextColor As Int`
- `setShadow(Value As String)`
- `getShadow As String`
- `setTag(Value As Object)`
- `getTag As Object`
- `UpdateTheme`
- `Refresh`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `View As B4XView`
- `getComputedHeight As Int`
- `RequestFocus`
- `setFocus(Value As Boolean)`
- `ReceiveFocus`
- `Blur`
- `Base_Resize(Width As Double, Height As Double)`
- `RemoveViewFromParent`
- `Release`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`

## 7. Public Fields
- `mBase As B4XView`

