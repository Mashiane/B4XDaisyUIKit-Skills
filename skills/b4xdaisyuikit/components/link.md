# link (`B4XDaisyText` in Hyperlink Mode)

> **Mode component**: `link` is not a standalone class. It is implemented by configuring `B4XDaisyText` with `Link = True`.

Clickable hyperlink text with custom URL opening, hover underline, and semantic color variants.
In B4XDaisyUIKit, links are implemented by configuring `B4XDaisyText` with `Link = True`.

## 1. Overview
- **Class**: `B4XDaisyText`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyText.bas`
- **Reference Page**: `B4XPageLink.bas`
- **Web DaisyUI Mapping**: `.link` → `B4XDaisyText (Link = True)`

## 2. Verified B4X Syntax & Recipe

### Full lifecycle — create, initialize, add to parent, configure
```b4x
' 1. Declare the variable
Dim lnk As B4XDaisyText

' 2. Initialize (Me = callback host, "lnk" = event prefix)
lnk.Initialize(Me, "lnk")

' 3. Add to a parent view at position (x, y) and size (w, h)
lnk.AddToParent(pnlHost, pad, y, maxW, 28dip)

' 4. Configure as a link
lnk.Text = "Visit documentation portal"
lnk.Link = True
lnk.Underline = True
lnk.Url = "https://www.b4x.com"
lnk.setTextColorVariant("link-primary")
lnk.Tag = "doc-link"

' 5. Advance layout cursor
y = y + lnk.GetComputedHeight + gap
```

### Hover-Only Underline Recipe
```b4x
Dim lnkHover As B4XDaisyText
lnkHover.Initialize(Me, "lnk")
lnkHover.AddToParent(pnlHost, pad, y, maxW, 28dip)
lnkHover.Text = "Only underline on hover"
lnkHover.Link = True
lnkHover.Underline = False
lnkHover.Url = "https://www.b4x.com"
lnkHover.Tag = "hover-link"
y = y + lnkHover.GetComputedHeight + gap
```

## 3. Native Composition Rules & Gotchas
- **No separate `B4XDaisyLink` class exists**: Always instantiate `B4XDaisyText` and set `lnk.Link = True`.
- Set `lnk.Url = "https://..."` to enable automatic browser intent opening on tap.
- Set `lnk.Underline = True` for permanent underline or `lnk.Underline = False` for hover underline only.
- Set link color variants using `lnk.setTextColorVariant("link-primary")`, `"link-secondary"`, `"link-accent"`, `"link-neutral"`, `"link-success"`, `"link-info"`, `"link-warning"`, `"link-error"`.
- Handle custom click logic via the `Click` event:
  ```b4x
  Private Sub lnk_Click (Tag As Object)
      Log("Link clicked: " & Tag)
  End Sub
  ```

## 4. Designer Properties (Key Subset for Links)
| Key | Type | Default | Description |
|---|---|---|---|
| `Link` | Boolean | False | Enables hyperlink behavior and tap handling |
| `Url` | String | | Target URL to open on click |
| `Underline` | Boolean | False | Enables text underline |
| `TextColorVariant` | String | | Color variant: `link-primary`, `link-secondary`, `link-accent`, `link-neutral`, `link-success`, `link-info`, `link-warning`, `link-error` |
| `Text` | String | | Display text for the link |
| `TextSize` | String | text-base | Font size token (`text-xs`, `text-sm`, `text-base`, `text-lg`, etc.) |

## 5. Declared Events
- `Click (Tag As Object)`

## 6. Public Methods & APIs
- `Initialize(oCallback As Object, sEventName As String)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `GetComputedHeight As Int`
- `MeasureTextWidth As Float`
- `RefreshText`
- `setTextColorVariant(sVariant As String)`
