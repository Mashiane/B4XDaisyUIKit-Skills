# link (`B4XDaisyLink`)

Clickable hyperlink text with optional icon. Supports external URL opening, internal navigation, and styled underline states.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyLink`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyLink.bas`
- **Verified Demos**: `B4XPageLink.bas`
- **Web DaisyUI Mapping**: `.link` → `B4XDaisyLink`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim lnk As B4XDaisyLink
lnk.Initialize(Me, "lnk")
lnk.AddToParent(pnlHost, pad, y, maxW, 32dip)
lnk.Text = "Visit our website"
lnk.Url = "https://www.example.com"
lnk.Variant = "primary"
lnk.Underline = "hover"
y = y + lnk.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Hyperlink text element with hover underline and theme colors.
- Set `Text` and `Url` or handle custom navigation via `Click` event.
- Use `Variant` (`"primary"`, `"neutral"`, `"accent"`) to match link styling.
- Set `HoverUnderline = True` for classic web-style link feedback.

## 4. Designer Properties
None declared.

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `Initialize As Object`

## 7. Public Fields
None declared.
