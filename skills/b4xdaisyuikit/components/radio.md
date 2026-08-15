# radio (`B4XDaisyRadio`)

Single radio button control with label text. Group multiple radio buttons by `GroupName`.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyRadio`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyRadio.bas`
- **Verified Demos**: `B4XPageFocus.bas, B4XPageRadio.bas`
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Blur`
- `BringToFront`
- `ClearError`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `Initialize(Callback As Object, EventName As String)`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `RequestFocus`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ShowError(ErrorMessage As String)`
- `UpdateTheme`
- `Validate As Boolean`
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
- `getView As B4XView`
- `getVisible As Boolean`
- `getWidth As Int`
- `setBackgroundColor(Color As Int)`
- `setBorderColor(Color As Int)`
- `setChecked(Value As Boolean)`
- `setCheckedBackgroundColor(Color As Int)`
- `setCheckedBorderColor(Color As Int)`
- `setCheckedTextColor(Color As Int)`
- `setEnabled(Value As Boolean)`
- `setErrorText(Value As String)`
- `setFocus(Value As Boolean)`
- `setGroupName(Value As String)`
- `setHeight(Value As Int)`
- `setLeft(Value As Int)`
- `setPosition(Value As String)`
- `setRequired(Value As Boolean)`
- `setShadow(Value As String)`
- `setSize(Value As String)`
- `setTag(Value As Object)`
- `setText(Value As String)`
- `setTextColor(Color As Int)`
- `setTop(Value As Int)`
- `setValue(Value As String)`
- `setVariant(Value As String)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
