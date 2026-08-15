# textarea (`B4XDaisyTextarea`)

Multi-line text input with auto-height, label, validation, character counter, and placeholder.

## 1. Overview & Verification Status
- **Class**: `B4XDaisyTextarea`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyTextarea.bas`
- **Verified Demos**: `B4XPageTextarea.bas`
- **Web DaisyUI Mapping**: `.textarea` → `B4XDaisyTextarea`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim ta As B4XDaisyTextarea
ta.Initialize(Me, "ta")
ta.AddToParent(pnlHost, pad, y, maxW, 120dip)
ta.Variant = "primary"
ta.Size = "md"
ta.LabelAbove = "Comments"
ta.Placeholder = "Type your message here..."
ta.MaxLength = 500
ta.ShowCounter = True
ta.AutoHeight = True
ta.MinRows = 3
y = y + ta.GetComputedHeight + gap

```

## 3. Native Composition Rules & Gotchas
- Multi-line text input field supporting character counter, auto-grow, and validation.
- Set `LabelAbove` and `Placeholder`.
- Set `MaxLength = 500` and `ShowCounter = True` for character limit tracking.
- Set `AutoHeight = True` for dynamic auto-expanding text box.
- Validate input using `.Validate()`.

## 4. Designer Properties
None declared.

## 5. Declared Events
None declared.

## 6. Public Methods & APIs
- `Initialize As Object`

## 7. Public Fields
None declared.
