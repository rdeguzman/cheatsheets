# Docker
	
### Remove containers with the same images
	docker images | grep a7a8 | awk '{print $1 ":" $2}' | xargs docker rmi 

### Remove exited containers
	docker rm $(docker ps -a -f status=exited -q)

### stop start

	docker stop [id]
	
### passing environment to docker

	docker run -e MAPBOX_KEY="$MAPBOX_KEY" --privileged -it -v $(pwd)/data:/data -p 8080:80 lc-tileserver-latest	

### cleanup images and containers

	docker image prune -f

	docker container prune -f

### see processes within container

	docker top [container-id]


### docker-compose

    docker-compose -f filename up

with a specific service (db)

    docker-compose -f filename up db

run docker build with a tag if you use it in compose

    docker build . -f filename -t service_name:latest
    docker-compose -f filename up

