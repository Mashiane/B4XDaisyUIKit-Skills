# radio (`B4XDaisyRadio`)

Single radio button control with label text. Group multiple radio buttons by `GroupName`.

## 1. Overview
- **Class**: `B4XDaisyRadio`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyRadio.bas`
- **Web DaisyUI Mapping**: `.radio` → `B4XDaisyRadio`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim r1 As B4XDaisyRadio
r1.Initialize(Me, "r1")
r1.AddToParent(pnlHost, pad, y, maxW, 40dip)
r1.GroupName = "plan"
r1.Value = "monthly"
r1.Text = "Monthly"
r1.Variant = "primary"
r1.Size = "md"
y = y + r1.getComputedHeight + gap

Dim r2 As B4XDaisyRadio
r2.Initialize(Me, "r2")
r2.AddToParent(pnlHost, pad, y, maxW, 40dip)
r2.GroupName = "plan"
r2.Value = "annual"
r2.Text = "Annual"
r2.Variant = "primary"
r2.Checked = True
y = y + r2.getComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Single circular radio choice button.
- Assign `GroupName` to link related radio buttons into a mutually exclusive group.
- Set `Checked = True` to select by default.
- Handle selection in the `Changed (Value As Boolean)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| GroupName | Group Name | String |  |  |
| Checked | Checked | Boolean | False |  |
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
| CheckedTextColor | Checked Dot Color | Color | 0x00FFFFFF |  |
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
