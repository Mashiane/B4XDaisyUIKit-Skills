# sweet-alert (`B4XDaisySweetAlert`)

DaisyUI `SweetAlert` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisySweetAlert`
- **Lifecycle Type**: `Non-standard`
- **Library Source**: `B4XDaisySweetAlert.bas`
- **Verified Demo Source**: B4XPageSweetAlert.bas, B4XPageSweetAlertInputs.bas
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

### Button Colors
- Each action button renders from a fixed variant/style pair: confirm = `primary` (solid), deny = `warning` (outline), cancel = `error` (outline), close = `neutral` (ghost).
- Override the fill with `ConfirmButtonColor` / `DenyButtonColor` / `CancelButtonColor` and the label with `ConfirmButtonTextColor` / `DenyButtonTextColor` / `CancelButtonTextColor`.
- Default `0x00000000` (transparent) means "derive from the variant", so existing alerts are unchanged. Set a color to override; pass `0x00000000` again to fall back to the theme.
- Deny and cancel use the `outline` style, so setting only the background color produces a filled button that still needs its text color set for contrast.
- Variant colors resolve from theme tokens (`--color-primary`, `--color-warning`, `--color-error`), so a theme change recolors all three buttons unless overridden.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `CloseWithReason, GetDismissReason, btnConfirm_Click` (+ 50 more).
- Title/body height comes from `B4XDaisyText` auto-resize, which derives line height from the `TextSizeSpec` token. The alert sets `TextSize` (24 / 16) without updating the spec, so it stays `text-sm` and the 1.4286 multiplier is applied to both. Measured against the matching Tailwind tokens this is ~2px loose on title lines and ~1px tight on body lines. Reported, not changed.

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `Title` | Title | `String` | Are you sure? |  |
| `Text` | Text | `String` |  |  |
| `Icon` | Icon | `String` | none | none|warning|error|success|info|question|loading |
| `IconColor` | Icon Color | `Color` | 0xFF545454 |  |
| `IconSize` | Icon Size | `Int` | 80 |  |
| `ShowConfirmButton` | Show Confirm | `Boolean` | True |  |
| `ConfirmButtonText` | Confirm Text | `String` | OK |  |
| `ConfirmButtonColor` | Confirm Color | `Color` | 0x00000000 |  |
| `ConfirmButtonTextColor` | Confirm Text Color | `Color` | 0x00000000 |  |
| `ShowDenyButton` | Show Deny | `Boolean` | False |  |
| `DenyButtonText` | Deny Text | `String` | No |  |
| `DenyButtonColor` | Deny Color | `Color` | 0x00000000 |  |
| `DenyButtonTextColor` | Deny Text Color | `Color` | 0x00000000 |  |
| `ShowCancelButton` | Show Cancel | `Boolean` | False |  |
| `CancelButtonText` | Cancel Text | `String` | Cancel |  |
| `CancelButtonColor` | Cancel Color | `Color` | 0x00000000 |  |
| `CancelButtonTextColor` | Cancel Text Color | `Color` | 0x00000000 |  |
| `ShowCloseButton` | Show Close Button | `Boolean` | False |  |
| `AllowOutsideClick` | Allow Outside Click | `Boolean` | True |  |
| `ReverseButtons` | Reverse Buttons | `Boolean` | False |  |
| `Footer` | Footer Text | `String` |  |  |
| `BackgroundColor` | Background Color | `Color` | 0xFFFFFFFF |  |
| `TextColor` | Text Color | `Color` | 0xFF545454 |  |
| `Width` | Width | `Int` | 360 |  |
| `TimerMs` | Auto Close Timer (ms) | `Int` | 0 |  |
| `Rounded` | Rounded | `String` | rounded-box | theme|rounded-none|rounded-sm|rounded|rounded-md|rounded-lg|rounded-xl|rounded-2xl|rounded-3xl|rounded-full|rounded-box |
| `InputType` | Input Type | `String` | none | none|text|password|email|number|tel|textarea|select|checkbox|checkboxgroup|radio|radiogroup|toggle|togglegroup|range|rating |
| `InputPlaceholder` | Input Placeholder | `String` |  |  |
| `InputLabel` | Input Label | `String` |  |  |
| `InputRequired` | Input Required | `Boolean` | False |  |
| `InputErrorMessage` | Input Error Message | `String` | This field is required. |  |
| `InputVariant` | Input Variant | `String` | primary | none|neutral|primary|secondary|accent|info|success|warning|error |
| `InputMultiple` | Input Multiple | `Boolean` | False |  |

## 5. Declared Events
- `Result (Result As B4XDaisySweetAlertResult)`

## 6. Public Methods & APIs
- `Initialize(Callback As Object, Parent As B4XView, EventName As String)`
- `DesignerCreateView(Base As Object, lblLbl As Label, Props As Map)`
- `Refresh`
- `Show`
- `ShowAsync As ResumableSub`
- `showLoading`
- `hideLoading`
- `Update(Config As Map)`
- `Close`
- `CloseWithReason(Reason As String)`
- `GetDismissReason As Map`
- `btnConfirm_Click(Tag As Object)`
- `btnDeny_Click(Tag As Object)`
- `btnCancel_Click(Tag As Object)`
- `btnClose_Click(Tag As Object)`
- `GetActiveInputValue As Object`
- `setInputType(Value As String)`
- `getInputType As String`
- `setInputPlaceholder(Value As String)`
- `getInputPlaceholder As String`
- `setInputValue(Value As Object)`
- `getInputValue As Object`
- `setInputMultiple(Value As Boolean)`
- `getInputMultiple As Boolean`
- `setInputMin(Value As Int)`
- `getInputMin As Int`
- `setInputMax(Value As Int)`
- `getInputMax As Int`
- `setInputStep(Value As Int)`
- `getInputStep As Int`
- `setInputLabel(Value As String)`
- `getInputLabel As String`
- `setInputErrorMessage(Value As String)`
- `getInputErrorMessage As String`
- `setInputRequired(Value As Boolean)`
- `getInputRequired As Boolean`
- `setInputOptions(Options As Map)`
- `setInputValidator(Callback As Object, SubName As String)`
- `setParent(Parent As B4XView)`
- `getParent As B4XView`
- `setTitle(Value As String)`
- `getTitle As String`
- `setText(Value As String)`
- `getText As String`
- `setIcon(Value As String)`
- `getIcon As String`
- `setIconColor(Value As Int)`
- `getIconColor As Int`
- `setIconSize(Value As Int)`
- `getIconSize As Int`
- `setShowConfirmButton(Value As Boolean)`
- `getShowConfirmButton As Boolean`
- `setConfirmButtonText(Value As String)`
- `getConfirmButtonText As String`
- `setConfirmButtonColor(Value As Int)`
- `getConfirmButtonColor As Int`
- `setConfirmButtonTextColor(Value As Int)`
- `getConfirmButtonTextColor As Int`
- `setShowDenyButton(Value As Boolean)`
- `getShowDenyButton As Boolean`
- `setDenyButtonText(Value As String)`
- `getDenyButtonText As String`
- `setDenyButtonColor(Value As Int)`
- `getDenyButtonColor As Int`
- `setDenyButtonTextColor(Value As Int)`
- `getDenyButtonTextColor As Int`
- `setShowCancelButton(Value As Boolean)`
- `getShowCancelButton As Boolean`
- `setCancelButtonText(Value As String)`
- `getCancelButtonText As String`
- `setCancelButtonColor(Value As Int)`
- `getCancelButtonColor As Int`
- `setCancelButtonTextColor(Value As Int)`
- `getCancelButtonTextColor As Int`
- `setShowCloseButton(Value As Boolean)`
- `getShowCloseButton As Boolean`
- `setAllowOutsideClick(Value As Boolean)`
- `getAllowOutsideClick As Boolean`
- `setReverseButtons(Value As Boolean)`
- `getReverseButtons As Boolean`
- `setFooter(Value As String)`
- `getFooter As String`
- `setBackgroundColor(Value As Int)`
- `getBackgroundColor As Int`
- `setTextColor(Value As Int)`
- `getTextColor As Int`
- `setWidth(Value As Int)`
- `getWidth As Int`
- `setTimerMs(Value As Int)`
- `getTimerMs As Int`
- `setRounded(Value As String)`
- `getRounded As String`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `setLeft(Value As Int)`
- `getLeft As Int`
- `setTop(Value As Int)`
- `getTop As Int`
- `setHeight(Value As Int)`
- `getHeight As Int`
- `BringToFront`
- `SendToBack`
- `setVisible(Value As Boolean)`
- `getVisible As Boolean`
- `View As B4XView`

## 7. Public Fields
- `mBase As B4XView`

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
