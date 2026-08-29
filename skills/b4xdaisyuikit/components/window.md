# window (`B4XDaisyWindow`)

DaisyUI `Window` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyWindow`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyWindow.bas`
- **Verified Demo Source**: B4XPageWindow.bas (lines 71–178)
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
| `Width` | Width | `String` | `w-full` |  |
| `Height` | Height | `String` | `h-220` |  |
| `BackgroundColor` | Background Color | `Color` | `0x00000000` |  |
| `BorderColor` | Border Color | `Color` | `0x00000000` |  |
| `BorderSize` | Border Size | `Int` | `1` |  |
| `Rounded` | Rounded | `String` | `theme` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box|rounded-field|rounded-selector |
| `Shadow` | Shadow | `String` | `none` | none|xs|sm|md|lg|xl |
| `ShowHeader` | Show Header | `Boolean` | `True` |  |
| `HeaderHeight` | Header Height | `Int` | `24` |  |
| `ShowControls` | Show Controls | `Boolean` | `True` |  |
| `ToolBarTitle` | Tool Bar Title | `String` | `` |  |
| `ContentPadding` | Content Padding | `String` | `p-4` |  |
| `AutoHeight` | Auto Height | `Boolean` | `True` |  |

## 5. Declared Events
- *(No custom events declared)*

## 6. Public Methods & APIs
- `AddContentView(vView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `AddHeaderView(vView As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `ClearContent`
- `ClearHeader`
- `Content As B4XView`
- `ContentHeight As Int`
- `ContentWidth As Int`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetComputedHeight As Int`
- `GetHeaderPanel As B4XView`
- `Initialize(oCallback As Object, sEventName As String)`
- `RefreshContent`
- `RemoveViewFromParent`
- `ResolveColorValue(oValue As Object, iDefaultColor As Int) As Int`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `View As B4XView`
- `getAutoHeight As Boolean`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getBorderSize As Int`
- `getContentPadding As String`
- `getHeaderHeight As Int`
- `getHeight As String`
- `getLeft As Int`
- `getRounded As String`
- `getRoundedBox As Boolean`
- `getShadow As String`
- `getShowControls As Boolean`
- `getShowHeader As Boolean`
- `getTag As Object`
- `getToolBarTitle As String`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As String`
- `setAutoHeight(bValue As Boolean)`
- `setBackgroundColor(oValue As Object)`
- `setBorderColor(oValue As Object)`
- `setBorderSize(iValue As Int)`
- `setContentPadding(sValue As String)`
- `setHeaderHeight(iValue As Int)`
- `setHeight(sValue As String)`
- `setLeft(iValue As Int)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setShowControls(bValue As Boolean)`
- `setShowHeader(bValue As Boolean)`
- `setTag(oValue As Object)`
- `setToolBarTitle(sValue As String)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(sValue As String)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

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
