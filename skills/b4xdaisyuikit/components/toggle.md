# toggle (`B4XDaisyToggle`)

Switch control (on/off) for boolean settings with label, group support, and indeterminate state.

## 1. Overview
- **Class**: `B4XDaisyToggle`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyToggle.bas`
- **Web DaisyUI Mapping**: `.toggle` → `B4XDaisyToggle`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim tog As B4XDaisyToggle
tog.Initialize(Me, "tog")
tog.AddToParent(pnlHost, pad, y, maxW, 44dip)
tog.Variant = "primary"
tog.Size = "md"
tog.Text = "Enable notifications"
tog.Position = "start"
tog.Checked = True
y = y + tog.getComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Switch toggle for binary on/off settings and preferences.
- Set `Position = "start"` for label on left, `"end"` (default) for label on right.
- Set `Size` (`"xs"` to `"xl"`) and semantic `Variant`.
- Handle state changes in the `Changed (Value As Boolean)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| GroupName | Group Name | String |  |  |
| Checked | Checked | Boolean | False |  |
| Indeterminate | Indeterminate | Boolean | False |  |
| Value | Value | String |  |  |
| Text | Text | String |  |  |
| Variant | Variant | String | none | none|neutral|primary|secondary|accent|info|success|warning|error |
| Size | Size | String | md | xs|sm|md|lg|xl |
| Position | Position | String | start | start|end |
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl|2xl |
| BackgroundColor | Background Color | Color | 0x00FFFFFF |  |
| BorderColor | Border Color | Color | 0x00FFFFFF |  |
| TextColor | Text Color | Color | 0x00FFFFFF |  |
| CheckedBackgroundColor | Checked Background Color | Color | 0x00FFFFFF |  |
| CheckedBorderColor | Checked Border Color | Color | 0x00FFFFFF |  |
| CheckedTextColor | Checked Text Color | Color | 0x00FFFFFF |  |
| Required | Required | Boolean | False |  |
| ErrorText | Error Text | String |  |  |

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
- `Initialize(oCallback As Object, sEventName As String)`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `SendToBack`
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
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
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
- `ShowError(sErrorMessage As String)`
- `UpdateTheme`
- `Validate As Boolean`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
