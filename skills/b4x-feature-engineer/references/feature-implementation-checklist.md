# Feature Implementation Checklist

## Contract

- [ ] Feature contract read
- [ ] Application contract read
- [ ] Requirements identified
- [ ] Business rules identified
- [ ] Data dependencies identified
- [ ] Acceptance tests identified

## Domain

- [ ] Existing entities reused where appropriate
- [ ] New entities documented
- [ ] Validation implemented
- [ ] Business rules implemented outside presentation where practical

## Data

- [ ] Existing repository/service pattern reused
- [ ] Request/response contracts verified
- [ ] Authentication handled
- [ ] Errors mapped
- [ ] Offline behavior addressed if required

## UI

- [ ] Screen contract exists
- [ ] B4XDaisyUIKit APIs verified
- [ ] Correct creation order used
- [ ] Loading state
- [ ] Populated state
- [ ] Empty state
- [ ] Error state
- [ ] Retry state where applicable
- [ ] Validation feedback
- [ ] Accessibility review

## Navigation

- [ ] Entry route correct
- [ ] Exit route correct
- [ ] Back behavior correct
- [ ] Existing navigation preserved

## Quality

- [ ] Static verification
- [ ] Build
- [ ] Targeted acceptance tests
- [ ] Runtime smoke test
- [ ] Traceability updated
