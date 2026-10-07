# Android Device Interaction Notes

Use this reference for post-build checks that need taps, swipes, or precise visual targeting. It complements `capture-screens.ps1` and `sniff-logcat.ps1`.

## Device selection

- Run `pwsh -File <skill>/references/device-info.ps1 -Action List` to see connected devices and their state.
- For all other actions, the helper selects the only ready device automatically. If there are multiple ready devices, provide `-DeviceId <serial>` and keep using that same serial for every install, capture, input, and logcat command in the run.
- Use `-Action Size`, `Model`, `Version`, or `Top` to inspect the selected device. Device state `unauthorized` or `offline` is not ready; resolve it with the device before continuing.

## UI hierarchy lookup

`ui-inspect.ps1` runs Android `uiautomator dump`, parses the hierarchy, and returns compact JSON nodes with text, content description, resource ID, class, bounds, center, and common interaction flags. It filters empty decorative nodes by default; `-IncludeAll` returns the full node list.

```powershell
pwsh -File <skill>/references/ui-inspect.ps1 -Action Snapshot -DeviceId emulator-5554
pwsh -File <skill>/references/ui-inspect.ps1 -Action Find -SelectorType Text -Value "Continue"
pwsh -File <skill>/references/ui-inspect.ps1 -Action Find -SelectorType ResourceId -Value "com.example:id/continue" -Match Exact
pwsh -File <skill>/references/ui-inspect.ps1 -Action Wait -SelectorType Description -Value "Home" -TimeoutSec 12
```

Use exact matches by default; `-Match Contains` is available when labels vary. Prefer resource IDs when repeated labels make a text match ambiguous. A zero-node or empty result means the target may be rendered in a canvas/WebView or hidden by a system window; inspect a fresh screenshot and use the color/coordinate fallback below rather than guessing from an old tree.

## Guarded navigation plans

`navigate.ps1` executes a small JSON plan against one selected device and writes a JSON evidence report. Supported actions are `wait`, selector-based `tap`, `tapPoint`, `swipe`, allowlisted `key`, and selector-based `type`. It does not run arbitrary shell commands, install/uninstall apps, or clear data.

Each modifying step must specify an `expect` selector that is absent from the pre-action snapshot. The runner first records the current hierarchy, requires a selector tap to match exactly one node, performs the action, then waits for the expected state. Ambiguous selectors, failed actions, or a missing postcondition stop the plan; the report keeps completed steps and the failure. Add `-CaptureScreens` to save a screenshot after each verified step beside the JSON report.

Example plan:

```json
{
  "name": "Open preferences",
  "steps": [
    {
      "name": "Open account page",
      "action": "tap",
      "selector": { "type": "text", "value": "Account", "match": "exact" },
      "expect": { "type": "text", "value": "Account details", "match": "exact" },
      "timeoutSec": 10
    },
    {
      "name": "Wait for edit action",
      "action": "wait",
      "selector": { "type": "resourceId", "value": "com.example:id/edit_profile" },
      "timeoutSec": 8
    }
  ]
}
```

Run it with:

```powershell
pwsh -File <skill>/references/navigate.ps1 -PlanPath .\plans\account.json -EvidencePath .\ux-review\evidence\account.json -DeviceId emulator-5554 -CaptureScreens
```

`type` is limited to a conservative character set and the report records only its character count. Use non-secret test values; never put credentials in a plan or evidence report. `tapPoint`/`swipe` can target canvas content, but their `expect` still needs an accessible state to prove the transition. For canvas-only state changes, perform one action, capture a fresh screenshot, and review it visually before continuing the plan.

## Coordinate mapping

Prefer UI hierarchy/resource IDs and element bounds when they expose the target. For a target measured in screenshot pixels, convert using the screenshot's actual dimensions and `device-info.ps1 -Action Size`:

```text
deviceX = imageX * deviceWidth / imageWidth
deviceY = imageY * deviceHeight / imageHeight
```

If targeting a view inside known bounds `[left,top][right,bottom]`, use those bounds as the interaction area and keep taps/gestures inside it. Do not infer device coordinates from a resized preview without applying the scale. Confirm the result with a fresh screenshot after each state-changing interaction; for map zoom/pan, re-identify the target after every gesture instead of chaining guessed coordinates.

## Input wrapper

`input.ps1` supports bounded tap, swipe, text, and a small allowlist of common key events. It selects one ready device or accepts `-DeviceId` explicitly. Examples:

```powershell
pwsh -File <skill>/references/input.ps1 -Action Tap -X 540 -Y 900 -DeviceId emulator-5554
pwsh -File <skill>/references/input.ps1 -Action Swipe -X 540 -Y 1400 -EndX 540 -EndY 500 -DurationMs 350
pwsh -File <skill>/references/input.ps1 -Action Text -Value "hello world"
pwsh -File <skill>/references/input.ps1 -Action Key -Value KEYCODE_BACK
```

The wrapper does not install/uninstall apps, clear app data, or delete device files. Use the existing install workflow for deployment. Text entry is intentionally restricted to a conservative character set; enter unsupported characters through the app or an approved test mechanism.

## Canvas and color targeting

Maps, games, and custom `SurfaceView`/`TextureView` content may not expose child elements through the Android UI hierarchy. Capture the rendered screen, then use `find-colors.py` to locate a distinctive marker or icon by approximate color. The script reports screenshot-pixel centers; convert those coordinates with the formula above before sending input.

```powershell
python <skill>/references/find-colors.py <screenshot.png> red
python <skill>/references/find-colors.py <screenshot.png> --rgb 51,102,255 --tolerance 40 --bounds 0,120,1080,2200 --json
```

Color matching is approximate and can return noise or merge adjacent same-color objects. Inspect the screenshot and select the relevant reported component; tighten `--tolerance`, set `--min-size`, or narrow `--bounds` when needed. The helper requires Pillow (`python -m pip install Pillow`) and does not install dependencies automatically.
