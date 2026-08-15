# toggle (`B4XDaisyToggle`)

Switch control (on/off) for boolean settings with label, group support, and indeterminate state.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyToggle`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyToggle.bas`
- **Verified Demos**: `B4XPageEnjoyHint.bas, B4XPageFocus.bas, B4XPageNavScrollDock.bas, B4XPageSignaturePad.bas, B4XPageTagSphere.bas, B4XPageToggle.bas`
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
- `setIndeterminate(Value As Boolean)`
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
