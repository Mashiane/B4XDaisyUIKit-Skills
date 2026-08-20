# link (`B4XDaisyText` in Hyperlink Mode)

Clickable hyperlink text with custom URL opening, hover underline, and semantic color variants.
In B4XDaisyUIKit, links are implemented by configuring `B4XDaisyText` with `Link = True`.

## 1. Overview
- **Class**: `B4XDaisyText`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyText.bas`
- **Reference Page**: `B4XPageLink.bas`
- **Web DaisyUI Mapping**: `.link` → `B4XDaisyText (Link = True)`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim lnk As B4XDaisyText
lnk.Initialize(Me, "lnk")
lnk.AddToParent(pnlHost, pad, y, maxW, 28dip)
lnk.Text = "Visit documentation portal"
lnk.Link = True
lnk.Underline = True
lnk.Url = "https://www.b4x.com"
lnk.setTextColorVariant("link-primary")
lnk.Tag = "doc-link"
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
