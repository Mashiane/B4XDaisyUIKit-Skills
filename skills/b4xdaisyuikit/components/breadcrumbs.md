# breadcrumbs (`B4XDaisyBreadcrumbs`)

Navigation breadcrumb path.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyBreadcrumbs`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyBreadcrumbs.bas`
- **Verified Demos**: `B4XPageBreadcrumbs.bas`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim bc As B4XDaisyBreadcrumbs
bc.Initialize(Me, "bc")
bc.AddToParent(pnlHost, pad, y, maxW, 36dip)
bc.AddItem("home", "Home", "home-solid.svg")
bc.AddItem("docs", "Documentation", "file-solid.svg")
y = y + 36dip + gap
```
