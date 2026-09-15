# action-sheet (`B4XDaisyActionSheet`)

DaisyUI `ActionSheet` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyActionSheet`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyActionSheet.bas`
- **Verified Demo Source**: B4XPageActionSheet.bas
- **Web DaisyUI Mapping**: `.action-sheet` → `B4XDaisyActionSheet`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub btnBasic_Click(Tag As Object)
	asBasic.Initialize(Me, "asBasic")
	asBasic.AddToParent(Root, 0, 0, Root.Width, Root.Height)
	asBasic.Header = "Albums"
	asBasic.SubHeader = "Select an album to play"
	asBasic.Outline = False
	asBasic.TextAlignment = "left"
    
	asBasic.AddButton("delete", "Delete", "destructive", "")
	asBasic.AddButton("share", "Share", "", "")
	asBasic.AddButton("play", "Play", "", "")
	asBasic.AddButton("cancel", "Cancel", "cancel", "")
    
	asBasic.Present
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyActionSheet` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
5. **Execution / Assembly:** Modal/Dialog/Toast lifecycle requiring `.Show` / `.Present` / `.ShowModal` / `.ShowActionSheet` presentation call after configuration.

### Deviation Mechanism
- Modal/Dialog/Toast lifecycle requiring `.Show` / `.Present` / `.ShowModal` / `.ShowActionSheet` presentation call after configuration.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `SetButtonDataByIndex, SetButtonIcon, SetButtonIconByIndex` (+ 33 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Header` | Header | `String` |  |  |
| `SubHeader` | SubHeader | `String` |  |  |
| `Animated` | Animated | `Boolean` | True |  |
| `BackdropDismiss` | Backdrop Dismiss | `Boolean` | True |  |
| `KeyboardClose` | Keyboard Close | `Boolean` | True |  |
| `Translucent` | Translucent | `Boolean` | False |  |
| `Mode` | Mode | `String` | md | ios|md |
| `ButtonSize` | Button Size | `String` | md | xs|sm|md|lg|xl |
| `TextAlignment` | Text Alignment | `String` | left | left|center|right |
| `BackgroundColor` | Background Color | `String` | base-100 | base-100|base-200|base-300|primary|secondary|accent|neutral|info|success|warning|error |
| `BackdropOpacity` | Backdrop Opacity | `String` | 0.4 |  |
| `ButtonsColor` | Buttons Color | `String` | default | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| `TextColor` | Text Color | `String` | base-content | base-content|base-100|primary|secondary|accent|neutral|info|success|warning|error |
| `HeaderBold` | Header Bold | `Boolean` | False |  |
| `ButtonGhosted` | Button Ghosted | `Boolean` | True |  |

## 5. Declared Events
- `DidPresent`
- `WillPresent`
- `DidDismiss (Data As Object, Role As String)`
- `WillDismiss (Data As Object, Role As String)`
- `ButtonClick (ButtonId As String, Data As Object)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, EventName As String)`
- `AddButton(Id As String, Text As String, Role As String, Icon As String)`
- `SetButtonData(ButtonId As String, Data As Object)`
- `SetButtonDataByIndex(Index As Int, Data As Object)`
- `SetButtonIcon(ButtonId As String, IconName As String)`
- `SetButtonIconByIndex(Index As Int, IconName As String)`
- `SetButtonIconColor(ButtonId As String, ColorVariant As String)`
- `SetButtonIconColorByIndex(Index As Int, ColorVariant As String)`
- `SetButtonColor(ButtonId As String, ColorVariant As String)`
- `SetButtonColorByIndex(Index As Int, ColorVariant As String)`
- `setIsOpen(Value As Boolean)`
- `getIsOpen As Boolean`
- `Present As ResumableSub`
- `Dismiss(Data As Object, Role As String) As ResumableSub`
- `CreateView(Width As Int, Height As Int) As B4XView`
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `setHeader(Value As String)`
- `getHeader As String`
- `setSubHeader(Value As String)`
- `getSubHeader As String`
- `setAnimated(Value As Boolean)`
- `getAnimated As Boolean`
- `setBackdropDismiss(Value As Boolean)`
- `getBackdropDismiss As Boolean`
- `setKeyboardClose(Value As Boolean)`
- `getKeyboardClose As Boolean`
- `setTranslucent(Value As Boolean)`
- `getTranslucent As Boolean`
- `setMode(Value As String)`
- `getMode As String`
- `setOutline(Value As Boolean)`
- `getOutline As Boolean`
- `setButtonSize(Value As String)`
- `getButtonSize As String`
- `setTextAlignment(Value As String)`
- `getTextAlignment As String`
- `setBackgroundColor(Value As String)`
- `getBackgroundColor As String`
- `setBackdropOpacity(Value As String)`
- `getBackdropOpacity As String`
- `setButtonsColor(Value As String)`
- `getButtonsColor As String`
- `setTextColor(Value As String)`
- `getTextColor As String`
- `setHeaderBold(Value As Boolean)`
- `getHeaderBold As Boolean`
- `setButtonGhosted(Value As Boolean)`
- `getButtonGhosted As Boolean`
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

## Canonical Creation Pattern & Recipe

`B4XDaisyActionSheet` provides a bottom sheet action sheet with option items and a cancel action.

```vb
Dim asSheet As B4XDaisyActionSheet
asSheet.Initialize(Me, "asSheet")
asSheet.AddToParent(Root, 0, 0, Root.Width, Root.Height)
asSheet.Title = "Select Action"
asSheet.Message = "Choose an operation to perform"

' Add action buttons:
asSheet.AddAction("edit", "Edit Record", "pencil-solid.svg", "default")
asSheet.AddAction("share", "Share Report", "share-solid.svg", "primary")
asSheet.AddAction("delete", "Delete Record", "trash-solid.svg", "error")
asSheet.SetCancelButton("Cancel")

' Open:
asSheet.Show

' Action click event:
Private Sub asSheet_ActionClick(ActionId As String)
    If B4XDaisyApp.DebugLogs Then Log("Action selected: " & ActionId)
    asSheet.Dismiss
End Sub
```
