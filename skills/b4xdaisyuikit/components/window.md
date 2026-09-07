# window (`B4XDaisyWindow`)

DaisyUI `Window` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyWindow`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyWindow.bas`
- **Verified Demo Source**: B4XPageWindow.bas
- **Web DaisyUI Mapping**: `.window` → `B4XDaisyWindow`

## DaisyUI Web Class Translation

| DaisyUI Category | Web CSS Class Name(s) | Native B4X Member | B4X Property / Method Expression | Notes |
| :--- | :--- | :--- | :--- | :--- |
| `component` | ``mockup-window`` | Member | `.SetComponent(...)` | Native configuration |

### Web DaisyUI HTML Syntax
```html
<div class="mockup-window">
  <div>{CONTENT}</div>
</div>
```

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub AddSimpleWindow
	Dim win As B4XDaisyWindow
	win.Initialize(Me, "win_simple")

	Dim boxW As Int = Min(Root.Width - 24dip, 360dip)
	Dim left As Int = 12dip
	If boxW < Root.Width - 24dip Then left = (Root.Width - boxW) / 2

	Dim v As B4XView = win.AddToParent(pnlContent, left, currentY, boxW, 230dip)
	win.setContentPadding("p-3")

	Dim lbl As B4XDaisyText
	lbl.Initialize(Me, "")
	lbl.AddToParent(win.Content, 0, 0, win.ContentWidth, win.ContentHeight)
	lbl.Text = "Hello!"
	lbl.TextColor = B4XDaisyVariants.GetTokenColor("--color-base-content", xui.Color_Black)
	lbl.TextSize = 30
	lbl.HAlign = "CENTER"
	lbl.VAlign = "CENTER"
	win.RefreshContent
	currentY = currentY + v.Height + gap
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyWindow` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `ResolveColorValue, GetHeaderPanel, AddHeaderView` (+ 22 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Width` | Width | `String` | w-full |  |
| `Height` | Height | `String` | h-220 |  |
| `BackgroundColor` | Background Color | `Color` | 0x00000000 |  |
| `BorderColor` | Border Color | `Color` | 0x00000000 |  |
| `BorderSize` | Border Size | `Int` | 1 |  |
| `Rounded` | Rounded | `String` | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | none | none|xs|sm|md|lg|xl |
| `ShowHeader` | Show Header | `Boolean` | True |  |
| `HeaderHeight` | Header Height | `Int` | 24 |  |
| `ShowControls` | Show Controls | `Boolean` | True |  |
| `ToolBarTitle` | Tool Bar Title | `String` |  |  |
| `ContentPadding` | Content Padding | `String` | p-4 |  |
| `AutoHeight` | Auto Height | `Boolean` | True |  |

## 5. Declared Events
(none declared in packaged source)

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Base_Resize(Width As Double, Height As Double)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Content As B4XView`
- `ContentWidth As Int`
- `ContentHeight As Int`
- `GetHeaderPanel As B4XView`
- `AddContentView(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddHeaderView(View As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `ClearContent`
- `RefreshContent`
- `ClearHeader`
- `getTag As Object`
- `setTag(Value As Object)`
- `View As B4XView`
- `GetComputedHeight As Int`
- `RemoveViewFromParent`
- `setWidth(Value As String)`
- `getWidth As String`
- `setHeight(Value As String)`
- `getHeight As String`
- `setBackgroundColor(Value As Object)`
- `getBackgroundColor As Int`
- `setBorderColor(Value As Object)`
- `getBorderColor As Int`
- `setBorderSize(Value As Int)`
- `getBorderSize As Int`
- `setRounded(Value As String)`
- `getRounded As String`
- `setRoundedBox(Value As Boolean)`
- `getRoundedBox As Boolean`
- `setShadow(Value As String)`
- `getShadow As String`
- `setShowHeader(Value As Boolean)`
- `getShowHeader As Boolean`
- `setHeaderHeight(Value As Int)`
- `getHeaderHeight As Int`
- `setShowControls(Value As Boolean)`
- `getShowControls As Boolean`
- `setContentPadding(Value As String)`
- `getContentPadding As String`
- `setToolBarTitle(Value As String)`
- `getToolBarTitle As String`
- `setAutoHeight(Value As Boolean)`
- `getAutoHeight As Boolean`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`

## 7. Public Fields
(none declared in packaged source)

## Canonical Creation Pattern & Recipe

`B4XDaisyWindow` renders a mock macOS/Windows application window frame.

```vb
Dim win As B4XDaisyWindow
win.Initialize(Me, "win")
win.AddToParent(pnlHost, pad, y, maxW, 240dip)
win.Title = "Terminal / Code Editor"
win.Variant = "base-200"
win.TrafficLights = True                       ' Shows red/yellow/green macOS window buttons

' Mount custom views inside GetContentPanel:
Dim pnlWin As B4XView = win.GetContentPanel
Dim txtCode As B4XDaisyText
txtCode.Initialize(Me, "")
txtCode.AddToParent(pnlWin, 12dip, 12dip, pnlWin.Width - 24dip, 80dip)
txtCode.Text = "$ git commit -m 'Initial commit'"

y = y + 240dip + gap
```
