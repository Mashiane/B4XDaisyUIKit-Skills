# textarea (`B4XDaisyInput` in Multiline Mode)

Multi-line text input with auto-height, label, validation, character counter, and placeholder.
In B4XDaisyUIKit, textareas are created by configuring `B4XDaisyInput` with `SingleLine = False`.

## 1. Overview
- **Class**: `B4XDaisyInput`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyInput.bas`
- **Reference Page**: `B4XPageTextarea.bas`
- **Web DaisyUI Mapping**: `.textarea` → `B4XDaisyInput (SingleLine = False)`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim ta As B4XDaisyInput
ta.Initialize(Me, "ta")
ta.SingleLine = False
ta.AddToParent(pnlHost, pad, y, maxW, 80dip)
ta.Variant = "primary"
ta.Size = "md"
ta.LabelAbove = "Your bio"
ta.Placeholder = "Type your bio here..."
ta.HintText = "Optional"
ta.MaxLines = 3
ta.Tag = "bio-textarea"
y = y + ta.GetComputedHeight + gap
```

### Auto-Grow Textarea Pattern
```b4x
Dim taAuto As B4XDaisyInput
taAuto.Initialize(Me, "taAuto")
taAuto.SingleLine = False
taAuto.AddToParent(pnlHost, pad, y, maxW, 80dip)
taAuto.Placeholder = "Type here and press Enter to add more lines..."
taAuto.MaxLines = 6
taAuto.AutoHeight = True
taAuto.Tag = "auto-height-textarea"
```

## 3. Native Composition Rules & Gotchas
- **No separate `B4XDaisyTextarea` class exists**: Always instantiate `B4XDaisyInput` and set `ta.SingleLine = False`.
- Set `MaxLines` to control visible vertical line expansion (e.g. `ta.MaxLines = 3`).
- Set `AutoHeight = True` to allow dynamic expansion as content grows.
- Use `LabelAbove`, `HintText`, and `Required = True` for complete form controls.
- To listen for changes and reflow parent containers dynamically when `AutoHeight = True`, handle `TextChanged` event:
  ```b4x
  Private Sub taAuto_TextChanged(Old As String, New As String)
      LayoutInputs(Root.Width, Root.Height)
  End Sub
  ```

## 4. Designer Properties (Key Subset for Multiline)
| Key | Type | Default | Description |
|---|---|---|---|
| `SingleLine` | Boolean | True | Set to `False` for multiline textarea behavior |
| `MaxLines` | Int | 1 | Maximum visible lines for textarea |
| `AutoHeight` | Boolean | False | Enables auto-expanding height based on content |
| `LabelAbove` | String | | Label text displayed above input |
| `Placeholder` | String | | Placeholder prompt text |
| `HintText` | String | | Explanatory helper or hint text below/inside |
| `Required` | Boolean | False | Displays required indicator |
| `Variant` | String | default | `neutral`, `primary`, `secondary`, `accent`, `info`, `success`, `warning`, `error`, `ghost` |
| `Size` | String | md | `xs`, `sm`, `md`, `lg`, `xl` |

## 5. Declared Events
- `TextChanged (Old As String, New As String)`
- `FocusChanged (HasFocus As Boolean)`
- `Click (Tag As Object)`
- `EnterPressed (Text As String)`

## 6. Public Methods & APIs
- `Initialize(oCallback As Object, sEventName As String)`
- `AddToParent(vParent As B4XView, iLeft As Int, iTop As Int, iWidth As Int, iHeight As Int) As B4XView`
- `GetComputedHeight As Int`
- `GetActualHeight As Int`
- `Validate As Boolean`
- `Clear`
- `RequestFocus`
