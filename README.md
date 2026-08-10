# README: B4XDaisyUIKit Modular Agent Skill (v2)
## The Audited Truth of Codebase Specifications, Stock Counts, and Negative Guardrails

This directory houses the **canonical modular intermediate knowledge representation** and **AI agent skill files** compiled from the deep forensic audit of the **B4XDaisyUIKit** framework and its demo code examples (`B4XDaisyUIKitDemo.txt`).

---

## 🔬 Audited Factual Stock Counts & Classifications

Our forensic audit of `B4XDaisyUIKitDemo.txt` bypassed speculative web-development assumptions to establish the absolute, ground-truth inventory of the B4A project directory:

1.  **Total Scanned Code Modules**: **191 Modules** [712] (Traceable with 100% confidence).
2.  **Total Native Component Views**: **102 Classes** (`B4XDaisy` prefix) [712, 859]:
    *   *Native User-Facing Components*: **95 Classes** (e.g. `B4XDaisyButton`, `B4XDaisyInput`, `B4XDaisyBadgeGroupSelect`) [859].
    *   *Design-System Helper / Utility Classes*: **7 Classes** (i.e. `B4XDaisyVariants`, `B4XDaisyApp`, `B4XDaisyFlexItem`, `B4XDaisyBoxModel`, `B4XDaisyButtonPlaceManager`, `B4XDaisyPiecePlaceManager`, `B4XDaisyBoomPathManager`) [859].
3.  **Total Registered Demo Screens**: **89 B4XPage Modules** (`B4XPage` prefix) [712, 859].

---

## ⛔ Audit Corrections: Observed vs. Hypothetical Recipes

To protect developer agents from assembly failures, we audited the initial proposed recipes against the active codebase. **The Factual Truth is as follows**:

*   **OBSERVED RECIPES (100% Verified in Code — HIGH Confidence)**:
    1.  `RECIPE-APP-001` (Tabbed Drawer Dashboard): Built from `B4XMainPage` + `B4XPageDashboard` + `B4XPageMenu` + `B4XPageNavbar`. Utilizes 150ms loader transitions (`WORKFLOW-ROUTING-001`) [863].
    2.  `RECIPE-APP-002` (Form Entry with Sheet Modal Confirmation): Built from `B4XMainPage` + `B4XPageInput` + `B4XPageSweetAlertInputs` + `B4XPageSheetModal`. Utilizes recursive input validation traversals (`PT_VALIDATION_FLOW`) [863].
*   **HYPOTHETICAL RECIPES (Unsupported by Code — MOVED TO HYPOTHESES.MD)** [861, 862]:
    *   *Storefront / E-Commerce Recipe*: **UNSUPPORTED**. None of the page files (`B4XPageHome.bas`, `B4XPageProductDetail.bas`, `B4XPageCart.bas`) exist in the active codebase [861].
    *   *SaaS Admin Dashboard Recipe*: **UNSUPPORTED**. `B4XPageUserList.bas` and `B4XPageSettings.bas` do not exist [861].
    *   *Chat Messaging Application Recipe*: **UNSUPPORTED**. `B4XPageConversations.bas` and `B4XPageProfile.bas` do not exist [861].

---

## ⛔ Critical Negative Guardrails Integrated

To prevent AI code generation failures, the master `SKILL.md` implements strict negative guardrails banning the use of un-demonstrated, non-existent, or unsupported systems:
*   **Banned Sizing Setter properties**: Setting `MyComponent.Width` or `MyComponent.mBase.Width` directly is banned (bypasses Tailwind bracket parser resolutions). Must use custom string-based setters like `MyComponent.setWidth("100%")` or `MyComponent.setHeight("h-12")` or `.setWidth("12rem")` [B4XDaisy-Layout-Rules.md].
*   **Banned Real-time Subscriptions**: PocketBase real-time push subscriptions (`Subscribe`, `RealtimeSubscribe`, etc.) are deferred and non-functional in B4A [523, 855].
*   **Banned Active Auth Sessions**: There is no active session management, JWT refresh tokens, or security login controllers inside the active B4XPage examples [negative-knowledge.md].
*   **Banned Stylesheet / Webfont Imports**: Importing external custom `.css` stylesheets or dynamically injecting external webfonts at runtime is unsupported [negative-knowledge.md]. All styles are compiled from the native design-system tokens resolved by `B4XDaisyVariants` [negative-knowledge.md].
