# fab (`B4XDaisyFab`)

Floating Action Button with expandable child actions. Supports multiple layout modes (vertical, flower, toolbar) and placement modes (fixed, anchored, manual).

## 1. Overview
- **Class**: `B4XDaisyFab`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyFab.bas`
- **Web DaisyUI Mapping**: `.fab` → `B4XDaisyFab`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim fab As B4XDaisyFab
fab.Initialize(Me, "fab")
fab.AddToParent(Root, 0, 0, Root.Width, Root.Height)
fab.PlacementMode = "fixed"
fab.Placement = "bottom-end"
fab.TriggerVariant = "primary"
fab.TriggerIconName = "plus-solid.svg"
fab.LayoutMode = "vertical"

fab.AddAction("add_tag", "primary", "tag-solid.svg")
fab.AddAction("add_note", "secondary", "pencil-solid.svg")

```

## 3. Native Composition Rules & Gotchas
- Floating Action Button with vertical, flower, or toolbar action expansion menus.
- Position in the bottom corner of `Root`.
- Configure expansion style via `LayoutMode` (`"vertical"`, `"flower"`, `"horizontal"`).
- Add child actions via `AddAction(Id, IconName, Variant, Tooltip)`.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| Opened | Opened | Boolean | False |  |
| PlacementMode | Placement Mode | String | fixed | fixed|anchored|manual |
| Placement | Placement | String | bottom-end | bottom-end|bottom-start|bottom-center|top-end|top-start|top-center|center-end|center-start|center |
| AnchorAlignment | Anchor Alignment | String | start | start|center|end |
| OnEdge | On Edge | Boolean | False |  |
| OpenMode | Open Mode | String | click | click|hover|focus |
| LayoutMode | Layout Mode | String | vertical | vertical|flower|toolbar |
| Direction | Direction | String | top | top|right|bottom|left |
| BackdropEnabled | Backdrop Enabled | Boolean | True |  |
| AutoCloseOnActionClick | Auto Close On Action Click | Boolean | True |  |
| TriggerText | Trigger Text | String | F |  |
| TriggerVariant | Trigger Variant | String | primary | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| TriggerStyle | Trigger Style | String | solid | solid|soft|outline|dash|ghost|link |
| TriggerSize | Trigger Size | String | lg | xs|sm|md|lg|xl |
| ChildActionSize | Child Action Size | String | sm | xs|sm|md|lg|xl |
| TriggerIconName | Trigger Icon Name | String |  |  |
| TriggerCircle | Trigger Circle | Boolean | True |  |
| UseMainAction | Use Main Action | Boolean | False |  |
| MainActionText | Main Action Text | String | M |  |
| MainActionVariant | Main Action Variant | String | secondary | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| MainActionIconName | Main Action Icon Name | String |  |  |
| UseCloseAction | Use Close Action | Boolean | False |  |
| CloseActionText | Close Action Text | String | X |  |
| CloseActionVariant | Close Action Variant | String | error | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| CloseActionIconName | Close Action Icon Name | String |  |  |
| TriggerSizeDip | Trigger Size (dip) | Int | 56 |  |
| TriggerIconSize | Trigger Icon Size (dip) | Int | 24 |  |
| ChildActionSizeDip | Child Action Size (dip) | Int | 40 |  |
| ChildActionIconSize | Child Action Icon Size (dip) | Int | 20 |  |
| Duration | Duration | Int | 300 |  |

## 5. Declared Events
- `Click (Tag As Object)`
- `ActionClick (Index As Int, Tag As Object)`
- `MainActionClick (Tag As Object)`
- `CloseClick (Tag As Object)`
- `Opened`
- `Closed`

## 6. Public Methods & APIs
- `AddAction(oTagValue As Object, sVariant As String, sIconName As String) As Int`
- `AddActionDetailed(sText As String, sLabelText As String, sVariant As String, sIconName As String, oTagValue As Object) As Int`
- `AddActionEx(sText As String, sLabelText As String, sVariant As String, sStyle As String, sSize As String, sIconName As String, bCircle As Boolean, oTagValue As Object) As Int`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `BringToFront`
- `ClearActions`
- `Close`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetActionButtonView(iIndex As Int) As B4XView`
- `getAnchorAlignment As String`
- `getAnchorTarget As B4XView`
- `getAnchorView As B4XView`
- `getAutoCloseOnActionClick As Boolean`
- `getBackdropEnabled As Boolean`
- `getChildActionIconSize As Int`
- `getChildActionSize As String`
- `getChildActionSizeDip As Int`
- `getCloseActionIconName As String`
- `getCloseActionText As String`
- `getCloseActionVariant As String`
- `GetComputedHeight As Int`
- `getDirection As String`
- `getDuration As Int`
- `getEnabled As Boolean`
- `getHeight As Int`
- `getLayoutMode As String`
- `getLeft As Int`
- `getMainActionIconName As String`
- `getMainActionText As String`
- `getMainActionVariant As String`
- `getOnEdge As Boolean`
- `getOpened As Boolean`
- `getOpenMode As String`
- `getOverlayHost As B4XView`
- `getPlacement As String`
- `getPlacementMode As String`
- `getTag As Object`
- `getTop As Int`
- `getTriggerCircle As Boolean`
- `getTriggerIconName As String`
- `getTriggerIconSize As Int`
- `getTriggerSize As String`
- `getTriggerSizeDip As Int`
- `getTriggerStyle As String`
- `getTriggerText As String`
- `getTriggerVariant As String`
- `getUseCloseAction As Boolean`
- `getUseMainAction As Boolean`
- `getVisible As Boolean`
- `getWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsOpen As Boolean`
- `Open`
- `Refresh`
- `RemoveViewFromParent`
- `Resize(dWidth As Double, dHeight As Double)`
- `SendToBack`
- `SetActionVisible(iIndex As Int, bValue As Boolean)`
- `setAnchorAlignment(sValue As String)`
- `setAnchorTarget(vValue As B4XView)`
- `setAnchorView(vValue As B4XView)`
- `setAutoCloseOnActionClick(bValue As Boolean)`
- `setBackdropEnabled(bValue As Boolean)`
- `setChildActionIconSize(iValue As Int)`
- `setChildActionSize(sValue As String)`
- `setChildActionSizeDip(iValue As Int)`
- `SetCloseAction(sText As String, sLabelText As String, sVariant As String, sIconName As String, oTagValue As Object)`
- `setCloseActionIconName(sValue As String)`
- `setCloseActionText(sValue As String)`
- `setCloseActionVariant(sValue As String)`
- `setDirection(sValue As String)`
- `setDuration(iValue As Int)`
- `setEnabled(bValue As Boolean)`
- `setHeight(iValue As Int)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLayoutMode(sValue As String)`
- `setLeft(iValue As Int)`
- `SetMainAction(sText As String, sLabelText As String, sVariant As String, sIconName As String, oTagValue As Object)`
- `setMainActionIconName(sValue As String)`
- `setMainActionText(sValue As String)`
- `setMainActionVariant(sValue As String)`
- `setOnEdge(bValue As Boolean)`
- `setOpened(bValue As Boolean)`
- `setOpenMode(sValue As String)`
- `setOverlayHost(vValue As B4XView)`
- `setPlacement(sValue As String)`
- `setPlacementMode(sValue As String)`
- `setTag(oValue As Object)`
- `setTop(iValue As Int)`
- `setTriggerCircle(bValue As Boolean)`
- `setTriggerIconName(sValue As String)`
- `setTriggerIconSize(iValue As Int)`
- `setTriggerSize(sValue As String)`
- `setTriggerSizeDip(iValue As Int)`
- `setTriggerStyle(sValue As String)`
- `setTriggerText(sValue As String)`
- `setTriggerVariant(sValue As String)`
- `setUseCloseAction(bValue As Boolean)`
- `setUseMainAction(bValue As Boolean)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `Toggle`
- `UpdateTheme`
- `View As B4XView`


## 7. Public Fields
None declared.
