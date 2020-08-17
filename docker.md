---
layout: default
---
Docker CheatSheet
---
	
### Remove containers with the same images
	docker images | grep a7a8 | awk '{print $1 ":" $2}' | xargs docker rmi 

### Remove exited containers
	docker rm $(docker ps -a -f status=exited -q)

### stop start

	docker stop [id]
	
### passing environment to docker

	docker run -e MAPBOX_KEY="$MAPBOX_KEY" --privileged -it -v $(pwd)/data:/data -p 8080:80 lc-tileserver-latest	