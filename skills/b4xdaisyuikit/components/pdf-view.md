# pdf-view (`B4XDaisyPDFView`)

DaisyUI `PDFView` component for B4X (B4A/B4i/B4J).

## 1. Overview
- **Class**: `B4XDaisyPDFView`
- **Lifecycle Type**: `Standard`
- **Library Source**: `B4XDaisyPDFView.bas`
- **Verified Demo Source**: B4XPagePDFView.bas (lines 12–33)
- **Web DaisyUI Mapping**: `.pdf-view` → `B4XDaisyPDFView`

## 2. Verified B4X Syntax & Recipe
```b4x
Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.Color = B4XDaisyVariants.GetTokenColor("--color-base-200", xui.Color_RGB(245, 247, 250))

	' Top Navbar
	Navbar.Initialize(Me, "Navbar")
	Navbar.AddToParent(Root, 0, 0, Root.Width, NAVBAR_HEIGHT)
	Navbar.Title = "PDF Viewer Demo"
	Navbar.BackVisible = True

	' B4XDaisyPDFView Component below navbar with padding
	Dim pdfTop As Int = NAVBAR_HEIGHT + PAGE_PAD
	Dim pdfW As Int = Max(10dip, Root.Width - (PAGE_PAD * 2))
	Dim pdfH As Int = Max(10dip, Root.Height - pdfTop - PAGE_PAD)

	pdfViewer.Initialize(Me, "pdfViewer")
	pdfViewer.AddToParent(Root, PAGE_PAD, pdfTop, pdfW, pdfH)

	' Load sample PDF asset
	pdfViewer.LoadAsset("chapter_5.pdf")
End Sub
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. **Declaration:** Declare variable `Dim <var> As B4XDaisyPDFView` (in `Class_Globals` or local sub).
2. **Initialization:** Initialize instance with callback and event name: `<var>.Initialize(Me, "<EventName>")`.
3. **Parent Attachment:** Attach to host container: `<var>.AddToParent(pnlHost, Left, Top, Width, Height)`.
4. **Property Configuration:** Set visual themes, sizes, variants, typography, and content properties.

### Preconditions & Gotchas
- Contains `DisallowParentIntercept` on B4A to prevent enclosing scroll containers (like `B4XDaisyPageScroll`) from stealing touch drag events.

### Discrepancies & API Nuances
- Public methods not demonstrated in demo pages: `LoadFile, JumpToPage, FirstPage` (+ 10 more).

## 4. Designer Properties
| Key | Display Name | Type | Default | Allowed Values |
| :--- | :--- | :--- | :--- | :--- |
| `AutoSpacing` | Auto Spacing | `Boolean` | `True` |  |
| `EnableSwipe` | Enable Swipe | `Boolean` | `True` |  |
| `PageSnap` | Page Snap | `Boolean` | `True` |  |
| `SwipeHorizontal` | Swipe Horizontal | `Boolean` | `False` |  |
| `ShowToolbar` | Show Toolbar | `Boolean` | `True` |  |
| `ToolbarHeight` | Toolbar Height | `Int` | `48` |  |

## 5. Declared Events
- `LoadComplete (Pages As Int)`
- `PageChanged (Page As Int, TotalPages As Int)`
- `OnTap (Target As Object)`
- `InitiallyRendered (Page As Int)`
- `PageNum (Page As Int)`
- `Show ()`

## 6. Public Methods & APIs
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int)`
- `Base_Resize (iWidth As Int, iHeight As Int)`
- `DesignerCreateView (oBase As Object, lblLbl As Label, mProps As Map)`
- `FirstPage`
- `Initialize (oCallback As Object, sEventName As String)`
- `JumpToPage(iPage As Int)`
- `LastPage`
- `LoadAsset(sFileName As String)`
- `LoadFile(sDir As String, sFileName As String)`
- `NextPage`
- `PrevPage`
- `Reload`
- `View As B4XView`
- `getCurrentPage As Int`
- `getTotalPages As Int`
- `setAutoSpacing(bValue As Boolean)`
- `setEnableSwipe(bValue As Boolean)`
- `setPageSnap(bValue As Boolean)`
- `setShowToolbar(bValue As Boolean)`
- `setSwipeHorizontal(bValue As Boolean)`

## 7. Public Fields
- `mBase As B4XView`
- `xui As XUI`

