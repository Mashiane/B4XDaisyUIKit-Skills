# action-sheet (`B4XDaisyActionSheet`)

Bottom sheet with a list of action buttons (iOS-style menu). Supports icons, roles, and both iOS and Material Design modes.

## 1. Overview
- **Class**: `B4XDaisyActionSheet`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyActionSheet.bas`
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
- `AddButton(sId As String, sText As String, sRole As String, sIcon As String)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `Dismiss(oData As Object, sRole As String) As ResumableSub`
- `getAnimated As Boolean`
- `getBackdropDismiss As Boolean`
- `getBackdropOpacity As String`
- `getBackgroundColor As String`
- `getButtonGhosted As Boolean`
- `getButtonsColor As String`
- `getButtonSize As String`
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
- `Initialize(oCallback As Object, sEventName As String)`
- `Present As ResumableSub`
- `setAnimated(bValue As Boolean)`
- `setBackdropDismiss(bValue As Boolean)`
- `setBackdropOpacity(sValue As String)`
- `setBackgroundColor(sValue As String)`
- `SetButtonColor(sButtonId As String, sColorVariant As String)`
- `SetButtonColorByIndex(iIndex As Int, sColorVariant As String)`
- `SetButtonData(sButtonId As String, oData As Object)`
- `SetButtonDataByIndex(iIndex As Int, oData As Object)`
- `setButtonGhosted(bValue As Boolean)`
- `SetButtonIcon(sButtonId As String, sIconName As String)`
- `SetButtonIconByIndex(iIndex As Int, sIconName As String)`
- `SetButtonIconColor(sButtonId As String, sColorVariant As String)`
- `SetButtonIconColorByIndex(iIndex As Int, sColorVariant As String)`
- `setButtonsColor(sValue As String)`
- `setButtonSize(sValue As String)`
- `setHeader(sValue As String)`
- `setHeaderBold(bValue As Boolean)`
- `setIsOpen(bValue As Boolean)`
- `setKeyboardClose(bValue As Boolean)`
- `setMode(sValue As String)`
- `setOutline(bValue As Boolean)`
- `setSubHeader(sValue As String)`
- `setTextAlignment(sValue As String)`
- `setTextColor(sValue As String)`
- `setTranslucent(bValue As Boolean)`
- `View As B4XView`


## 7. Public Fields
- `mBase As B4XView`
