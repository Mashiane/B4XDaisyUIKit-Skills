# ADR-TEMPLATE — App-Level Architecture Decision Record

Copy to `docs/adr/ADR-<NNN>-<slug>.md` in the app folder (or the repo
`docs/adr/` for skill-level decisions). One ADR per decision. Keep it under
20 lines — record the trade-off, not the meeting.

- date: YYYY-MM-DD
- context: What forced the choice (constraint, failure, new requirement).
- decision: What was chosen, with concrete names/versions/paths.
- alternatives: What was rejected and the one-line reason each.
- affects: [files, gates, components touched]

## B4X App Conventions

- Record the pinned `b4xdaisyuikit` b4xlib version in every app-level ADR
  that touches UI (e.g. `b4xlib: v1.4.3`).
- Library upgrades get their own ADR: old version → new version, re-verify
  gate result, screenshot delta (none / list screens).
- Severity of skipping: undocumented upgrades fail the release review.
