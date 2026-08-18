# fab (`B4XDaisyFab`)

Floating Action Button with expandable child actions. Supports multiple layout modes (vertical, flower, toolbar) and placement modes (fixed, anchored, manual).

## 1. Overview & Verification Status
- **Class**: `B4XDaisyFab`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyFab.bas`
- **Verified Demos**: `B4XPageBoomMenu.bas, B4XPageFab.bas, B4XPageFabBasic.bas, B4XPageFabFlower.bas, B4XPageFabNavbar.bas, B4XPageNavbar.bas`
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
| Open | Open | Boolean | False |  |
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
- `AddAction(TagValue As Object, Variant As String, IconName As String) As Int`
- `AddActionDetailed(Text As String, LabelText As String, Variant As String, IconName As String, TagValue As Object) As Int`
- `AddActionEx(Text As String, LabelText As String, Variant As String, Style As String, Size As String, IconName As String, Circle As Boolean, TagValue As Object) As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `ClearActions`
- `Close`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetActionButtonView(Index As Int) As B4XView`
- `GetComputedHeight As Int`
- `Initialize(Callback As Object, EventName As String)`
- `IsOpen As Boolean`
- `Open`
- `Refresh`
- `RemoveViewFromParent`
- `Resize(Width As Double, Height As Double)`
- `SendToBack`
- `SetActionVisible(Index As Int, Value As Boolean)`
- `SetCloseAction(Text As String, LabelText As String, Variant As String, IconName As String, TagValue As Object)`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `SetMainAction(Text As String, LabelText As String, Variant As String, IconName As String, TagValue As Object)`
- `Toggle`
- `UpdateTheme`
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
- `getOpen As Boolean`
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
- `setAnchorAlignment(Value As String)`
- `setAnchorTarget(Value As B4XView)`
- `setAnchorView(Value As B4XView)`
- `setAutoCloseOnActionClick(Value As Boolean)`
- `setBackdropEnabled(Value As Boolean)`
- `setChildActionIconSize(Value As Int)`
- `setChildActionSize(Value As String)`
- `setChildActionSizeDip(Value As Int)`
- `setCloseActionIconName(Value As String)`
- `setCloseActionText(Value As String)`
- `setCloseActionVariant(Value As String)`
- `setDirection(Value As String)`
- `setDuration(Value As Int)`
- `setEnabled(Value As Boolean)`
- `setHeight(Value As Int)`
- `setLayoutMode(Value As String)`
- `setLeft(Value As Int)`
- `setMainActionIconName(Value As String)`
- `setMainActionText(Value As String)`
- `setMainActionVariant(Value As String)`
- `setOnEdge(Value As Boolean)`
- `setOpen(Value As Boolean)`
- `setOpenMode(Value As String)`
- `setOverlayHost(Value As B4XView)`
- `setPlacement(Value As String)`
- `setPlacementMode(Value As String)`
- `setTag(Value As Object)`
- `setTop(Value As Int)`
- `setTriggerCircle(Value As Boolean)`
- `setTriggerIconName(Value As String)`
- `setTriggerIconSize(Value As Int)`
- `setTriggerSize(Value As String)`
- `setTriggerSizeDip(Value As Int)`
- `setTriggerStyle(Value As String)`
- `setTriggerText(Value As String)`
- `setTriggerVariant(Value As String)`
- `setUseCloseAction(Value As Boolean)`
- `setUseMainAction(Value As Boolean)`
- `setVisible(Value As Boolean)`
- `setWidth(Value As Int)`

## 7. Public Fields
None declared.
