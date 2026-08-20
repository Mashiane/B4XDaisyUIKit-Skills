# kbd (`B4XDaisyKbd`)

Keyboard key display component — renders styled keys like `⌘`, `Ctrl`, `Enter`.

## 1. Overview
- **Class**: `B4XDaisyKbd`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyKbd.bas`
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
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getAutoResize As Boolean`
- `getBackgroundColor As Int`
- `GetComputedHeight As Int`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `RemoveViewFromParent`
- `SendToBack`
- `setAutoResize(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setHeight(iValue As Int)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setMargin(sValue As String)`
- `setPadding(sValue As String)`
- `setRounded(sValue As String)`
- `setSize(sValue As String)`
- `setTag(oValue As Object)`
- `setText(sValue As String)`
- `setTextColor(iValue As Int)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
