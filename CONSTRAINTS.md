# B4XDaisyUIKit-Skills Constraints & Quality Ratchet

Mechanical enforcement of quality floors, architectural rules, and documentation contracts across B4XDaisyUIKit-Skills. Verified by `tools/check-constraints.ps1`.

---

## Floor (always enforced, no exception)

These rules are absolute. Any violation immediately fails the build, packaging, or release gates:

1. **No Web Technologies in Generated B4A Code (`RULE-ANTI-001`, `NEG-001` - `NEG-004`)**:
   - No HTML tags (`<div>`, `<button>`, `<span>`, etc.).
   - No CSS attributes, inline styles, or Tailwind utility class strings (`w-full`, `p-4`, `flex`, `grid`).
   - No WebView wrappers unless explicitly demanded by user prompt.
2. **100% Component Conformance (`RULE-ANTI-002`, `NEG-002`, `NEG-033` - `NEG-038`)**:
   - Every `B4XDaisy*` component referenced in generated code must exist in `component-manifest.md`.
   - Never invent methods, properties, or event hooks absent from the verified API corpus.
3. **No Direct Component Sizing (`NEG-006`, `NEG-007`)**:
   - Never mutate `.Width` or `.Height` directly on B4XDaisy custom views. Dimensions must be passed via `.AddToParent(Parent, Left, Top, Width, Height)`.
4. **Mandatory AutoFit on Scrollable Pages (`RULE-LAYOUT-003`, `NEG-011`)**:
   - Any page subroutine that mounts controls inside `B4XDaisyPageScroll` must end with `pageScroll.AutoFit`.
5. **No Empty Catch Blocks (`RULE-CODE-002`, `NEG-043`)**:
   - Empty `Catch` blocks are strictly forbidden. All caught exceptions must be logged via `If B4XDaisyApp.DebugLogs Then Log("B4XDaisy<Module>.<Sub>: " & LastException.Message)`.
6. **Strict Hungarian Parameter Naming (`RULE-CODE-001`, `NEG-044`)**:
   - Subroutine parameters and local variables must use type-based Hungarian prefixes (`sText`, `iLeft`, `bEnabled`, `vParent`, `mProps`, `lstItems`, `bmpImage`, `joView`) to prevent compiler shadowing.
7. **B4A Project & Module File Integrity (`RULE-SETUP-001` - `RULE-SETUP-004`)**:
   - The primary entry module must be named `B4XMainPage.bas`.
   - First line of `.b4a` must be `Build1=`; first line of `.bas` must be `B4A=true`.
   - `NumberOfModules` in `.b4a` must match the actual count of wired `.bas` modules.

---

## Enforced with numbers

The skill corpus and test suites must never ratchet backward. Metrics must meet or exceed these floors:

| Metric | Minimum Floor | Current Value | Verification Source |
| :--- | :---: | :---: | :--- |
| **Documented Components** | $\ge 108$ | 111 | `components/*.md` count |
| **Reference Guides** | $\ge 20$ | 25 | `references/*.md` count |
| **Domain Cookbooks** | $\ge 9$ | 10 | `chapters/*.md` count |
| **Formalized Negative Rules** | $\ge 50$ | 50 | `references/negative-knowledge.md` (`NEG-*`) |
| **daisyUI v5 Parity Coverage** | $\ge 95\%$ | 100.0% (68/68) | `daisyui-parity-benchmark.md` |
| **Skill Validation Errors** | 0 | 0 | `tools/validate-skills.ps1` exit code |
| **Interactive Touch Target Minimum** | $\ge 48\text{dip}$ | $48\text{dip}$ ($44\text{dip}$ floor) | Fitts's Law / WCAG 2.5.5 |
| **Navigation Dock Items Maximum** | $\le 5$ | $\le 5$ | Hick's Law / Mobile UX |

---

## Measured, not yet enforced

Metrics tracked for visibility and future automated gating:

1. **Demonstrated vs. Documented-Only Ratio**: Target $\ge 90\%$ demonstrated components in verified sample apps.
2. **G6 UX Visual Audit Scores**: Target average score $\ge 3.5/4.0$ across all five quality dimensions in `design-quality-playbook.md`.
3. **Execution Time of Pre-Scan**: Target $< 2$ seconds for static pre-scan across standard multi-page apps.

---

## Exceptions

Tracked waivers for legacy or transitional code. All waivers must carry an unexpired resolution date.

| Exception ID | Rule | Scope | Reason | Target Fix Date | Status |
| :--- | :--- | :--- | :--- | :--- | :--- |
| *None* | — | — | No open exceptions. All quality floors active. | — | **CLEAN** |

---

## Verification

To verify full constraint compliance mechanically across the repository:

```powershell
# Standard verification (allows advisory warnings)
powershell -ExecutionPolicy Bypass -File tools/check-constraints.ps1

# Strict verification (release-blocking: zero warnings, zero expired exceptions)
powershell -ExecutionPolicy Bypass -File tools/check-constraints.ps1 -Strict
```
