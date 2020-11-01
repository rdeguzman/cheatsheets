---
layout: default
---
OGR2OGR CheatSheet
---

### Output as CSV WKT

	ogr2ogr -f CSV output.csv test.shp -lco GEOMETRY=AS_WKT

### Import shape to postgres

	ogr2ogr -f "PostgreSQL" PG:"host=localhost user=myuser dbname=mydb password=mypass" -nlt GEOMETRY sample.shp

ERROR:  Geometry type (MultiPolygon) does not match column type (Polygon)

	ogr2ogr -f "PostgreSQL" PG:"host=localhost user=myuser dbname=mydb password=mypass" -nlt PROMOTE_TO_MULTI sample.shp

	ogr2ogr -f GeoJSON out.json PG:"host=localhost port=5431 user=myuser dbname=mydb" -sql "select * from sample"


### Import geojson to postgres

	ogr2ogr -f "PostgreSQL" PG:"host=localhost port=5431 user=myuser dbname=mydb" "sample.geojson"

imports to a specific table

	oogr2ogr -append -f "PostgreSQL" PG:"host=localhost port=5431 user=myuser dbname=mydb" -nln coverages "sample.geojson"

### Import GDB to shape

	ogr2ogr -progress -overwrite -skipfailures -f "ESRI Shapefile" output.shp input.gdb layer_name

### import GDB to postgres

	ogr2ogr -f "PostgreSQL" GEODATA_DB_STRING -lco "SCHEMA=qld_import" -lco "GEOMETRY_NAME=geom" -lco "OVERWRITE=yes" data.gdb layer -nln table_name

### List layers / summary

	ogrinfo -so test.gdb


