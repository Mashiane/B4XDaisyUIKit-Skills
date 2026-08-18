# boom-menu (`B4XDaisyBoomMenu`)

Multi-directional animated radial/boom button menu that explodes child buttons in circular, grid, or line patterns.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyBoomMenu`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyBoomMenu.bas`
- **Verified Demos**: `B4XPageBoomMenu.bas`
- **Web DaisyUI Mapping**: `.boom-menu` → `B4XDaisyBoomMenu`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim bm As B4XDaisyBoomMenu
bm.Initialize(Me, "bm")
bm.AddToParent(Root, Root.Width - 60dip, Root.Height - 60dip, 56dip, 56dip)
bm.AddButton("action1", "star-solid.svg", xui.Color_Red)
bm.AddButton("action2", "heart-solid.svg", xui.Color_Blue)
```

## 3. Native Composition Rules & Gotchas
- Mount on `Root` near a screen corner so expanding buttons do not get clipped.
- Match `PiecePlaceType` and `ButtonPlaceType` for balanced geometric radial expansion.
- Set `ShowDim = True` and `AutoDismiss = True` to dim the backdrop and close on outside taps.
- Add child buttons using `AddSimpleCircleButton`, `AddTextInsideCircleButton`, or `AddHamButton`.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Enabled | Enabled | Boolean | True |  |
| Visible | Visible | Boolean | True |  |
| ButtonType | Button Type | String | SimpleCircle | SimpleCircle|TextInsideCircle|TextOutsideCircle|Ham |
| PiecePlace | Piece Place | String | DOT_9_1 | DOT_1|DOT_2_1|DOT_2_2|DOT_3_1|DOT_3_2|DOT_3_3|DOT_3_4|DOT_4_1|DOT_4_2|DOT_5_1|DOT_5_2|DOT_5_3|DOT_5_4|DOT_6_1|DOT_6_2|DOT_6_3|DOT_6_4|DOT_6_5|DOT_6_6|DOT_7_1|DOT_7_2|DOT_7_3|DOT_7_4|DOT_7_5|DOT_7_6|DOT_8_1|DOT_8_2|DOT_8_3|DOT_8_4|DOT_8_5|DOT_8_6|DOT_8_7|DOT_9_1|DOT_9_2|DOT_9_3|HORIZONTAL|VERTICAL|SHARE|CUSTOM |
| ButtonPlace | Button Place | String | SC_9_1 | SC_1|SC_2_1|SC_2_2|SC_3_1|SC_3_2|SC_3_3|SC_3_4|SC_4_1|SC_4_2|SC_5_1|SC_5_2|SC_5_3|SC_5_4|SC_6_1|SC_6_2|SC_6_3|SC_6_4|SC_6_5|SC_6_6|SC_7_1|SC_7_2|SC_7_3|SC_7_4|SC_7_5|SC_7_6|SC_8_1|SC_8_2|SC_8_3|SC_8_4|SC_8_5|SC_8_6|SC_8_7|SC_9_1|SC_9_2|SC_9_3|HORIZONTAL|VERTICAL|HAM_1|HAM_2|HAM_3|HAM_4|HAM_5|HAM_6|CUSTOM |
| BoomType | Boom Type | String | H_THROW_2 | LINE|PARABOLA_1|PARABOLA_2|PARABOLA_3|PARABOLA_4|H_THROW_1|H_THROW_2|RANDOM |
| EaseType | Ease Type | String | EaseOutBack | Linear|EaseInSine|EaseOutSine|EaseInOutSine|EaseInQuad|EaseOutQuad|EaseInOutQuad|EaseInCubic|EaseOutCubic|EaseInOutCubic|EaseInQuart|EaseOutQuart|EaseInOutQuart|EaseInQuint|EaseOutQuint|EaseInOutQuint|EaseInExpo|EaseOutExpo|EaseInOutExpo|EaseInCirc|EaseOutCirc|EaseInOutCirc|EaseInBack|EaseOutBack|EaseInOutBack|EaseInElastic|EaseOutElastic|EaseInOutElastic|EaseInBounce|EaseOutBounce|EaseInOutBounce |
| HideEaseType | Hide Ease Type | String | EaseInBack | Linear|EaseInSine|EaseOutSine|EaseInOutSine|EaseInQuad|EaseOutQuad|EaseInOutQuad|EaseInCubic|EaseOutCubic|EaseInOutCubic|EaseInQuart|EaseOutQuart|EaseInOutQuart|EaseInQuint|EaseOutQuint|EaseInOutQuint|EaseInExpo|EaseOutExpo|EaseInOutExpo|EaseInCirc|EaseOutCirc|EaseInOutCirc|EaseInBack|EaseOutBack|EaseInOutBack|EaseInElastic|EaseOutElastic|EaseInOutElastic|EaseInBounce|EaseOutBounce|EaseInOutBounce |
| OrderType | Order Type | String | RANDOM | DEFAULT|REVERSE|RANDOM |
| Duration | Duration (ms) | Int | 300 |  |
| PieceColor | Piece Color | Color | 0xFF794DFF |  |
| ButtonColor | Button Color | Color | 0xFF794DFF |  |
| ShadowLevel | Shadow Level | String | md | none|xs|sm|md|lg|xl|2xl |
| BackdropEnabled | Backdrop Enabled | Boolean | True |  |
| BackdropColor | Backdrop Color | Color | 0x55000000 |  |
| AutoBoom | Auto Boom | Boolean | False |  |
| BoomDelay | Boom Delay (ms) | Int | 0 |  |
| ReboomDelay | Reboom Delay (ms) | Int | 0 |  |
| RotateTrigger | Rotate Trigger | Boolean | True |  |
| RotateButtons | Rotate Buttons | Boolean | True |  |
| RotateDegree | Rotate Degree | Int | 720 |  |
| AutoCloseOnActionClick | Auto Close On Action Click | Boolean | True |  |
| AutoCloseOnBackgroundClick | Auto Close On Background Click | Boolean | True |  |
| TriggerIconName | Trigger Icon | String |  |  |
| TriggerText | Trigger Text | String |  |  |
| TriggerSizeDip | Trigger Size (dip) | Int | 56 |  |
| ButtonSizeDip | Button Size (dip) | Int | 48 |  |
| ButtonGapDip | Button Gap (dip) | Int | 12 |  |
| PieceSizeDip | Piece Size (dip) | Int | 6 |  |
| PieceCornerRadiusDip | Piece Corner Radius (dip) | Int | 3 |  |
| PieceHMarginDip | Piece H-Margin (dip) | Float | 2.5 |  |
| PieceVMarginDip | Piece V-Margin (dip) | Float | 2.5 |  |
| PieceIMarginDip | Piece I-Margin (dip) | Float | 3.5355 |  |
| ButtonCornerRadiusDip | Button Corner Radius (dip) | Int | 24 |  |
| HamButtonWidthDip | Ham Button Width (dip) | Int | 300 |  |
| HamButtonHeightDip | Ham Button Height (dip) | Int | 60 |  |
| HamImageSizeDip | Ham Image Size (dip) | Int | 40 |  |
| HamTitleSize | Ham Title Size | Int | 14 |  |
| HamSubSize | Ham Sub Size | Int | 10 |  |

## 5. Declared Events
- `BoomButtonClick (Index As Int, Tag As Object)`
- `BackgroundClick`
- `WillShow`
- `DidShow`
- `WillHide`
- `DidHide`

## 6. Public Methods & APIs
- `AddButton(Text As String, IconName As String, TagValue As Object) As Int`
- `AddButtonEx(Text As String, IconName As String, TagValue As Object, Visible As Boolean) As Int`
- `AddHamButton(Title As String, SubText As String, IconName As String, TagValue As Object) As Int`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `Boom`
- `BuildRuntimeProps As Map`
- `ClearButtons`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetButtonCount As Int`
- `GetButtonTag(Index As Int) As Object`
- `GetButtonView(Index As Int) As B4XView`
- `GetState As String`
- `Initialize(Callback As Object, EventName As String)`
- `Reboom`
- `Refresh`
- `RemoveButton(Index As Int)`
- `RemoveViewFromParent`
- `Reposition(Left As Int, Top As Int, Width As Int, Height As Int)`
- `SetButtonSubText(Index As Int, SubText As String)`
- `SetButtonTag(Index As Int, TagValue As Object)`
- `SetButtonVisible(Index As Int, Value As Boolean)`
- `Toggle`
- `UpdateTheme`
- `boombackdrop_Click`
- `boombtn_Click`
- `boombutton_Click(Tag As Object)`
- `boomtrigger_Click(Tag As Object)`
- `getAutoBoom As Boolean`
- `getAutoCloseOnActionClick As Boolean`
- `getAutoCloseOnBackgroundClick As Boolean`
- `getBackdropColor As Int`
- `getBackdropEnabled As Boolean`
- `getBoomDelay As Int`
- `getBoomType As String`
- `getButtonColor As Int`
- `getButtonCornerRadiusDip As Int`
- `getButtonGapDip As Int`
- `getButtonPlace As String`
- `getButtonPlaceAlignment As String`
- `getButtonSizeDip As Int`
- `getButtonType As String`
- `getDuration As Int`
- `getEaseType As String`
- `getEnabled As Boolean`
- `getHamButtonHeightDip As Int`
- `getHamButtonWidthDip As Int`
- `getHamImageSizeDip As Int`
- `getHamSubSize As Int`
- `getHamTitleSize As Int`
- `getHideEaseType As String`
- `getIsInitialized As Boolean`
- `getOpen As Boolean`
- `getOrderType As String`
- `getPieceColor As Int`
- `getPieceCornerRadiusDip As Int`
- `getPieceHMarginDip As Float`
- `getPieceIMarginDip As Float`
- `getPiecePlace As String`
- `getPieceSizeDip As Int`
- `getPieceVMarginDip As Float`
- `getReboomDelay As Int`
- `getRotateButtons As Boolean`
- `getRotateDegree As Int`
- `getRotateTrigger As Boolean`
- `getShadowLevel As String`
- `getTriggerIconName As String`
- `getTriggerSizeDip As Int`
- `getTriggerText As String`
- `getVisible As Boolean`
- `setAutoBoom(Value As Boolean)`
- `setAutoCloseOnActionClick(Value As Boolean)`
- `setAutoCloseOnBackgroundClick(Value As Boolean)`
- `setBackdropColor(Value As Int)`
- `setBackdropEnabled(Value As Boolean)`
- `setBoomDelay(Value As Int)`
- `setBoomType(Value As String)`
- `setButtonColor(Value As Int)`
- `setButtonCornerRadiusDip(Value As Int)`
- `setButtonGapDip(Value As Int)`
- `setButtonPlace(Value As String)`
- `setButtonPlaceAlignment(Value As String)`
- `setButtonSizeDip(Value As Int)`
- `setButtonType(Value As String)`
- `setDuration(Value As Int)`
- `setEaseType(Value As String)`
- `setEnabled(Value As Boolean)`
- `setHamButtonHeightDip(Value As Int)`
- `setHamButtonWidthDip(Value As Int)`
- `setHamImageSizeDip(Value As Int)`
- `setHamSubSize(Value As Int)`
- `setHamTitleSize(Value As Int)`
- `setHideEaseType(Value As String)`
- `setOpen(Value As Boolean)`
- `setOrderType(Value As String)`
- `setPieceColor(Value As Int)`
- `setPieceCornerRadiusDip(Value As Int)`
- `setPieceHMarginDip(Value As Float)`
- `setPieceIMarginDip(Value As Float)`
- `setPiecePlace(Value As String)`
- `setPieceSizeDip(Value As Int)`
- `setPieceVMarginDip(Value As Float)`
- `setReboomDelay(Value As Int)`
- `setRotateButtons(Value As Boolean)`
- `setRotateDegree(Value As Int)`
- `setRotateTrigger(Value As Boolean)`
- `setShadowLevel(Value As String)`
- `setTriggerIconName(Value As String)`
- `setTriggerSizeDip(Value As Int)`
- `setTriggerText(Value As String)`
- `setVisible(Value As Boolean)`

## 7. Public Fields
None declared.

## 8. Compound Sub-Components & Geometric Engines
- **`B4XDaisyBoomPathManager`**: Generates vector expansion paths and circular/spiral trajectories for exploding buttons.
- **`B4XDaisyButtonPlaceManager`**: Calculates geometric layout slots and coordinates for child action buttons (`circular`, `grid`, `sc_9_1`).
- **`B4XDaisyPiecePlaceManager`**: Computes dot/piece indicator placements on the main trigger button.
