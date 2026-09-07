# boom-menu (`B4XDaisyBoomMenu`)

DaisyUI `BoomMenu` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyBoomMenu`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyBoomMenu.bas`
- **Verified Demo Source**: B4XPageBoomMenu.bas
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
| `Enabled` | Enabled | `Boolean` | True |  |
| `Visible` | Visible | `Boolean` | True |  |
| `ButtonType` | Button Type | `String` | SimpleCircle | SimpleCircle|TextInsideCircle|TextOutsideCircle|Ham |
| `PiecePlace` | Piece Place | `String` | DOT_9_1 | DOT_1|DOT_2_1|DOT_2_2|DOT_3_1|DOT_3_2|DOT_3_3|DOT_3_4|DOT_4_1|DOT_4_2|DOT_5_1|DOT_5_2|DOT_5_3|DOT_5_4|DOT_6_1|DOT_6_2|DOT_6_3|DOT_6_4|DOT_6_5|DOT_6_6|DOT_7_1|DOT_7_2|DOT_7_3|DOT_7_4|DOT_7_5|DOT_7_6|DOT_8_1|DOT_8_2|DOT_8_3|DOT_8_4|DOT_8_5|DOT_8_6|DOT_8_7|DOT_9_1|DOT_9_2|DOT_9_3|HORIZONTAL|VERTICAL|SHARE|CUSTOM |
| `ButtonPlace` | Button Place | `String` | SC_9_1 | SC_1|SC_2_1|SC_2_2|SC_3_1|SC_3_2|SC_3_3|SC_3_4|SC_4_1|SC_4_2|SC_5_1|SC_5_2|SC_5_3|SC_5_4|SC_6_1|SC_6_2|SC_6_3|SC_6_4|SC_6_5|SC_6_6|SC_7_1|SC_7_2|SC_7_3|SC_7_4|SC_7_5|SC_7_6|SC_8_1|SC_8_2|SC_8_3|SC_8_4|SC_8_5|SC_8_6|SC_8_7|SC_9_1|SC_9_2|SC_9_3|HORIZONTAL|VERTICAL|HAM_1|HAM_2|HAM_3|HAM_4|HAM_5|HAM_6|CUSTOM |
| `BoomType` | Boom Type | `String` | H_THROW_2 | LINE|PARABOLA_1|PARABOLA_2|PARABOLA_3|PARABOLA_4|H_THROW_1|H_THROW_2|RANDOM |
| `EaseType` | Ease Type | `String` | EaseOutBack | Linear|EaseInSine|EaseOutSine|EaseInOutSine|EaseInQuad|EaseOutQuad|EaseInOutQuad|EaseInCubic|EaseOutCubic|EaseInOutCubic|EaseInQuart|EaseOutQuart|EaseInOutQuart|EaseInQuint|EaseOutQuint|EaseInOutQuint|EaseInExpo|EaseOutExpo|EaseInOutExpo|EaseInCirc|EaseOutCirc|EaseInOutCirc|EaseInBack|EaseOutBack|EaseInOutBack|EaseInElastic|EaseOutElastic|EaseInOutElastic|EaseInBounce|EaseOutBounce|EaseInOutBounce |
| `HideEaseType` | Hide Ease Type | `String` | EaseInBack | Linear|EaseInSine|EaseOutSine|EaseInOutSine|EaseInQuad|EaseOutQuad|EaseInOutQuad|EaseInCubic|EaseOutCubic|EaseInOutCubic|EaseInQuart|EaseOutQuart|EaseInOutQuart|EaseInQuint|EaseOutQuint|EaseInOutQuint|EaseInExpo|EaseOutExpo|EaseInOutExpo|EaseInCirc|EaseOutCirc|EaseInOutCirc|EaseInBack|EaseOutBack|EaseInOutBack|EaseInElastic|EaseOutElastic|EaseInOutElastic|EaseInBounce|EaseOutBounce|EaseInOutBounce |
| `OrderType` | Order Type | `String` | RANDOM | DEFAULT|REVERSE|RANDOM |
| `Duration` | Duration (ms) | `Int` | 300, MinRange: 0, MaxRange: 2000 |  |
| `PieceColor` | Piece Color | `Color` | 0xFF794DFF |  |
| `ButtonColor` | Button Color | `Color` | 0xFF794DFF |  |
| `ShadowLevel` | Shadow Level | `String` | md | none|xs|sm|md|lg|xl|2xl |
| `BackdropEnabled` | Backdrop Enabled | `Boolean` | True |  |
| `BackdropColor` | Backdrop Color | `Color` | 0x55000000 |  |
| `AutoBoom` | Auto Boom | `Boolean` | False |  |
| `BoomDelay` | Boom Delay (ms) | `Int` | 0, MinRange: 0 |  |
| `ReboomDelay` | Reboom Delay (ms) | `Int` | 0, MinRange: 0 |  |
| `RotateTrigger` | Rotate Trigger | `Boolean` | True |  |
| `RotateButtons` | Rotate Buttons | `Boolean` | True |  |
| `RotateDegree` | Rotate Degree | `Int` | 720, MinRange: 0, MaxRange: 3600 |  |
| `AutoCloseOnActionClick` | Auto Close On Action Click | `Boolean` | True |  |
| `AutoCloseOnBackgroundClick` | Auto Close On Background Click | `Boolean` | True |  |
| `TriggerIconName` | Trigger Icon | `String` |  |  |
| `TriggerText` | Trigger Text | `String` |  |  |
| `TriggerSizeDip` | Trigger Size (dip) | `Int` | 56, MinRange: 0 |  |
| `ButtonSizeDip` | Button Size (dip) | `Int` | 48, MinRange: 0 |  |
| `ButtonGapDip` | Button Gap (dip) | `Int` | 12, MinRange: 0 |  |
| `PieceSizeDip` | Piece Size (dip) | `Int` | 6, MinRange: 0 |  |
| `PieceCornerRadiusDip` | Piece Corner Radius (dip) | `Int` | 3, MinRange: 0 |  |
| `PieceHMarginDip` | Piece H-Margin (dip) | `Float` | 2.5, MinRange: 0 |  |
| `PieceVMarginDip` | Piece V-Margin (dip) | `Float` | 2.5, MinRange: 0 |  |
| `PieceIMarginDip` | Piece I-Margin (dip) | `Float` | 3.5355, MinRange: 0 |  |
| `ButtonCornerRadiusDip` | Button Corner Radius (dip) | `Int` | 24, MinRange: 0 |  |
| `HamButtonWidthDip` | Ham Button Width (dip) | `Int` | 300, MinRange: 0 |  |
| `HamButtonHeightDip` | Ham Button Height (dip) | `Int` | 60, MinRange: 0 |  |
| `HamImageSizeDip` | Ham Image Size (dip) | `Int` | 40, MinRange: 0 |  |
| `HamTitleSize` | Ham Title Size | `Int` | 14, MinRange: 0 |  |
| `HamSubSize` | Ham Sub Size | `Int` | 10, MinRange: 0 |  |

## 5. Declared Events
- `BoomButtonClick (Index As Int, Tag As Object)`
- `BackgroundClick`
- `WillShow`
- `DidShow`
- `WillHide`
- `DidHide`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Reposition(Left As Int, Top As Int, Width As Int, Height As Int)`
- `Refresh`
- `UpdateTheme`
- `Boom`
- `Reboom`
- `Toggle`
- `AddButton(Text As String, IconName As String, TagValue As Object) As Int`
- `AddButtonEx(Text As String, IconName As String, TagValue As Object, Visible As Boolean) As Int`
- `AddHamButton(Title As String, SubText As String, IconName As String, TagValue As Object) As Int`
- `SetButtonSubText(Index As Int, SubText As String)`
- `RemoveButton(Index As Int)`
- `ClearButtons`
- `SetButtonVisible(Index As Int, Value As Boolean)`
- `GetButtonView(Index As Int) As B4XView`
- `GetButtonTag(Index As Int) As Object`
- `SetButtonTag(Index As Int, TagValue As Object)`
- `setEnabled(Value As Boolean)`
- `getEnabled As Boolean`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `setOpened(Value As Boolean)`
- `setOpen(Value As Boolean)`
- `getOpened As Boolean`
- `getOpen As Boolean`
- `getIsInitialized As Boolean`
- `setDuration(Value As Int)`
- `getDuration As Int`
- `setButtonType(Value As String)`
- `getButtonType As String`
- `setPiecePlace(Value As String)`
- `getPiecePlace As String`
- `setButtonPlace(Value As String)`
- `getButtonPlace As String`
- `setButtonPlaceAlignment(Value As String)`
- `getButtonPlaceAlignment As String`
- `setBoomType(Value As String)`
- `getBoomType As String`
- `setEaseType(Value As String)`
- `getEaseType As String`
- `setHideEaseType(Value As String)`
- `getHideEaseType As String`
- `setOrderType(Value As String)`
- `getOrderType As String`
- `setPieceColor(Value As Int)`
- `getPieceColor As Int`
- `setButtonColor(Value As Int)`
- `getButtonColor As Int`
- `setShadowLevel(Value As String)`
- `getShadowLevel As String`
- `setBackdropEnabled(Value As Boolean)`
- `getBackdropEnabled As Boolean`
- `setBackdropColor(Value As Int)`
- `getBackdropColor As Int`
- `setAutoBoom(Value As Boolean)`
- `getAutoBoom As Boolean`
- `setBoomDelay(Value As Int)`
- `getBoomDelay As Int`
- `setReboomDelay(Value As Int)`
- `getReboomDelay As Int`
- `setRotateTrigger(Value As Boolean)`
- `getRotateTrigger As Boolean`
- `setAutoCloseOnActionClick(Value As Boolean)`
- `getAutoCloseOnActionClick As Boolean`
- `setAutoCloseOnBackgroundClick(Value As Boolean)`
- `getAutoCloseOnBackgroundClick As Boolean`
- `setRotateButtons(Value As Boolean)`
- `getRotateButtons As Boolean`
- `setRotateDegree(Value As Int)`
- `getRotateDegree As Int`
- `setTriggerText(Value As String)`
- `getTriggerText As String`
- `setTriggerIconName(Value As String)`
- `getTriggerIconName As String`
- `setTriggerSizeDip(Value As Int)`
- `getTriggerSizeDip As Int`
- `setButtonSizeDip(Value As Int)`
- `getButtonSizeDip As Int`
- `setButtonGapDip(Value As Int)`
- `getButtonGapDip As Int`
- `setPieceSizeDip(Value As Int)`
- `getPieceSizeDip As Int`
- `setPieceCornerRadiusDip(Value As Int)`
- `getPieceCornerRadiusDip As Int`
- `setButtonCornerRadiusDip(Value As Int)`
- `getButtonCornerRadiusDip As Int`
- `setPieceHMarginDip(Value As Float)`
- `getPieceHMarginDip As Float`
- `setPieceVMarginDip(Value As Float)`
- `getPieceVMarginDip As Float`
- `setPieceIMarginDip(Value As Float)`
- `getPieceIMarginDip As Float`
- `setHamButtonWidthDip(Value As Int)`
- `getHamButtonWidthDip As Int`
- `setHamButtonHeightDip(Value As Int)`
- `getHamButtonHeightDip As Int`
- `setHamImageSizeDip(Value As Int)`
- `getHamImageSizeDip As Int`
- `setHamTitleSize(Value As Int)`
- `getHamTitleSize As Int`
- `setHamSubSize(Value As Int)`
- `getHamSubSize As Int`
- `GetState As String`
- `GetButtonCount As Int`
- `BuildRuntimeProps As Map`
- `RemoveViewFromParent`
- `Base_Resize(Width As Double, Height As Double)`
- `boomtrigger_Click(Tag As Object)`
- `boombutton_Click(Tag As Object)`
- `boombtn_Click`
- `boombackdrop_Click`
- `View As B4XView`

## 7. Public Fields
(none declared in packaged source)

## Canonical Creation Pattern & Recipe

`B4XDaisyBoomMenu` provides a floating action button expanding into radial circular sub-buttons.

```vb
Dim boom As B4XDaisyBoomMenu
boom.Initialize(Me, "boom")
boom.AddToParent(Root, Root.Width - 72dip, Root.Height - 72dip, 56dip, 56dip)
boom.ButtonShape = "circle"
boom.PiecePlaceEnum = "DOT_9_1"
boom.ButtonPlaceEnum = "SC_9_1"

' Add sub-buttons:
boom.AddButton("scan", "qrcode-solid.svg", "Scan SKU", "primary")
boom.AddButton("add", "plus-solid.svg", "Manual Entry", "secondary")

' Click event:
Private Sub boom_BoomClick(Index As Int, Tag As Object)
    Log("Boom item clicked: " & Tag)
End Sub
```
