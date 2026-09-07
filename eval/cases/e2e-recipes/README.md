# E2E Recipe Fixtures
#
# One JSON file per chapter (ch01..ch09). The harness:
#   1. Loads the chapter markdown as skill context
#   2. Sends the prompt to the agent runner
#   3. Writes the generated B4XPage*.bas to a scratch folder
#   4. Optionally invokes the B4A compiler to verify it parses
#
# Schema:
# {
#   "id": "ch01-dashboards",
#   "chapter": "ch01-dashboards.md",
#   "prompt": "Build me a B4XPage named B4XPageDashboard ...",
#   "expected_files": ["B4XPageDashboard.bas"],
#   "must_contain": ["Dim .* As B4XDaisyStat"],
#   "compile": true      # set true to run B4A compile after generation
# }