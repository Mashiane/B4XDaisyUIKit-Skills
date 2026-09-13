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
