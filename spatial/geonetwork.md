# Geonetwork

Install using docker

	docker pull geonetwork:3.12.5-postgres

Create script

    docker \
      run \
      --rm \
      --name 'geonetwork' \
      -it -p 8080:8080 \
      -e ES_PROTOCOL=https \
      -e ES_HOST=192.168.1.115 \
      -e ES_USERNAME=elastic \
      -e ES_PASSWORD=xxxx \
      -e POSTGRES_DB_HOST=192.168.1.115 \
      -e POSTGRES_DB_PORT=5432 \
      -e POSTGRES_DB_NAME=geonetworkdb \
      -e POSTGRES_DB_USERNAME=geonetwork \
      -e POSTGRES_DB_PASSWORD=xxx \
      -e DATA_DIR=/var/lib/geonetwork/data \
      -v /Users/rupert/Projects/data-catalog/geonetwork:/var/lib/geonetwork \
      geonetwork:3.12.5-postgres


Start the server and go to http://127.0.0.1:8080

Login as admin admin

Load metadata templates and samples

Admin console > Metadata and Templates > Load templates and samples for selected standards