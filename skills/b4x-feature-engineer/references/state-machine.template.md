# Feature State Machine

## States

- IDLE
- LOADING
- READY
- EMPTY
- ERROR
- SUBMITTING
- SUCCESS
- UNAUTHORIZED
- OFFLINE

## Transitions

| Current | Event | Next | Side effect |
|---|---|---|---|
| IDLE | Load | LOADING | Start data request |
| LOADING | Data | READY | Render data |
| LOADING | No data | EMPTY | Render empty state |
| LOADING | Failure | ERROR | Show recovery |
| ERROR | Retry | LOADING | Repeat request |
