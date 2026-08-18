# pocketbase (`B4XDaisyPocketbase`)

Integrated REST & RealTime backend client for connecting B4XDaisy apps to PocketBase databases, authentication, file storage, and live SSE subscriptions.

## 1. Overview
- **Class**: `B4XDaisyPocketbase`
- **Status**: `Demonstrated`
- **Library Source**: `B4XDaisyPocketbase.bas`
- **Web DaisyUI Mapping**: `.pocketbase` → `B4XDaisyPocketbase`

## 2. Verified B4X Syntax & Recipe
```b4x
Dim pb As B4XDaisyPocketBase
pb.Initialize(Me, "pb", "https://my-pocketbase-server.com", "products")

' Authenticate user
Wait For (pb.AuthWithPassword("user@example.com", "secret123")) pb_Success (Data As Map)
Log("Logged in as: " & Data.Get("record"))

' Fetch list of records
Wait For (pb.GetList(1, 20, "created DESC", "active = true")) pb_Success (Result As Map)
Dim items As List = Result.Get("items")
For Each item As Map In items
    Log("Product: " & item.Get("title"))
Next

```

## 3. Native Composition Rules & Gotchas
- Integrated REST & RealTime backend client for PocketBase databases.
- Authenticate users with `Wait For (pb.AuthWithPassword(Email, Pass)) pb_Success`.
- Perform async CRUD operations using `GetList`, `Create`, `Update`, and `Delete`.
- Subscribe to live SSE realtime updates via `Subscribe(Topic)` and handle `RealTime (Data As Map)` event.

## 4. Designer Properties
None declared.

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
- `GetJWTPayload(sToken As String) As Map`
- `Initialize(oModule As Object, sEventName As String, sUrl As String, sTableName As String) As B4XDaisyPocketBase`
- `IsRecordValid(mMap As Map, lstProps As List) As Boolean`
- `ListKeys As ResumableSub`


## 7. Public Fields
- `CountRecords As Boolean`
- `CreateRule As String`
- `DeleteRule As String`
- `DisplayField As String`
- `DisplayValue As String`
- `GetFiles As Boolean`
- `IsAuthenticated As Boolean`
- `ListRule As String`
- `MatchSchema As Boolean`
- `Operations As List`
- `Plural As String`
- `PrimaryKey As String`
- `Record As Map`
- `RowCount As Int`
- `Schema As Map`
- `ShowLog As Boolean`
- `Singular As String`
- `Success As Boolean`
- `Tag As Object`
- `UpdateRule As String`
- `Upgrade As Boolean`
- `UseAPIKey As Boolean`
- `UseBatch As Boolean`
- `UseRawInsertForm As Boolean`
- `UseRawUpdateForm As Boolean`
- `UserModel As Map`
- `UserProfile As ProfileType`
- `UserRecord As Map`
- `UserToken As String`
- `UserValid As Boolean`
- `UsersCollectionName As String`
- `ViewRule As String`
- `batchSize As Int`
- `const`
- `result As List`
- `skipTotal As Boolean`
