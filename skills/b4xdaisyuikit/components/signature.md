# signature (`B4XDaisySignature`)

Fieldset-integrated digital signature capture component featuring legend label headers, helper texts, validation states, clear/save action buttons, velocity-sensitive stroke smoothing, and PNG/JPEG image export.

## 1. Overview & Verification Status
- **Class**: `B4XDaisySignature`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisySignature.bas`
- **Verified Demos**: `B4XPageSignaturePad.bas`
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
- `AddToParent(Parent As B4XView, Left As Int, Top As Int, Width As Int, Height As Int) As B4XView`
- `Base_Resize(Width As Double, Height As Double)`
- `BringToFront`
- `Clear`
- `DesignerCreateView(Base As Object, Lbl As Label, Props As Map)`
- `GetActualHeight As Int`
- `GetActualWidth As Int`
- `GetComputedHeight As Int`
- `GetSignatureBitmap As B4XBitmap`
- `Initialize(Callback As Object, EventName As String)`
- `RemoveViewFromParent`
- `Save`
- `SendToBack`
- `SetLayoutAnimated(Duration As Int, Left As Int, Top As Int, Width As Int, Height As Int)`
- `Validate As Boolean`
- `getView As B4XView`
