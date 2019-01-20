---
layout: default
---
SSH CheatSheet
---

### Enter passphrase for

	eval "$(ssh-agent)"
	ssh-add -K

### SSH Port Proxy

	ssh -o ProxyCommand='ssh -W %h:%p -i ~/.ssh/yourkey.pem ubuntu@proxy-server-ip' -i ~/.ssh/yourkey.pem ubuntu@source-server-ip

### SSH Custom Port Tunneling

	ssh -o ProxyCommand='ssh -W %h:%p -i ~/.ssh/yourkey.pem ubuntu@proxy-server-ip' -i ~/.ssh/yourkey.pem ubuntu@source-server-ip -L 8080:localhost:8080 -Nvv
