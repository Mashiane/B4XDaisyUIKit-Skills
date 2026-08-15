# kbd (`B4XDaisyKbd`)

Keyboard key display component — renders styled keys like `⌘`, `Ctrl`, `Enter`.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyKbd`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyKbd.bas`
- **Verified Demos**: `B4XPageKbd.bas`
- **Web DaisyUI Mapping**: `.kbd` → `B4XDaisyKbd`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim kb As B4XDaisyKbd
kb.Initialize(Me, "kb")
kb.AddToParent(pnlHost, pad, y, 60dip, 40dip)
kb.Text = "Ctrl"
kb.Size = "md"
y = y + kb.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Compact keyboard shortcut badge (e.g. ⌘K, Ctrl+C, Enter).
- Set `KeyText` to the shortcut character string.
- Set `Size` (`"xs"`, `"sm"`, `"md"`, `"lg"`) to match adjacent typography.
- Can be embedded inside input trailing slots or list items.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Text | Text | String | K |  |
| Size | Size | String | md | xs|sm|md|lg|xl |
| Rounded | Rounded | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| Padding | Padding | String |  |  |
| Margin | Margin | String |  |  |
| BackgroundColor | Background Color | Color | 0x00FFFFFF |  |
| TextColor | Text Color | Color | 0x00FFFFFF |  |
| Visible | Visible | Boolean | True |  |
| AutoResize | Auto Resize | Boolean | True |  |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `getAutoResize As Boolean`
- `getBackgroundColor As Int`
- `getHeight As Int`
- `getLeft As Int`
- `getMargin As String`
- `getPadding As String`
- `getRounded As String`
- `getSize As String`
- `getTag As Object`
- `getText As String`
- `getTextColor As Int`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `setAutoResize(Value As Boolean)`
- `setBackgroundColor(Value As Int)`
- `setHeight(Value As Int)`
- `setLeft(Value As Int)`
- `setMargin(Value As String)`
- `setPadding(Value As String)`
- `setRounded(Value As String)`
- `setSize(Value As String)`
- `setTag(Value As Object)`
- `setText(Value As String)`
- `setTextColor(Value As Int)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
- `mBase As B4XView`
