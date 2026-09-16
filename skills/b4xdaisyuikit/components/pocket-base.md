# pocket-base (`B4XDaisyPocketBase`)

DaisyUI `PocketBase` component for B4X (B4A Android).

## 1. Overview
- **Class**: `B4XDaisyPocketBase`
- **Lifecycle Type**: `UNVERIFIED (no demo found)`
- **Library Source** *(read-only reference — never add to user project)*: [`B4XDaisyPocketBase.bas`](https://github.com/Mashiane/Sithaso-B4XDaisy-UIKit---Native-Android-Components-inspired-by-DaisyUI/blob/main/B4XDaisyUIKit/B4XDaisyPocketBase.bas)
- **Verified Demo Source**: (none — Documented-only; API extracted from packaged source)
- **Web DaisyUI Mapping**: `.pocket-base` → `B4XDaisyPocketBase`

## 2. Verified B4X Syntax & Recipe
```b4x
' Initialize PocketBase client with base URL and collection name
Dim pb As B4XDaisyPocketBase
pb.Initialize(Me, "pb", "https://my-pocketbase.app", "posts")

' Query records asynchronously
pb.GetList(1, 20, "created DESC", "")
```

## 3. Native Composition Rules & Gotchas
### Lifecycle Sequence
1. Component `B4XDaisyPocketBase` is declared in library source but no demo page references or instantiates it.

### Preconditions & Gotchas
- Not demonstrated in any demo page.
- Verify source code and internal dependencies directly before production use.

### Discrepancies & API Nuances
- Component `B4XDaisyPocketBase` exists in B4A source but has no corresponding demo usage in B4XPage*.bas / B4XMainPage.bas.

## 4. Designer Properties
(none declared in packaged source)

## 5. Declared Events
- `Connect (data As Map)`
- `Disconnect (data As Map)`
- `ConnectError (data As Map)`
- `RealTime (data As Map)`
- `Changes (e As Map)`
- `Change (Action As String, Record As Map, TableName As String)`
- `AuthChange (Token As String, Model As Map)`
- `BeforeSend (url As object, options As Object)`
- `AfterSend (response As Object, data As Object)`

## 6. Public Methods & APIs
- `Initialize(Module As Object, EventName As String, Url As String, Table As String) As B4XDaisyPocketBase`
- `ListKeys As ResumableSub`
- `GetJWTPayload(Token As String) As Map`

## 7. Public Fields
(none declared in packaged source)

