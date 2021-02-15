---
layout: default
---
TMUX CheatSheet
---

	

### New session
	tmux n

### List session
	tmux ls

### Attach session
	tmux a -t 0

### Copy and Paste to system clipboard
	ctrl + b + [
	ctrl j or k # vi commands or : then goto line 
	spacebar    # start highlight
	enter       # end highlight, copied already in tmux clipboard

to paste in system OSX clipboard

	tmux showb | pbcopy


