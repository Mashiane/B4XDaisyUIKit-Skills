# B4A Production Hardening Gate

This is a release gate, not a development-scaffold gate. Run it after the app builds and before distributing an APK.

```powershell
pwsh -File <skill>/references/verify-production-hardening.ps1 -AppFolder C:\b4a\workspace\<AppName>
```

The gate fails when the manifest enables `android:debuggable`, cleartext networking is enabled, a literal provider credential appears in source, or a sensitive Android permission lacks an explicit entry in `<AppFolder>/approved-permissions.json`.

The approval file is a JSON string array, for example:

```json
["android.permission.CAMERA"]
```

Approval records why the application needs a permission. Remove development-only permissions and replace client-embedded credentials with a server-side authenticated boundary or a platform-secure credential mechanism.

## Build Variants

Ship three variants; never distribute a debug build:

| Variant | API | Logs | Minified | Debuggable |
|---|---|---|---|---|
| debug | dev | on (`DebugLogs = True`) | no | yes |
| staging | staging | on | yes | no |
| release | prod | off (`DebugLogs = False`) | yes | no |

Release gates: `android:debuggable="false"`, R8/minification on, `DebugLogs = False` in `B4XDaisyApp`.

## Signing

Sign the release AAB with the upload key from CI secrets (never committed). Document key location + recovery in the team runbook. Verify signature before every upload.

## Staged Rollout (Play Console)

internal track -> closed testing -> open testing -> production at 5% -> 20% -> 50% -> 100%, with 24-48h monitoring between steps. Never skip stages for significant changes.

Ship thresholds (block expansion on breach):

- Crash-free sessions >= 99.5% (Crashlytics).
- ANR rate < 0.47% (Play vitals threshold).
- No new FATAL EXCEPTION / ANR in build-watch logcat.

## Rollback Plan

Keep the prior release AAB + version code. On threshold breach: halt rollout in Play Console, roll back to the prior track release, file severity-4+ UX-review issue with logcat evidence, fix forward. Assign on-call before promoting past 5%.
