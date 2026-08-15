# action-sheet (`B4XDaisyActionSheet`)

Bottom sheet with a list of action buttons (iOS-style menu). Supports icons, roles, and both iOS and Material Design modes.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyActionSheet`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyActionSheet.bas`
- **Verified Demos**: `B4XPageActionSheet.bas`
- **Web DaisyUI Mapping**: `.action-sheet` → `B4XDaisyActionSheet`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim sheet As B4XDaisyActionSheet
sheet.Initialize(Me, "sheet")
sheet.Header = "Choose action"
sheet.Mode = "md"
sheet.ButtonsColor = "primary"
sheet.AddButton("btn_edit", "Edit", "default", "pencil-solid.svg")
sheet.AddButton("btn_delete", "Delete", "destructive", "trash-solid.svg")
Wait For (sheet.Present) sheet_DidPresent

```

## 3. Native Composition Rules & Gotchas
- Must use the `Wait For (sheet.Present) sheet_DidPresent` async presentation pattern.
- Do NOT call `AddToParent` — this component presents itself as a floating modal overlay.
- Button with `Role = "cancel"` automatically renders at the bottom separated from the action list.
- Button with `Role = "destructive"` automatically applies error/danger styling.
- Handle user selections in the `ButtonClick (ButtonId As String, Data As Object)` event.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Header | Header | String |  |  |
| SubHeader | SubHeader | String |  |  |
| Animated | Animated | Boolean | True |  |
| BackdropDismiss | Backdrop Dismiss | Boolean | True |  |
| KeyboardClose | Keyboard Close | Boolean | True |  |
| Translucent | Translucent | Boolean | False |  |
| Mode | Mode | String | md | ios|md |
| ButtonSize | Button Size | String | md | xs|sm|md|lg|xl |
| TextAlignment | Text Alignment | String | left | left|center|right |
| BackgroundColor | Background Color | String | base-100 | base-100|base-200|base-300|primary|secondary|accent|neutral|info|success|warning|error |
| BackdropOpacity | Backdrop Opacity | String | 0.4 |  |
| ButtonsColor | Buttons Color | String | default | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| TextColor | Text Color | String | base-content | base-content|base-100|primary|secondary|accent|neutral|info|success|warning|error |
| HeaderBold | Header Bold | Boolean | False |  |
| ButtonGhosted | Button Ghosted | Boolean | True |  |

## 5. Declared Events
- `DidPresent`
- `WillPresent`
- `DidDismiss (Data As Object, Role As String)`
- `WillDismiss (Data As Object, Role As String)`
- `ButtonClick (ButtonId As String, Data As Object)`

## 6. Public Methods & APIs
- `AddButton(Id As String, Text As String, Role As String, Icon As String)`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `Dismiss(Data As Object, Role As String) As ResumableSub`
- `Initialize(Callback As Object, EventName As String)`
- `Present As ResumableSub`
- `SetButtonColor(ButtonId As String, ColorVariant As String)`
- `SetButtonColorByIndex(Index As Int, ColorVariant As String)`
- `SetButtonData(ButtonId As String, Data As Object)`
- `SetButtonDataByIndex(Index As Int, Data As Object)`
- `SetButtonIcon(ButtonId As String, IconName As String)`
- `SetButtonIconByIndex(Index As Int, IconName As String)`
- `SetButtonIconColor(ButtonId As String, ColorVariant As String)`
- `SetButtonIconColorByIndex(Index As Int, ColorVariant As String)`
- `getAnimated As Boolean`
- `getBackdropDismiss As Boolean`
- `getBackdropOpacity As String`
- `getBackgroundColor As String`
- `getButtonGhosted As Boolean`
- `getButtonSize As String`
- `getButtonsColor As String`
- `getHeader As String`
- `getHeaderBold As Boolean`
- `getIsOpen As Boolean`
- `getKeyboardClose As Boolean`
- `getMode As String`
- `getOutline As Boolean`
- `getSubHeader As String`
- `getTextAlignment As String`
- `getTextColor As String`
- `getTranslucent As Boolean`
- `setAnimated(Value As Boolean)`
- `setBackdropDismiss(Value As Boolean)`
- `setBackdropOpacity(Value As String)`
- `setBackgroundColor(Value As String)`
- `setButtonGhosted(Value As Boolean)`
- `setButtonSize(Value As String)`
- `setButtonsColor(Value As String)`
- `setHeader(Value As String)`
- `setHeaderBold(Value As Boolean)`
- `setIsOpen(Value As Boolean)`
- `setKeyboardClose(Value As Boolean)`
- `setMode(Value As String)`
- `setOutline(Value As Boolean)`
- `setSubHeader(Value As String)`
- `setTextAlignment(Value As String)`
- `setTextColor(Value As String)`
- `setTranslucent(Value As Boolean)`

## 7. Public Fields
- `mBase As B4XView`
