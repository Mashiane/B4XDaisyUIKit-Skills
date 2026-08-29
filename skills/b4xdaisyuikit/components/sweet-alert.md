# sweet-alert (`B4XDaisySweetAlert`)

DaisyUI `SweetAlert` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisySweetAlert`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisySweetAlert.bas`
- **Verified Demo Source**: B4XPageSweetAlert.bas (lines 101–216), B4XPageSweetAlertInputs.bas (lines 17–428), B4XMainPage.bas (lines 84–537)
- **Web DaisyUI Mapping**: `.sweet-alert` → `B4XDaisySweetAlert`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub DemoAction_Click(Tag As Object)
	Dim action As String = Tag
	Dim swal As B4XDaisySweetAlert
	swal.Initialize(Me, Root, "swal")
	
	Select Case action
		Case "btnBasic"
			swal.Title = "Any fool can use a computer"
			Wait For (swal.ShowAsync) Complete (Result As B4XDaisySweetAlertResult)
			B4XPages.MainPage.ShowToast("Basic alert dismissed", False)
			
		Case "btnTitleText"
			swal.Title = "The Internet?"
			swal.Text = "That thing is still around?"
			swal.Icon = "question"
			swal.ShowCancelButton = True
			swal.ConfirmButtonText = "Yes"
			swal.CancelButtonText = "No"
			Wait For (swal.ShowAsync) Complete (Result As B4XDaisySweetAlertResult)
			If Result.IsConfirmed Then
				B4XPages.MainPage.ShowToast("User clicked: Yes", False)
			Else
				B4XPages.MainPage.ShowToast("User clicked: No", False)
			End If			
		Case "btnError"
			swal.Icon = "error"
			swal.Title = "Oops..."
			swal.Text = "Something went wrong!"
			swal.ShowCancelButton = True
			Wait For (swal.ShowAsync) Complete (Result As B4XDaisySweetAlertResult)
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisySweetAlert` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.
5. **Execution / Assembly:** Modal/Dialog/Toast lifecycle requiring `.Show` / `.Present` / `.ShowModal` / `.ShowActionSheet` presentation call after configuration.
6. **Asynchronous Handling:** Await user response with `Wait For (<var>_EventName(...))`.

### Deviation Mechanism
- CustomView lacks standard `AddToParent`; requires custom layout attachment or internal instantiation.; Requires asynchronous `Wait For` resumption to complete modal/dialog/action flow or receive return values.; Modal/Dialog/Toast lifecycle requiring `.Show` / `.Present` / `.ShowModal` / `.ShowActionSheet` presentation call after configuration.

### Preconditions & Gotchas
- Ensure host parent panel has valid positive layout dimensions before calling `AddToParent`.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `CloseWithReason, GetDismissReason, btnConfirm_Click` (+ 50 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Title` | Title | `String` | `Are you sure?` |  |
| `Text` | Text | `String` | `` |  |
| `Icon` | Icon | `String` | `none` | none|warning|error|success|info|question|loading |
| `IconColor` | Icon Color | `Color` | `0xFF545454` |  |
| `IconSize` | Icon Size | `Int` | `80` |  |
| `ShowConfirmButton` | Show Confirm | `Boolean` | `True` |  |
| `ConfirmButtonText` | Confirm Text | `String` | `OK` |  |
| `ShowDenyButton` | Show Deny | `Boolean` | `False` |  |
| `DenyButtonText` | Deny Text | `String` | `No` |  |
| `ShowCancelButton` | Show Cancel | `Boolean` | `False` |  |
| `CancelButtonText` | Cancel Text | `String` | `Cancel` |  |
| `ShowCloseButton` | Show Close Button | `Boolean` | `False` |  |
| `AllowOutsideClick` | Allow Outside Click | `Boolean` | `True` |  |
| `ReverseButtons` | Reverse Buttons | `Boolean` | `False` |  |
| `Footer` | Footer Text | `String` | `` |  |
| `BackgroundColor` | Background Color | `Color` | `0xFFFFFFFF` |  |
| `TextColor` | Text Color | `Color` | `0xFF545454` |  |
| `Width` | Width | `Int` | `360` |  |
| `TimerMs` | Auto Close Timer (ms) | `Int` | `0` |  |
| `Rounded` | Rounded | `String` | `rounded-box` | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box |
| `InputType` | Input Type | `String` | `none` | none|text|password|email|number|tel|textarea|select|checkbox|checkboxgroup|radio|radiogroup|toggle|togglegroup|range|rating |
| `InputPlaceholder` | Input Placeholder | `String` | `` |  |
| `InputLabel` | Input Label | `String` | `` |  |
| `InputRequired` | Input Required | `Boolean` | `False` |  |
| `InputErrorMessage` | Input Error Message | `String` | `This field is required.` |  |
| `InputVariant` | Input Variant | `String` | `primary` | none|neutral|primary|secondary|accent|info|success|warning|error |
| `InputMultiple` | Input Multiple | `Boolean` | `False` |  |

## 5. Declared Events
- `Result (Result As B4XDaisySweetAlertResult)`

## 6. Public Methods & APIs
- `BringToFront`
- `Close`
- `CloseWithReason(sReason As String)`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `GetActiveInputValue As Object`
- `GetDismissReason As Map`
- `Initialize(oCallback As Object, vParent As B4XView, sEventName As String)`
- `Refresh`
- `SendToBack`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `Show`
- `ShowAsync As ResumableSub`
- `Update(mConfig As Map)`
- `View As B4XView`
- `btnCancel_Click(oTag As Object)`
- `btnClose_Click(oTag As Object)`
- `btnConfirm_Click(oTag As Object)`
- `btnDeny_Click(oTag As Object)`
- `getAllowOutsideClick As Boolean`
- `getBackgroundColor As Int`
- `getCancelButtonText As String`
- `getConfirmButtonText As String`
- `getDenyButtonText As String`
- `getFooter As String`
- `getHeight As Int`
- `getIcon As String`
- `getIconColor As Int`
- `getIconSize As Int`
- `getInputErrorMessage As String`
- `getInputLabel As String`
- `getInputMax As Int`
- `getInputMin As Int`
- `getInputMultiple As Boolean`
- `getInputPlaceholder As String`
- `getInputRequired As Boolean`
- `getInputStep As Int`
- `getInputType As String`
- `getInputValue As Object`
- `getLeft As Int`
- `getParent As B4XView`
- `getReverseButtons As Boolean`
- `getRounded As String`
- `getShowCancelButton As Boolean`
- `getShowCloseButton As Boolean`
- `getShowConfirmButton As Boolean`
- `getShowDenyButton As Boolean`
- `getText As String`
- `getTextColor As Int`
- `getTimerMs As Int`
- `getTitle As String`
- `getTop As Int`
- `getVisible As Boolean`
- `getWidth As Int`
- `hideLoading`
- `setAllowOutsideClick(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `setCancelButtonText(sValue As String)`
- `setConfirmButtonText(sValue As String)`
- `setDenyButtonText(sValue As String)`
- `setFooter(sValue As String)`
- `setHeight(iValue As Int)`
- `setIcon(sValue As String)`
- `setIconColor(iValue As Int)`
- `setIconSize(iValue As Int)`
- `setInputErrorMessage(sValue As String)`
- `setInputLabel(sValue As String)`
- `setInputMax(iValue As Int)`
- `setInputMin(iValue As Int)`
- `setInputMultiple(bValue As Boolean)`
- `setInputOptions(mOptions As Map)`
- `setInputPlaceholder(sValue As String)`
- `setInputRequired(bValue As Boolean)`
- `setInputStep(iValue As Int)`
- `setInputType(sValue As String)`
- `setInputValidator(oCallback As Object, sSubName As String)`
- `setInputValue(oValue As Object)`
- `setLeft(iValue As Int)`
- `setParent(vParent As B4XView)`
- `setReverseButtons(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setShowCancelButton(bValue As Boolean)`
- `setShowCloseButton(bValue As Boolean)`
- `setShowConfirmButton(bValue As Boolean)`
- `setShowDenyButton(bValue As Boolean)`
- `setText(sValue As String)`
- `setTextColor(iValue As Int)`
- `setTimerMs(iValue As Int)`
- `setTitle(sValue As String)`
- `setTop(iValue As Int)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `showLoading`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

## Canonical Creation Pattern & Recipe

`B4XDaisySweetAlert` is an asynchronous modal alert/confirmation dialog with inputs, timer, and buttons.

```vb
' Initialize taking 3 arguments (Callback, EventName, Root View):
Dim swal As B4XDaisySweetAlert
swal.Initialize(Me, "swal", Root)
swal.Title = "Confirm Stock Batch?"
swal.Text = "This will lock the current count and post variances."
swal.Icon = "warning"                         ' "success" | "warning" | "error" | "info" | "question"
swal.ShowCancelButton = True
swal.ConfirmButtonText = "Yes, Post Batch"
swal.CancelButtonText = "Cancel"
swal.TimerMs = 0                              ' 0 = stay until user clicks a button

' Asynchronous display and result handling:
Wait For (swal.ShowAsync) Complete (Result As B4XDaisySweetAlertResult)
If Result.IsConfirmed Then
    Log("User confirmed action")
Else If Result.IsDismissed Then
    Log("User dismissed dialog")
End If
```
