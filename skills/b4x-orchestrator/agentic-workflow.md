# Recommended Agentic Workflow

## Greenfield

1. Invoke `b4x-application-planner`.
2. Review/resolve OPEN items.
3. Bootstrap with `b4x-project-bootstrap`.
4. Implement features with `b4x-feature-engineer`.
5. Verify with the existing B4XDaisyUIKit verification pipeline.
6. Run runtime/user-journey tests.
7. Run `b4x-regression` as the final safety gate.
8. Release only when all mandatory gates pass.

## Existing application

1. Establish baseline.
2. Invoke `b4x-regression` for impact analysis.
3. Update contracts.
4. Implement with `b4x-feature-engineer`.
5. Verify.
6. Execute targeted and critical regression tests.
7. Produce a regression report.
8. Release only on PASS.

## Key principle

The agent should never infer missing facts simply because they would make implementation easier.

Unknown:

```text
OPEN
```

Verified:

```text
SOURCE OF TRUTH
```

Implemented:

```text
TRACEABLE TO CONTRACT
```

Tested:

```text
EVIDENCE
```
