# pdf-view (`B4XDaisyPDFView`)

Native PDF document rendering.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyPDFView`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyPDFView.bas`
- **Verified Demos**: `B4XPagePDFView.bas`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim pdf As B4XDaisyPDFView
pdf.Initialize(Me, "pdf")
pdf.AddToParent(pnlHost, pad, y, maxW, 300dip)
pdf.LoadAsset("sample.pdf")
y = y + 300dip + gap
```
