# CURL

### Download file
	curl -O http://127.0.0.1/data.txt

### Posting form data
	curl -i -X POST --data 'field1=123&field2=456' http://127.0.0.1:8080

### Posting json data
	ccurl -i -X POST -H "Content-Type: application/json" -d '{"field1":123, "field2":"value"}' http://127.0.0.1:8080
