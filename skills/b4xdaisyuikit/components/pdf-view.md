# pdf-view (`B4XDaisyPDFView`)

Native PDF document rendering component supporting page swiping, page snapping, asset/file loading, page jump navigation, and document lifecycle events.

## 1. Overview
- **Class**: `B4XDaisyPDFView`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyPDFView.bas`
- **Reference Page**: `B4XPagePDFView.bas`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim pdf As B4XDaisyPDFView
pdf.Initialize(Me, "pdf")
pdf.AddToParent(pnlHost, pad, y, maxW, 400dip)
pdf.EnableSwipe = True
pdf.PageSnap = True
pdf.SwipeHorizontal = True
pdf.ShowToolbar = True
pdf.ToolbarHeight = 44dip
pdf.LoadAsset("sample.pdf") ' Or pdf.LoadFile(File.DirInternal, "document.pdf")
y = y + 400dip + gap
```

### Document Navigation Controls
```b4x
' Programmatic navigation
pdf.JumpToPage(3)
pdf.NextPage
pdf.PrevPage
pdf.FirstPage
pdf.LastPage

Dim currentPage As Int = pdf.getCurrentPage
Dim totalPages As Int = pdf.getTotalPages
```

### Event Handling
```b4x
Private Sub pdf_LoadComplete (Pages As Int)
    Log("PDF successfully loaded with total pages: " & Pages)
End Sub

Private Sub pdf_PageChanged (Page As Int, TotalPages As Int)
    Log("Swiped to page: " & Page & " / " & TotalPages)
End Sub

Private Sub pdf_OnTap (Target As Object)
    Log("PDF viewer tapped")
End Sub
```

## 3. Designer Properties
| Key | Type | Default | Description |
|---|---|---|---|
| `EnableSwipe` | Boolean | True | Allows touch gestures to swipe between pages |
| `SwipeHorizontal` | Boolean | True | Enables horizontal page turning (or vertical if False) |
| `PageSnap` | Boolean | True | Snaps to full page boundaries on swipe |
| `AutoSpacing` | Boolean | True | Automatically spaces pages |
| `ShowToolbar` | Boolean | True | Displays built-in navigation toolbar |
| `ToolbarHeight` | Int | 44 | Height of navigation toolbar in dip |

## 4. Declared Events
- `LoadComplete (Pages As Int)`
- `PageChanged (Page As Int, TotalPages As Int)`
- `OnTap (Target As Object)`
- `InitiallyRendered (Page As Int)`
- `PageNum (Page As Int)`
- `Show ()`

## 5. Public Methods & APIs
- `Initialize (oCallback As Object, sEventName As String)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `LoadAsset(sFileName As String)`: Loads PDF from `File.DirAssets`
- `LoadFile(sDir As String, sFileName As String)`: Loads PDF from local directory
- `Reload`: Reloads current document
- `JumpToPage(iPage As Int)`: Jumps to specified page number
- `FirstPage` / `LastPage`
- `NextPage` / `PrevPage`
- `getCurrentPage As Int`
- `getTotalPages As Int`
- `View As B4XView`
