# signature (`B4XDaisySignature`)

Fieldset-integrated digital signature capture component featuring legend label headers, helper texts, validation states, clear/save action buttons, velocity-sensitive stroke smoothing, and PNG/JPEG image export.

## 1. Overview
- **Class**: `B4XDaisySignature`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySignature.bas`
- **Web DaisyUI Mapping**: Form Fieldset Signature Capture → `B4XDaisySignature`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim sig As B4XDaisySignature
sig.Initialize(Me, "sig")
sig.AddToParent(pnlHost, pad, y, maxW, 220dip)
sig.Legend = "Customer Signature"
sig.Variant = "primary"
sig.BorderStyle = "solid"
sig.ClearButtonText = "Clear"
sig.SaveButtonText = "Confirm Signature"
sig.ClearButtonVisible = True
sig.SaveButtonVisible = True
y = y + 220dip + gap

Private Sub sig_Saved(Data As String)
    ' Data contains Base64 encoded signature bitmap string
    toast.Success("Signature captured!")
End Sub

Private Sub sig_Cleared
    toast.Info("Signature canvas cleared.")
End Sub
```

## 3. Native Composition Rules & Gotchas
- `B4XDaisySignature` wraps `B4XDaisySignaturePad` inside a fieldset enclosure with built-in legend labels, action buttons, and validation errors.
- To export a raw bitmap, use `sig.getBitmap` or handle the `_Saved(Data As String)` callback.
- Includes automatic touch-drag parent scroll protection so signing gestures are never stolen by enclosing scroll views.

## 4. Designer Properties
| Key | Display name | Type | Default | Allowed values |
|---|---|---|---|---|
| Legend | Legend | String | Signature |  |
| LegendSize | Legend Size | String | sm | xs\|sm\|md\|lg\|xl |
| LegendBold | Legend Bold | Boolean | True |  |
| LabelAbove | Label Above | Boolean | True |  |
| Variant | Variant | String | none | none\|neutral\|primary\|secondary\|accent\|info\|success\|warning\|error |
| BorderStyle | Border Style | String | solid | none\|solid\|dashed\|dotted |
| ClearButtonText | Clear Button Text | String | Clear |  |
| ClearButtonVisible | Clear Button Visible | Boolean | True |  |
| SaveButtonText | Save Button Text | String | Save |  |
| SaveButtonVisible | Save Button Visible | Boolean | True |  |
| PenColor | Pen Color | Color | 0xFF000000 |  |
| BackgroundColor | Background Color | Color | 0x00000000 |  |
| Required | Required | Boolean | False |  |
| ErrorText | Error Text | String | Signature is required |  |

## 5. Declared Events
- `BeginStroke`
- `EndStroke`
- `Changed`
- `Saved (Data As String)`
- `Cleared`
- `FocusChanged (HasFocus As Boolean)`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `Base_Resize(dWidth As Double, dHeight As Double)`
- `Blur`
- `BringToFront`
- `Clear`
- `ClearError`
- `CreateView(iWidth As Int, iHeight As Int) As B4XView`
- `DesignerCreateView(oBase As Object, lblLbl As Label, mProps As Map)`
- `getAutoHeight As Boolean`
- `getBackgroundColor As Int`
- `GetBase64 As String`
- `GetBitmap As B4XBitmap`
- `getBitMapFormat As String`
- `getBitMapQuality As Int`
- `getBorderColor As Int`
- `getBorderSize As Int`
- `getBorderStyle As String`
- `getClearButtonText As String`
- `getClearButtonVisible As Boolean`
- `getDisallowParentIntercept As Boolean`
- `getErrorText As String`
- `getHeight As Int`
- `getHintColor As Int`
- `getHintText As String`
- `getInputBorder As Boolean`
- `getIsValid As Boolean`
- `getLabelAbove As Boolean`
- `getLeft As Int`
- `getLegend As String`
- `getLegendBold As Boolean`
- `getLegendSize As String`
- `getMaxWidth As Float`
- `getMinHeight As Int`
- `getMinWidth As Float`
- `getPadBackgroundColor As Int`
- `getPadding As Int`
- `getPadEnabled As Boolean`
- `getPadVisible As Boolean`
- `getPenColor As Int`
- `getRequired As Boolean`
- `getRounded As String`
- `getSaveButtonText As String`
- `getSaveButtonVisible As Boolean`
- `getShadow As String`
- `getStrokeCap As String`
- `getStrokeJoin As String`
- `getTag As Object`
- `getTextColor As Int`
- `getTop As Int`
- `getVariant As String`
- `getVelocityFilterWeight As Float`
- `getVisible As Boolean`
- `getWidth As Int`
- `Initialize(oCallback As Object, sEventName As String)`
- `IsBase64(sValue As String) As Boolean`
- `IsEmpty As Boolean`
- `IsReady As Boolean`
- `isRoundedBox As Boolean`
- `ReceiveFocus`
- `Refresh`
- `Release`
- `RemoveViewFromParent`
- `SendToBack`
- `setAutoHeight(bValue As Boolean)`
- `setBackgroundColor(iValue As Int)`
- `SetBase64(sBase64String As String)`
- `SetBitmap(bmpBmp As B4XBitmap)`
- `setBitMapFormat(sValue As String)`
- `setBitMapQuality(iValue As Int)`
- `setBorderColor(iValue As Int)`
- `setBorderSize(iValue As Int)`
- `setBorderStyle(sValue As String)`
- `setClearButtonText(sValue As String)`
- `setClearButtonVisible(bValue As Boolean)`
- `setDisallowParentIntercept(bValue As Boolean)`
- `setErrorText(sValue As String)`
- `setHeight(iValue As Int)`
- `setHintColor(iValue As Int)`
- `setHintText(sValue As String)`
- `setInputBorder(bValue As Boolean)`
- `setLabelAbove(bValue As Boolean)`
- `SetLayoutAnimated(iDuration As Int, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `setLeft(iValue As Int)`
- `setLegend(sValue As String)`
- `setLegendBold(bValue As Boolean)`
- `setLegendSize(sValue As String)`
- `setMaxWidth(fValue As Float)`
- `setMinHeight(iValue As Int)`
- `setMinWidth(fValue As Float)`
- `setPadBackgroundColor(iValue As Int)`
- `setPadding(iValue As Int)`
- `setPadEnabled(bValue As Boolean)`
- `setPadVisible(bValue As Boolean)`
- `setPenColor(iValue As Int)`
- `setRequired(bValue As Boolean)`
- `setRounded(sValue As String)`
- `setRoundedBox(bValue As Boolean)`
- `setSaveButtonText(sValue As String)`
- `setSaveButtonVisible(bValue As Boolean)`
- `setShadow(sValue As String)`
- `setStrokeCap(sValue As String)`
- `setStrokeJoin(sValue As String)`
- `setTag(oValue As Object)`
- `setTextColor(iValue As Int)`
- `setTop(iValue As Int)`
- `setVariant(sValue As String)`
- `setVelocityFilterWeight(fValue As Float)`
- `setVisible(bValue As Boolean)`
- `setWidth(iValue As Int)`
- `ShowError(sErrorMessage As String)`
- `Validate As Boolean`
- `View As B4XView`

