---
layout: default
---
Docker CheatSheet
---
	
### Remove containers with the same images
	docker images | grep a7a8 | awk '{print $1 ":" $2}' | xargs docker rmi 