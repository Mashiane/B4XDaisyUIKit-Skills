# action-sheet (`B4XDaisyActionSheet`)

DaisyUI `ActionSheet` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyActionSheet`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisyActionSheet.bas`
- **Verified Demo Source**: B4XPageActionSheet.bas (lines 28–34)
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
| `Header` | Header | `String` | `` |  |
| `SubHeader` | SubHeader | `String` | `` |  |
| `Animated` | Animated | `Boolean` | `True` |  |
| `BackdropDismiss` | Backdrop Dismiss | `Boolean` | `True` |  |
| `KeyboardClose` | Keyboard Close | `Boolean` | `True` |  |
| `Translucent` | Translucent | `Boolean` | `False` |  |
| `Mode` | Mode | `String` | `md` | ios|md |
| `ButtonSize` | Button Size | `String` | `md` | xs|sm|md|lg|xl |
| `TextAlignment` | Text Alignment | `String` | `left` | left|center|right |
| `BackgroundColor` | Background Color | `String` | `base-100` | base-100|base-200|base-300|primary|secondary|accent|neutral|info|success|warning|error |
| `BackdropOpacity` | Backdrop Opacity | `String` | `0.4` |  |
| `ButtonsColor` | Buttons Color | `String` | `default` | default|neutral|primary|secondary|accent|info|success|warning|error|none |
| `TextColor` | Text Color | `String` | `base-content` | base-content|base-100|primary|secondary|accent|neutral|info|success|warning|error |
| `HeaderBold` | Header Bold | `Boolean` | `False` |  |
| `ButtonGhosted` | Button Ghosted | `Boolean` | `True` |  |

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
- `Initialize(oCallback As Object, sEventName As String)`
- `Present As ResumableSub`
- `SetButtonColor(sButtonId As String, sColorVariant As String)`
- `SetButtonColorByIndex(iIndex As Int, sColorVariant As String)`
- `SetButtonData(sButtonId As String, oData As Object)`
- `SetButtonDataByIndex(iIndex As Int, oData As Object)`
- `SetButtonIcon(sButtonId As String, sIconName As String)`
- `SetButtonIconByIndex(iIndex As Int, sIconName As String)`
- `SetButtonIconColor(sButtonId As String, sColorVariant As String)`
- `SetButtonIconColorByIndex(iIndex As Int, sColorVariant As String)`
- `View As B4XView`
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
- `setAnimated(bValue As Boolean)`
- `setBackdropDismiss(bValue As Boolean)`
- `setBackdropOpacity(sValue As String)`
- `setBackgroundColor(sValue As String)`
- `setButtonGhosted(bValue As Boolean)`
- `setButtonSize(sValue As String)`
- `setButtonsColor(sValue As String)`
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

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

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
    Log("Action selected: " & ActionId)
    asSheet.Dismiss
End Sub
```
