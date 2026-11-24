---
name: b4x-code-smells
description: Detect and remediate code smells from codesmells.org catalog across B4XDaisyUIKit skills
---

# B4XDaisyUIKit Code Smell Detection

> [!NOTE]
> **Prerequisite:** **[Jerryk133/b4x-skill](https://github.com/Jerryk133/b4x-skill)** (`b4x`) serves as the baseline reference for idiomatic B4X code structure and anti-patterns (such as Java/VB contamination and uninitialized collections).

This skill detects and remediates code smells from the [Code Smells Catalog](https://www.codesmells.org/) across B4XDaisyUIKit-Skills repository — covering skill markdown files, B4A code samples, PowerShell scripts, and JSON configuration.

## 🎯 Purpose

Map the 56 peer-reviewed code smells to this project's artifacts and provide automated detection via the existing validation pipeline.

## 📦 Scope

| Artifact Type | Smell Categories |
|---|---|
| Skill markdown (SKILL.md, references/*.md) | Lexical, Linguistic, Dispensables, Obfuscators |
| B4A code samples (references/*.bas, *.b4a) | Bloaters, Object-Oriented Abusers, Change Preventers |
| PowerShell scripts (tools/*.ps1) | Functional Abusers, Data Dealers, Couplers |
| JSON configs (skills-registry.json, component-*.json) | Data Clumps, Primitive Obsession |

## 🔍 Detection Rules

### 1. Lexical Abusers (Markdown/Documentation)
| Smell | Detection | Fix |
|---|---|---|
| **Fallacious Comment** | Comment contradicts code behavior | Update or remove |
| **Fallacious Method Name** | Method name doesn't match behavior | Rename to match |
| **Uncommunicative Name** | Single-letter or abbreviated names | Use intention-revealing names |
| **Inconsistent Names** | Same concept, different terms | Standardize vocabulary |
| **Type Embedded in Name** | `varString`, `listItems` | Remove type from name |
| **What Comment** | Comments narrating what code does | Extract to well-named function |

### 2. Bloaters (B4A Code / PowerShell)
| Smell | Detection | Fix |
|---|---|---|
| **Long Method** | > 30 lines / > 100 chars wide | Extract method |
| **Large Class** | > 500 lines / > 20 methods | Split by responsibility |
| **Long Parameter List** | > 4 parameters | Introduce parameter object |
| **Data Clump** | Same 3+ params travel together | Create object/DTO |
| **Primitive Obsession** | Phone as string, price as float | Create domain types |

### 3. Object-Oriented Abusers (B4A / Skill Structure)
| Smell | Detection | Fix |
|---|---|---|
| **Feature Envy** | Method uses another class's data more than own | Move method |
| **Data Class** | Class holds data, no behavior | Add behavior or make struct |
| **Refused Bequest** | Subclass throws NotImplemented | Favor composition |
| **Inappropriate Static** | Static method hard to mock | Instance method + DI |

### 4. Change Preventers (Cross-file)
| Smell | Detection | Fix |
|---|---|---|
| **Shotgun Surgery** | One change → many files | Consolidate related logic |
| **Divergent Change** | Class changes for multiple reasons | Split by reason |
| **Parallel Inheritance** | Add subclass A → must add subclass B | Flatten hierarchy |

### 5. Dispensables (All)
| Smell | Detection | Fix |
|---|---|---|
| **Duplicated Code** | Same logic in 3+ places | Extract common function |
| **Dead Code** | Unreachable / unreferenced | Delete |
| **Speculative Generality** | Unused abstraction for "future" | YAGNI — remove |
| **Lazy Element** | Class with 1 method delegating | Inline |

### 6. Couplers (Cross-boundary)
| Smell | Detection | Fix |
|---|---|---|
| **Message Chain** | `a.getB().getC().doX()` | Hide delegation |
| **Middle Man** | Class only delegates | Remove indirection |
| **Insider Trading** | Classes share private details | Define clear interface |

### 7. Obfuscators (Readability)
| Smell | Detection | Fix |
|---|---|---|
| **Complicated Boolean** | Nested &&/||/! hard to parse | Extract predicate method |
| **Magic Number** | Bare literal (86400, 1024) | Named constant |
| **Vertical Separation** | Declaration far from use | Move declaration down |
| **Inconsistent Style** | Mixed formatting conventions | Auto-format |

### 8. Functional Abusers (PowerShell / Scripts)
| Smell | Detection | Fix |
|---|---|---|
| **Side Effects** | Function modifies global state | Return value instead |
| **Mutable Data** | Global variables modified anywhere | Encapsulate + immutability |
| **Imperative Loops** | Manual index tracking | Use pipeline/Where-Object |

## 🛠️ Integration: Extend validate-skills.ps1

Add to `tools/validate-skills.ps1` after line 115:

```powershell
# code smell scan (advisory WARN)
$smellPatterns = @(
    # Magic numbers
    @{Pattern='\b\d{4,}\b';          Msg='Magic number literal';                    Category='Obfuscators'}
    # Long lines
    @{Pattern='^.{120,}$';           Msg='Line exceeds 120 chars';                   Category='Bloaters'}
    # Boolean blindness
    @{Pattern='\b(true|false)\b';    Msg='Raw boolean literal (boolean blindness)';  Category='Lexical'}
    # God function (many lines in function)
    @{Pattern='(function|Sub)\s+\w+.*\n(\s.*\n){30,}'; Msg='Long method (>30 lines)'; Category='Bloaters'}
    # Duplicated code blocks (simple heuristic)
    @{Pattern='(\b\w+\s*=\s*\w+\([^)]*\)\s*\n){3,}'; Msg='Potential duplicated pattern'; Category='Dispensables'}
    # Commented code
    @{Pattern='^\s*#.*(If|For|While|Function|Sub)\b'; Msg='Commented-out code block'; Category='Dispensables'}
    # Message chain (B4A)
    @{Pattern='\.\w+\(\s*\)\.\w+\(\s*\)\.\w+'; Msg='Message chain (Law of Demeter)'; Category='Couplers'}
    # Inconsistent naming
    @{Pattern='\b(get|set|add|put|store|save|load|fetch)\w*\b'; Msg='Check naming consistency'; Category='Lexical'}
)

foreach ($f in $mdFiles + (Get-ChildItem -LiteralPath (Join-Path $RepoRoot 'tools') -Filter '*.ps1' -File) + (Get-ChildItem -LiteralPath (Join-Path $RepoRoot 'skills') -Recurse -Filter '*.bas' -File) + (Get-ChildItem -LiteralPath (Join-Path $RepoRoot 'skills') -Recurse -Filter '*.b4a' -File)) {
    $text = Get-Content -LiteralPath $f.FullName -Raw
    foreach ($sp in $smellPatterns) {
        if ($text -match $sp.Pattern) {
            Warn("[$($sp.Category)] $($sp.Msg) in $($f.FullName.Replace($RepoRoot,''))")
        }
    }
}
```

## 📋 Usage

### Run Detection
```powershell
# Full validation + smell detection
pwsh -File tools/validate-skills.ps1

# Quick smell-only scan (markdown only)
pwsh -Command "
  $smells = @(
    '\b\d{4,}\b', '^.{120,}$', '\b(true|false)\b',
    '(function|Sub)\s+\w+.*\n(\s.*\n){30,}',
    '^\s*#.*(If|For|While|Function|Sub)\b'
  )
  Get-ChildItem skills -Recurse -Filter '*.md' | ForEach-Object {
    $t = Get-Content $_.FullName -Raw
    foreach ($p in $smells) {
      if ($t -match $p) { Write-Host \"SMELL: $($_.FullName) matches $p\" }
    }
  }
"
```

### Auto-Fix Common Smells

| Smell | Auto-Fix |
|---|---|
| Trailing whitespace | `sed -i 's/\s\+$//'` |
| Magic numbers → constants | Manual (requires intent) |
| Long lines | Auto-wrap at 120 |
| Inconsistent headers | Normalize to ATX `#` |

## 📚 Reference

- [Code Smells Catalog](https://www.codesmells.org/) — 56 smells, 10 categories, Springer Nature research
- [Clean Code](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-code.html) — Uncle Bob
- [Refactoring.Guru Smells](https://refactoring.guru/refactoring/smells) — Visual catalog

## 📝 Skill Metadata

```yaml
name: b4x-code-smells
description: Detect and remediate code smells from codesmells.org catalog across B4XDaisyUIKit skills
category: quality
depends: []
recommends: [b4x-verify, validate-skills]
risk: safe
status: experimental
version: 1.0.0
authority: 4
platforms: [b4a, powershell, markdown, json]
keywords: [code-smell, quality, refactoring, validation, clean-code, codesmells-org]
```

## 🔗 Related Skills

- `b4x-verify` — Post-build visual UX review
- `validate-skills` — Registry/schema/reference validation (extend with smells)
- `clean-code` — General clean code principles
- `code-refactoring-refactor-clean` — Refactoring expertise