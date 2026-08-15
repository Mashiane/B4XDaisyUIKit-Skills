# window (`B4XDaisyWindow`)

Mockup macOS/Windows style application frame with title bar, window traffic light controls, and body container.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyWindow`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyWindow.bas`
- **Verified Demos**: `B4XPageWindow.bas`
- **Web DaisyUI Mapping**: `.window` → `B4XDaisyWindow`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim win As B4XDaisyWindow
win.Initialize(Me, "win")
win.AddToParent(pnlHost, pad, y, maxW, 180dip)
win.ToolBarTitle = "Terminal / Bash"
win.ShowControls = True
y = y + 180dip + gap
```

## 3. Native Composition Rules & Gotchas
- macOS-style mockup window frame with traffic light buttons for content demos.
- Set `Title` and `ShowControls = True` for window header bar.
- Mount content into `window.GetContentPanel`.
- Use `Variant` to theme the window frame.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Width | Width | String | w-full |  |
| Height | Height | String | h-220 |  |
| BackgroundColor | Background Color | Color | 0x00000000 |  |
| BorderColor | Border Color | Color | 0x00000000 |  |
| BorderSize | Border Size | Int | 1 |  |
| Rounded | Rounded | String | theme | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full |
| RoundedBox | Rounded Box | Boolean | True |  |
| Shadow | Shadow | String | none | none|xs|sm|md|lg|xl |
| ShowHeader | Show Header | Boolean | True |  |
| HeaderHeight | Header Height | Int | 24 |  |
| ShowControls | Show Controls | Boolean | True |  |
| ToolBarTitle | Tool Bar Title | String |  |  |
| ContentPadding | Content Padding | String | p-4 |  |
| AutoHeight | Auto Height | Boolean | True |  |

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `AddContentView(v As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddHeaderView(v As B4XView, Left As Int, Top As Int, Width As Int, Height As Int)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `ClearContent`
- `ClearHeader`
- `Content As B4XView`
- `ContentHeight As Int`
- `ContentWidth As Int`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetComputedHeight As Int`
- `GetHeaderPanel As B4XView`
- `Initialize(Callback As Object, EventName As String)`
- `RefreshContent`
- `RemoveViewFromParent`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
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
- `setAutoHeight(Value As Boolean)`
- `setBackgroundColor(Value As Object)`
- `setBorderColor(Value As Object)`
- `setBorderSize(Value As Int)`
- `setContentPadding(Value As String)`
- `setHeaderHeight(Value As Int)`
- `setHeight(Value As String)`
- `setLeft(Value As Int)`
- `setRounded(Value As String)`
- `setRoundedBox(Value As Boolean)`
- `setShadow(Value As String)`
- `setShowControls(Value As Boolean)`
- `setShowHeader(Value As Boolean)`
- `setTag(Value As Object)`
- `setToolBarTitle(Value As String)`
- `setTop(Value As Int)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As String)`

## 7. Public Fields
None declared.
