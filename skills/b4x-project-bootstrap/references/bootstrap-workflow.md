---
name: bootstrap-workflow
description: Step-by-step to scaffold a new B4XDaisyUIKit app from standard bootstrap template files.
metadata:
  category: reference
  triggers: scaffold, new app, new project, bootstrap, b4xmainpage template, project template, page template
---

# Bootstrap Workflow

Scaffold a new native Android app from standard bootstrap templates. The
template files in this skill's `references/` folder provide the ready-to-use
generic app shell. Do not hand-write the shell from scratch.

## Prerequisites

- B4A installed at `C:\Program Files\Anywhere Software\B4A\`.
- The `b4xdaisyuikit` b4xlib referenced.
- A connected Android device or emulator for the final build.

## Files in this skill

| File | Becomes (in app folder) |
|------|--------------------------|
| `B4XMainPage.template.bas` | `B4XMainPage.bas` (name is FIXED, do not change) |
| `B4XPageNavDock.template.bas` | `<PageName>.bas` (screen with top navbar and bottom dock tabs) |
| `B4XPageNavOnly.template.bas` | `<PageName>.bas` (sub-page with top navbar only, no dock) |
| `project.template.b4a` | `<AppName>.b4a` (must match folder name) |
| `install.template.ps1` | `install.ps1` |
| `build-watch.template.ps1` | `build-watch.ps1` (auto-run by install.ps1 after launch; build-stage runtime gate) |

## Steps

1. **Create the app folder.** Pick an AppName (PascalCase, no spaces, e.g.
   `MyStore`). Create `C:\b4a\workspace\<AppName>\` (or wherever you keep
   projects). The folder name MUST equal the `.b4a` file name, because
   `install.ps1` discovers the project as the single `*.b4a` in the folder.

2. **Drop the template files and rename for your app.**
   - `B4XMainPage.template.bas` -> `B4XMainPage.bas` (KEEP this exact name;
     B4XPages requires it).
   - `project.template.b4a` -> `<AppName>.b4a`.
   - `install.template.ps1` -> `install.ps1`.
   - `build-watch.template.ps1` -> `build-watch.ps1` (install.ps1 auto-runs it
     after launch to evidence runtime UX items; skip only if you do not want
     the build-stage runtime gate).

3. **Genericize the package name and label in `<AppName>.b4a`.**
   - `Build1=Default,com.example.myapp` -> your reverse-DNS package.
   - `#ApplicationLabel: My App` -> your app display name.
   - `com.example.myapp.main` inside `TryPinToHomeScreen` -> `<pkg>.main`.
   - `"My App"` short/long labels in the `#If Java` `_pinToHome` block.

4. **Wire app pages in `B4XMainPage.bas` at the three wiring spots (by
   location, not inline markers, the template carries none).**
   - **(A)** `Class_Globals`: declare one `Public <Name>Page As B4XPage<Name>`
     per page.
   - **(B)** `ShowSplashScreen`: `<Name>Page.Initialize` then
     `B4XPages.AddPage("<id>", <Name>Page)` per page.
   - **(C)** start page id: `ShowPageWithLoader("<startId>")` in
     `B4XPage_Created`, and the reopen id in `B4XPage_Appear` /
     `B4XPage_CloseRequest`.

5. **Create the page `.bas` files.**
   - For main screens with top-level tabs: start from `B4XPageNavDock.template.bas`.
   - For sub-pages/detail forms: start from `B4XPageNavOnly.template.bas`.
   - Use the `b4xdaisyuikit` skill for page composition (components,
     NavScrollDock inset pattern, validation).
   - Always call `navbar.BringToFront` directly.
   - Always end `RenderContent` with `pageScroll.AutoFit`.
   - Add each new page to `<AppName>.b4a` as a `ModuleN=<PageName>` line and bump
     `NumberOfModules`. This is a common failure: forgetting the `ModuleN`
     wiring means the page compiles standalone but the IDE/build does not include it.
   - Every page `.bas` MUST start its design-text header on line 1:
     `B4A=true` / `Group=` / `ModulesStructureVersion=1` / `Type=Class` /
     `Version=13.70` / `@EndOfDesignText@`. Do NOT put any comment or blank line
     before `B4A=true`.

6. **Assets & `Files/` directory.**
   - `B4XDaisyUIKit.b4xlib` ships all standard assets (SVG icons,
     `Casino_Hand.ttf`, `mashymain.jpg`, sample photos, `daisylogo.png`, `pdfium license.txt`,
     and `ShineButton` shape PNGs: `heart.png`, `like.png`, `smile.png`, `star.png`).
     B4A automatically unzips and integrates them into `File.DirAssets` during build.
   - For any ADDITIONAL app-specific assets, place them into `<AppName>\Files\`
     and append BOTH a `FileN=<name>` line AND a `FileGroupN=Default Group`
     line in `<AppName>.b4a`, then bump `NumberOfFiles`. Missing `FileGroupN` per
     file throws KeyNotFoundException at build.
   - No `res/` folder or `#AdditionalRes: res` is needed.

7. **Prune unused libraries** in `<AppName>.b4a` (optional but recommended).
   The template ships the standard component library set. Drop what the app does not use
   (gps, geocoder, fusedlocationprovider, ac_leafletview, pdfium,
   shinebutton, mediachooser, simplemediamanager) and their matching
   `#AdditionalJar` lines + manifest permissions. Keep the minimum set:
   `b4xpages, xui, xui views, xcustomlistview, json, okhttp, okhttputils2,
   stringutils, javaobject, reflection, runtimepermissions, sql,
   bitmapcreator, core, fileprovider, contentresolver, b4xdaisyuikit`.

8. **Build and install.** From the app folder run:
   ```
   ./install.ps1
   ```
   Never call `B4ABuilder.exe` or `adb` directly. The script cleans Objects,
   builds, installs the APK to every connected device, and launches it.

## Verification gate

Before declaring done, run the `b4x-verify` skill:
- **Conformance:** every component type referenced in generated `.bas` files
  exists in the component manifest.
- **Coverage:** every component the app needs has a Demonstrated example +
  recipe (use `b4xdaisyuikit` to fill gaps).
- **Compile-readiness:** no missing page refs, every page wired as
  `ModuleN`, `./install.ps1` builds green.

## Red flags (STOP)

- Renaming `B4XMainPage.bas` to anything else. B4XPages will not find it.
- `.b4a` file name not matching the folder name. `install.ps1` will still
  find it (it globs), but the IDE expects the match and other tooling breaks.
- Forgetting `ModuleN=` for a new page. Page compiles alone, build omits it.
- Calling `navbar.getView.BringToFront` instead of `navbar.BringToFront`.
- Omitting `pageScroll.AutoFit` at the end of `RenderContent`.
- Editing any `B4A/*.bas` in the source library. Those are immutable. New
  app pages live in the app folder, not the library.
- Adding a new component method not in the manifest. It does not exist; you
  are rationalizing. Check the manifest or the `b4xdaisyuikit` skill.
- Hand-writing the shell instead of copying the template. The template shell has
  proven loader/SweetAlert/animation/pin logic. Reuse it.
