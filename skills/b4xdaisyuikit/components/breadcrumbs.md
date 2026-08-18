# breadcrumbs (`B4XDaisyBreadcrumbs`)

Navigation breadcrumb path displaying hierarchical page trails with icons, active step tracking, and click events.

## 1. Overview
- **Class**: `B4XDaisyBreadcrumbs`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyBreadcrumbs.bas`
- **Reference Page**: `B4XPageBreadcrumbs.bas`
- **Web DaisyUI Mapping**: `.breadcrumbs` → `B4XDaisyBreadcrumbs`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim bc As B4XDaisyBreadcrumbs
bc.Initialize(Me, "bc")
bc.AddToParent(pnlHost, pad, y, maxW, 36dip)
bc.TextSize = "text-sm"
bc.AddItem("home", "Home", "house-solid.svg", True)
bc.AddItem("docs", "Documents", "folder-solid.svg", True)
bc.AddItem("page", "Settings", "gear-solid.svg", False) ' Last item not clickable
bc.CurrentIndex = 2
y = y + bc.GetComputedHeight + gap
```

### Event Handling
```b4x
Private Sub bc_ItemClick (ItemId As String)
    Log("Selected breadcrumb item: " & ItemId)
    Select ItemId
        Case "home"
            B4XPages.ShowPage("MainPage")
        Case "docs"
            B4XPages.ShowPage("PageDocs")
    End Select
End Sub
```

## 3. Native Composition Rules & Gotchas
- Use `AddItem(sId, sText, sIconPath, bClickable)` to build the breadcrumb path dynamically.
- Set `CurrentIndex = N` to indicate the active/current page in the hierarchy.
- Use `Clear` before rebuilding items dynamically when navigating deep routes.
- Set `RTL = True` if supporting right-to-left layout orientations.

## 4. Designer Properties
| Key | Type | Default | Description |
|---|---|---|---|
| `Enabled` | Boolean | True | Enables user interaction |
| `Visible` | Boolean | True | Shows or hides the component |
| `TextSize` | String | text-sm | Font size token (`text-xs`, `text-sm`, `text-base`, etc.) |
| `CurrentIndex` | Int | 0 | Zero-based index of the currently active trail item |
| `RTL` | Boolean | False | Enables right-to-left layout flow |

## 5. Declared Events
- `ItemClick (ItemId As String)`

## 6. Public Methods & APIs
- `Initialize(oCallback As Object, sEventName As String)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `AddItem(sId As String, sText As String, sIconPath As String, bClickable As Boolean)`
- `SetItems(lstItems As List)`
- `getItems As List`
- `Clear`
- `Refresh`
- `GetComputedHeight As Int`
- `UpdateTheme`
