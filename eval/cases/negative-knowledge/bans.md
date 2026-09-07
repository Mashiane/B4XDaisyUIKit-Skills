# Banned patterns — negative knowledge for the skill suite
#
# Each line is one rule. If a component's example code or chapter recipe
# contains any of these patterns, the negative-knowledge layer (Layer 2)
# flags it. Add rules here over time as new anti-patterns are discovered.
#
# Format:
#   <rule_id> :: <regex-pattern> :: <severity> :: <reason>
#
# Severities:
#   hard    - must never appear (e.g. web tech in native code)
#   warn    - usually wrong but sometimes legitimate
#   smell   - style/correctness, count but don't fail

# --- Web / DaisyUI / HTML anti-patterns in generated code ---
web_no_html              :: <(?!\?xml)|</?(div|span|button|form|input|a|p|ul|li|h[1-6])\b :: hard    :: Native B4X must not emit HTML tags
web_no_css               :: (?i)\bclass\s*=\s*['"]    :: hard    :: Native B4X must not use CSS class strings
web_no_tailwind          :: (?i)\b(flex|grid)-?(row|col|wrap|items|justify)-?(start|end|center|between|around)?\b.*:: hard :: Native B4X must not use Tailwind-style utility classes
web_no_webview           :: (?i)\bWebView\b            :: hard    :: B4XDaisyUIKit is native, no WebView
web_no_jquery            :: (?i)\$\(                   :: hard    :: Native B4X, no jQuery

# --- B4X anti-patterns ---
b4x_no_addview           :: (?i)\.AddView\s*\(         :: hard    :: Components must use AddToParent, not raw AddView
b4x_no_flex_layout       :: (?i)\bFlexLayout\b         :: hard    :: B4XDaisyUIKit has its own layout primitives
b4x_no_gridlayout        :: (?i)\bGridLayout\b         :: hard    :: B4XDaisyUIKit has its own layout primitives
b4x_no_initialize_inline :: Dim\s+\w+\s+As\s+B4XDaisy\w+\s*\n\s*\w+\.Initialize\(    :: warn :: B4X requires explicit Dim then Initialize
b4x_no_broken_validator  :: IsValid\s*\(\s*\)          :: smell   :: IsValid() with no argument is a common bug

# --- Doc-only / hallucinated API patterns ---
doc_no_invented_props    :: (?i)\.AuraGlow\s*=\s*True   :: warn    :: Property name does not match the lib; likely hallucinated

# --- Recipe-correctness smells ---
recipe_no_3step          :: (?i)B4XDaisy\w+\.AddToParent\b(?![^.]*Initialize) :: smell :: AddToParent without preceding Initialize in same snippet