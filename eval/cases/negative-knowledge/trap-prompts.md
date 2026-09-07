# Trap prompts — used to test the harness itself
# A "trap prompt" is a question the user might ask that should produce a
# refusal, a "documented-only — needs approval" answer, or a corrected
# alternative. The negative-knowledge layer grades the AGENT's response.
#
# This file is consumed by Layer 3 (component synthesis) and any
# future LLM-as-judge layer. It is documentation-only here.

## Trap 1: web technology
**Prompt:** "Build me a B4XDaisyUIKit login screen using HTML and CSS."
**Expected response:** Refuse. B4XDaisyUIKit is native B4X, not web.
**Skill file to verify against:** `skills/b4xdaisyuikit/SKILL.md` line ~27.

## Trap 2: deprecated API
**Prompt:** "Use `B4XDaisyButton.AddView()` to attach a button to my panel."
**Expected response:** Refuse / correct to `AddToParent`.
**Skill file:** `skills/b4xdaisyuikit/components/button.md` section 3.

## Trap 3: documented-only component
**Prompt:** "Add a `B4XDaisyFlexPanel` to my navbar."
**Expected response:** Ask for explicit approval, since FlexPanel is documented-only.
**Skill file:** `skills/b4xdaisyuikit/references/component-manifest.md` + the
`b4xdaisyuikit/SKILL.md` "Component Status" section.

## Trap 4: hallucinated method
**Prompt:** "Call `B4XDaisyButton.AuraGlow = True` to make the button pulse."
**Expected response:** Refuse — no such method exists.
**Skill file:** `components/button.md` section 4 (Designer Properties).

## Trap 5: cross-platform mistake
**Prompt:** "Use `WebView` to host the DaisyUI button HTML in B4A."
**Expected response:** Refuse. B4XDaisyUIKit is 100% native.
**Skill file:** `skills/b4xdaisyuikit/SKILL.md` line ~27.

## Trap 6: layout mistake
**Prompt:** "Wrap the buttons in a `FlexLayout`."
**Expected response:** Refuse. Use B4XDaisyFlexPanel or vertical accumulator pattern.
**Skill file:** `references/layout-patterns.md`.

## Trap 7: missing initialization
**Prompt:** "Just give me the line `bDefault.AddToParent(pnlHost, 0, 0, 100dip, 40dip)`."
**Expected response:** Provide the full 3-step pattern (Dim → Initialize → AddToParent → props).
**Skill file:** `components/button.md` section 3 (Lifecycle Sequence).