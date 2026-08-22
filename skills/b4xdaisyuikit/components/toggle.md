# toggle (`B4XDaisyToggle`)

DaisyUI `Toggle` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyToggle`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyToggle.bas`
- **Verified Demo Source**: B4XPageDrawerRail.bas (lines 409–417), B4XPageEnjoyHint.bas (lines 27–28), B4XPageFocus.bas (lines 36–36), B4XPageNavScrollDock.bas (lines 191–197), B4XPageSignaturePad.bas (lines 38–39), B4XPageTagSphere.bas (lines 23–24), B4XPageToggle.bas (lines 59–393), B4XPageToggleGroup.bas (lines 46–204)
- **Web DaisyUI Mapping**: `.toggle` → `B4XDaisyToggle`

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
| `GroupName` | Group Name | `String` | `` |  |
| `Checked` | Checked | `Boolean` | `False` |  |
| `Indeterminate` | Indeterminate | `Boolean` | `False` |  |
| `Value` | Value | `String` | `` |  |
| `Text` | Text | `String` | `` |  |
| `Variant` | Variant | `String` | `none` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `Size` | Size | `String` | `md` | xs|sm|md|lg|xl |
| `Position` | Position | `String` | `start` | start|end |
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl|2xl |
| `BackgroundColor` | Background Color | `Color` | `0x00FFFFFF` |  |
| `BorderColor` | Border Color | `Color` | `0x00FFFFFF` |  |
| `TextColor` | Text Color | `Color` | `0x00FFFFFF` |  |
| `CheckedBackgroundColor` | Checked Background Color | `Color` | `0x00FFFFFF` |  |
| `CheckedBorderColor` | Checked Border Color | `Color` | `0x00FFFFFF` |  |
| `CheckedTextColor` | Checked Text Color | `Color` | `0x00FFFFFF` |  |
| `Required` | Required | `Boolean` | `False` |  |
| `ErrorText` | Error Text | `String` | `` |  |

## 5. Declared Events
- `Checked (Checked As Boolean)`
- `Click (Tag As Object)`
- `FocusChanged (HasFocus As Boolean)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `Blur`
- `BringToFront`
- `ClearError`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `Initialize(oCallback As Object, sEventName As String)`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `ShowError(sErrorMessage As String)`
- `UpdateTheme`
- `Validate As Boolean`
- `View As B4XView`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getChecked As Boolean`
- `getCheckedBackgroundColor As Int`
- `getCheckedBorderColor As Int`
- `getCheckedTextColor As Int`
- `getComputedHeight As Int`
- `getEnabled As Boolean`
- `getErrorText As String`
- `getGroupName As String`
- `getHeight As Int`
- `getIndeterminate As Boolean`
- `getIsValid As Boolean`
- `getLeft As Int`
- `getPosition As String`
- `getRequired As Boolean`
- `getRole As String`
- `getShadow As String`
- `getSize As String`
- `getTag As Object`
- `getText As String`
- `getTextColor As Int`
- `getTop As Int`
- `getValue As String`
- `getVariant As String`
- `getVisible As Boolean`
- `getWidth As Int`
- `setBackgroundColor(iColor As Int)`
- `setBorderColor(iColor As Int)`
- `setChecked(bValue As Boolean)`
- `setCheckedBackgroundColor(iColor As Int)`
- `setCheckedBorderColor(iColor As Int)`
- `setCheckedTextColor(iColor As Int)`
- `setEnabled(bValue As Boolean)`
- `setErrorText(sValue As String)`
- `setFocus(bValue As Boolean)`
- `setGroupName(sValue As String)`
- `setHeight(iValue As Int)`
- `setIndeterminate(bValue As Boolean)`
- `setLeft(iValue As Int)`
- `setPosition(sValue As String)`
- `setRequired(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setText(sValue As String)`
- `setTextColor(iColor As Int)`
- `setTop(iValue As Int)`
- `setValue(sValue As String)`
- `setVariant(sValue As String)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

