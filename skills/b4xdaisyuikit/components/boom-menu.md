# boom-menu (`B4XDaisyBoomMenu`)

DaisyUI `BoomMenu` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyBoomMenu`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyBoomMenu.bas`
- **Verified Demo Source**: B4XPageBoomMenu.bas (lines 15–137)
- **Web DaisyUI Mapping**: `.boom-menu` → `B4XDaisyBoomMenu`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub EnsureBoomAdded(Width As Int, Height As Int)
    If Width <= 0 Or Height <= 0 Then Return
    ' Note: do NOT guard on boom.getIsInitialized here - that checks mBase, which is
    ' only created inside AddToParent. BuildBoomMenu (boom.Initialize) runs first, so
    ' the instance is valid; the Try/Catch covers any failure.
    Dim margin As Int = 24dip
    Dim sz As Int = 56dip
    Dim bLeft As Int = Width - sz - margin
    Dim bTop As Int = Height - sz - margin
    Try
        If mbBoomAdded = False Then
            Log("BoomPage: Adding boom to Root at " & bLeft & "," & bTop & " " & sz & "x" & sz)
            boom.AddToParent(Root, bLeft, bTop, sz, sz)
            mbBoomAdded = True
            Log("BoomPage: boom added, isInit=" & boom.getIsInitialized)
        Else
            boom.Reposition(bLeft, bTop, sz, sz)
        End If
    Catch
        Log("B4XPageBoomMenu.EnsureBoomAdded: " & LastException.Message)
    End Try
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyBoomMenu` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
5. **Execution / Assembly:** Dynamic radial action menu requiring builder pattern, piece placement manager, and button place manager configuration before `.Build`.

### Deviation Mechanism
- Dynamic radial action menu requiring builder pattern, piece placement manager, and button place manager configuration before `.Build`.

### Preconditions & Gotchas
- Dynamic programmatic resizing requires calling `.Resize` or updating bounds to ensure inner canvas/background repaints properly.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `UpdateTheme, Reboom, AddButtonEx` (+ 77 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Enabled` | Enabled | `Boolean` | `True` |  |
| `Visible` | Visible | `Boolean` | `True` |  |
| `ButtonType` | Button Type | `String` | `SimpleCircle` | SimpleCircle|TextInsideCircle|TextOutsideCircle|Ham |
| `PiecePlace` | Piece Place | `String` | `DOT_9_1` | DOT_1|DOT_2_1|DOT_2_2|DOT_3_1|DOT_3_2|DOT_3_3|DOT_3_4|DOT_4_1|DOT_4_2|DOT_5_1|DOT_5_2|DOT_5_3|DOT_5_4|DOT_6_1|DOT_6_2|DOT_6_3|DOT_6_4|DOT_6_5|DOT_6_6|DOT_7_1|DOT_7_2|DOT_7_3|DOT_7_4|DOT_7_5|DOT_7_6|DOT_8_1|DOT_8_2|DOT_8_3|DOT_8_4|DOT_8_5|DOT_8_6|DOT_8_7|DOT_9_1|DOT_9_2|DOT_9_3|HORIZONTAL|VERTICAL|SHARE|CUSTOM |
| `ButtonPlace` | Button Place | `String` | `SC_9_1` | SC_1|SC_2_1|SC_2_2|SC_3_1|SC_3_2|SC_3_3|SC_3_4|SC_4_1|SC_4_2|SC_5_1|SC_5_2|SC_5_3|SC_5_4|SC_6_1|SC_6_2|SC_6_3|SC_6_4|SC_6_5|SC_6_6|SC_7_1|SC_7_2|SC_7_3|SC_7_4|SC_7_5|SC_7_6|SC_8_1|SC_8_2|SC_8_3|SC_8_4|SC_8_5|SC_8_6|SC_8_7|SC_9_1|SC_9_2|SC_9_3|HORIZONTAL|VERTICAL|HAM_1|HAM_2|HAM_3|HAM_4|HAM_5|HAM_6|CUSTOM |
| `BoomType` | Boom Type | `String` | `H_THROW_2` | LINE|PARABOLA_1|PARABOLA_2|PARABOLA_3|PARABOLA_4|H_THROW_1|H_THROW_2|RANDOM |
| `EaseType` | Ease Type | `String` | `EaseOutBack` | Linear|EaseInSine|EaseOutSine|EaseInOutSine|EaseInQuad|EaseOutQuad|EaseInOutQuad|EaseInCubic|EaseOutCubic|EaseInOutCubic|EaseInQuart|EaseOutQuart|EaseInOutQuart|EaseInQuint|EaseOutQuint|EaseInOutQuint|EaseInExpo|EaseOutExpo|EaseInOutExpo|EaseInCirc|EaseOutCirc|EaseInOutCirc|EaseInBack|EaseOutBack|EaseInOutBack|EaseInElastic|EaseOutElastic|EaseInOutElastic|EaseInBounce|EaseOutBounce|EaseInOutBounce |
| `HideEaseType` | Hide Ease Type | `String` | `EaseInBack` | Linear|EaseInSine|EaseOutSine|EaseInOutSine|EaseInQuad|EaseOutQuad|EaseInOutQuad|EaseInCubic|EaseOutCubic|EaseInOutCubic|EaseInQuart|EaseOutQuart|EaseInOutQuart|EaseInQuint|EaseOutQuint|EaseInOutQuint|EaseInExpo|EaseOutExpo|EaseInOutExpo|EaseInCirc|EaseOutCirc|EaseInOutCirc|EaseInBack|EaseOutBack|EaseInOutBack|EaseInElastic|EaseOutElastic|EaseInOutElastic|EaseInBounce|EaseOutBounce|EaseInOutBounce |
| `OrderType` | Order Type | `String` | `RANDOM` | DEFAULT|REVERSE|RANDOM |
| `Duration` | Duration (ms) | `Int` | `300` |  |
| `PieceColor` | Piece Color | `Color` | `0xFF794DFF` |  |
| `ButtonColor` | Button Color | `Color` | `0xFF794DFF` |  |
| `ShadowLevel` | Shadow Level | `String` | `md` | none|xs|sm|md|lg|xl|2xl |
| `BackdropEnabled` | Backdrop Enabled | `Boolean` | `True` |  |
| `BackdropColor` | Backdrop Color | `Color` | `0x55000000` |  |
| `AutoBoom` | Auto Boom | `Boolean` | `False` |  |
| `BoomDelay` | Boom Delay (ms) | `Int` | `0` |  |
| `ReboomDelay` | Reboom Delay (ms) | `Int` | `0` |  |
| `RotateTrigger` | Rotate Trigger | `Boolean` | `True` |  |
| `RotateButtons` | Rotate Buttons | `Boolean` | `True` |  |
| `RotateDegree` | Rotate Degree | `Int` | `720` |  |
| `AutoCloseOnActionClick` | Auto Close On Action Click | `Boolean` | `True` |  |
| `AutoCloseOnBackgroundClick` | Auto Close On Background Click | `Boolean` | `True` |  |
| `TriggerIconName` | Trigger Icon | `String` | `` |  |
| `TriggerText` | Trigger Text | `String` | `` |  |
| `TriggerSizeDip` | Trigger Size (dip) | `Int` | `56` |  |
| `ButtonSizeDip` | Button Size (dip) | `Int` | `48` |  |
| `ButtonGapDip` | Button Gap (dip) | `Int` | `12` |  |
| `PieceSizeDip` | Piece Size (dip) | `Int` | `6` |  |
| `PieceCornerRadiusDip` | Piece Corner Radius (dip) | `Int` | `3` |  |
| `PieceHMarginDip` | Piece H-Margin (dip) | `Float` | `2.5` |  |
| `PieceVMarginDip` | Piece V-Margin (dip) | `Float` | `2.5` |  |
| `PieceIMarginDip` | Piece I-Margin (dip) | `Float` | `3.5355` |  |
| `ButtonCornerRadiusDip` | Button Corner Radius (dip) | `Int` | `24` |  |
| `HamButtonWidthDip` | Ham Button Width (dip) | `Int` | `300` |  |
| `HamButtonHeightDip` | Ham Button Height (dip) | `Int` | `60` |  |
| `HamImageSizeDip` | Ham Image Size (dip) | `Int` | `40` |  |
| `HamTitleSize` | Ham Title Size | `Int` | `14` |  |
| `HamSubSize` | Ham Sub Size | `Int` | `10` |  |

## 5. Declared Events
- `BoomButtonClick (Index As Int, Tag As Object)`
- `BackgroundClick`
- `WillShow`
- `DidShow`
- `WillHide`
- `DidHide`

## 6. Public Methods & APIs
- `AddButton(sText As String, sIconName As String, oTagValue As Object) As Int`
- `AddButtonEx(sText As String, sIconName As String, oTagValue As Object, bVisible As Boolean) As Int`
- `AddHamButton(sTitle As String, sSubText As String, sIconName As String, oTagValue As Object) As Int`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `Boom`
- `BuildRuntimeProps As Map`
- `ClearButtons`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetButtonCount As Int`
- `GetButtonTag(iIndex As Int) As Object`
- `GetButtonView(iIndex As Int) As B4XView`
- `GetState As String`
- `Initialize(oCallback As Object, sEventName As String)`
- `Reboom`
- `Refresh`
- `RemoveButton(iIndex As Int)`
- `RemoveViewFromParent`
- `Reposition(iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `SetButtonSubText(iIndex As Int, sSubText As String)`
- `SetButtonTag(iIndex As Int, oTagValue As Object)`
- `SetButtonVisible(iIndex As Int, bValue As Boolean)`
- `Toggle`
- `UpdateTheme`
- `View As B4XView`
- `boombackdrop_Click`
- `boombtn_Click`
- `boombutton_Click(oTag As Object)`
- `boomtrigger_Click(oTag As Object)`
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
- `getOpened As Boolean`
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
- `setAutoBoom(bValue As Boolean)`
- `setAutoCloseOnActionClick(bValue As Boolean)`
- `setAutoCloseOnBackgroundClick(bValue As Boolean)`
- `setBackdropColor(iValue As Int)`
- `setBackdropEnabled(bValue As Boolean)`
- `setBoomDelay(iValue As Int)`
- `setBoomType(sValue As String)`
- `setButtonColor(iValue As Int)`
- `setButtonCornerRadiusDip(iValue As Int)`
- `setButtonGapDip(iValue As Int)`
- `setButtonPlace(sValue As String)`
- `setButtonPlaceAlignment(sValue As String)`
- `setButtonSizeDip(iValue As Int)`
- `setButtonType(sValue As String)`
- `setDuration(iValue As Int)`
- `setEaseType(sValue As String)`
- `setEnabled(bValue As Boolean)`
- `setHamButtonHeightDip(iValue As Int)`
- `setHamButtonWidthDip(iValue As Int)`
- `setHamImageSizeDip(iValue As Int)`
- `setHamSubSize(iValue As Int)`
- `setHamTitleSize(iValue As Int)`
- `setHideEaseType(sValue As String)`
- `setOpen(bValue As Boolean)`
- `setOpened(bValue As Boolean)`
- `setOrderType(sValue As String)`
- `setPieceColor(iValue As Int)`
- `setPieceCornerRadiusDip(iValue As Int)`
- `setPieceHMarginDip(fValue As Float)`
- `setPieceIMarginDip(fValue As Float)`
- `setPiecePlace(sValue As String)`
- `setPieceSizeDip(iValue As Int)`
- `setPieceVMarginDip(fValue As Float)`
- `setReboomDelay(iValue As Int)`
- `setRotateButtons(bValue As Boolean)`
- `setRotateDegree(iValue As Int)`
- `setRotateTrigger(bValue As Boolean)`
- `setShadowLevel(sValue As String)`
- `setTriggerIconName(sValue As String)`
- `setTriggerSizeDip(iValue As Int)`
- `setTriggerText(sValue As String)`
- `setVisible(bValue As Boolean)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

