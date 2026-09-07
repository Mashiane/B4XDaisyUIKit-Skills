# Component Synthesis Fixtures
#
# One JSON file per component. The harness picks a random sample (size
# configured in config.yaml -> layers.component_synthesis.sample_size) and
# runs each one through the agent runner.
#
# Schema:
# {
#   "id": "button",
#   "class": "B4XDaisyButton",
#   "prompt": "Build a B4XDaisyButton primary 'Save' button ...",
#   "rubric_hints": ["use Initialize(Me, ...)", "set Variant = 'primary'"],
#   "expected_signatures": ["Initialize(Me,", "AddToParent(", "Variant ="],
#   "must_not_contain": ["AddView(", "WebView", "btn-primary"]
# }

See `button.json` and `card.json` for examples.