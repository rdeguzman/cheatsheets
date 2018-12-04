---
layout: default
---
OGR2OGR CheatSheet
---

### Output as CSV WKT
	ogr2ogr -f CSV output.csv test.shp -lco GEOMETRY=AS_WKT

### Import shape to postgres

	ogr2ogr -f "PostgreSQL" PG:"host=localhost user=myuser dbname=mydb password=mypass" -nlt GEOMETRY sample.shp

	ogr2ogr -f GeoJSON out.json PG:"host=localhost port=5431 user=myuser dbname=mydb" -sql "select * from sample"

