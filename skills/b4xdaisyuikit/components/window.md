# window (`B4XDaisyWindow`)

Mockup macOS/Windows style application frame with title bar, window traffic light controls, and body container.

## 1. Overview
- **Class**: `B4XDaisyWindow`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyWindow.bas`
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
- `getAutoHeight As Boolean`
- `getBackgroundColor As Int`
- `getBorderColor As Int`
- `getBorderSize As Int`
- `GetComputedHeight As Int`
- `getContentPadding As String`
- `getHeaderHeight As Int`
- `GetHeaderPanel As B4XView`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `RefreshContent`
- `RemoveViewFromParent`
- `SendToBack`
- `setAutoHeight(bValue As Boolean)`
- `setBackgroundColor(oValue As Object)`
- `setBorderColor(oValue As Object)`
- `setBorderSize(iValue As Int)`
- `setContentPadding(sValue As String)`
- `setHeaderHeight(iValue As Int)`
- `setHeight(sValue As String)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
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
- `View As B4XView`


## 7. Public Fields
None declared.
