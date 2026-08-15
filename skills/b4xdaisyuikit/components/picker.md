# picker (`B4XDaisyPicker`)

Scrollable drum-wheel picker.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyPicker`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyPicker.bas`
- **Verified Demos**: `B4XPagePicker.bas`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim pkr As B4XDaisyPicker
pkr.Initialize(Me, "pkr")
pkr.AddToParent(pnlHost, pad, y, maxW, 180dip)
pkr.AddColumn("months", Array As String("January", "February", "March"))
' Add items via columns
' Second column if needed
y = y + 180dip + gap
```
