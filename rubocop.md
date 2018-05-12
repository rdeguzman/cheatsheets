---
layout: default
---
Rubocop CheatSheet
---

### Commands

In general cops are devided to linting, rails,  style

	rubocop .
	rubocop /path/to/file
	rubocop /path/to/file
	rubocop --auto­gen-config
	rubocop --format offenses
	rubocop --lint
	rubocop --show-cops
	rubocop --only Lint/AmbiguousOperator
	rubocop --only Lint/AmbiguousOperator
	rubocop --auto-correct --only FrozenStringLiteralComment .

	# vim rubocopy.yml
	Style/Encoding:
	  Enabled: false

	Metrics/LineLength:
	  Max: 200

