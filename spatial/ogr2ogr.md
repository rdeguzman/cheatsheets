# OGR2OGR

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

	ogr2ogr -append -f "PostgreSQL" PG:"host=localhost port=5431 user=myuser dbname=mydb" -nln coverages "sample.geojson"

imports to a specific schema and table

	ogr2ogr -append -f "PostgreSQL" PG:"host=localhost port=5431 user=myuser dbname=mydb" -nln myschema.coverages "sample.geojson"

use geom as column name instead of wkb_geometry

	ogr2ogr -f "PostgreSQL" PG:"host=localhost port=5432 user=landchecker dbname=landcheckerdb_test" -nln qld_import.test_heritage -lco GEOMETRY_NAME="geom" "test.geojson"

	ogr2ogr -append -f "PostgreSQL" "PG:host=192.168.1.113 user=landchecker dbname=landcheckerdb port=5432" -lco "FID=gid" -lco "GEOMETRY_NAME=geom" -nlt "PROMOTE_TO_MULTI" -nln sa_import.lgas_test /tmp/LGA_GDA94.geojson

### Import GDB to shape

	ogr2ogr -progress -overwrite -skipfailures -f "ESRI Shapefile" output.shp input.gdb layer_name

### import GDB to postgres

	ogr2ogr -f "PostgreSQL" GEODATA_DB_STRING -lco "SCHEMA=qld_import" -lco "GEOMETRY_NAME=geom" -lco "OVERWRITE=yes" data.gdb layer -nln table_name

### List layers / summary

	ogrinfo -so test.gdb

### See all formats

	ogrinfo --formats

### See columns 

	ogrinfo -al -so file.shp

### Reprojectiong using gsb grid file

Using ogr2ogr to transform 7844 to 4283 but seem not to pickup gsb file?

	ogr2ogr --debug on -f "PostgreSQL" "PG:host=x.x.x.xuser=xxx dbname=xxx password=xxx port=5432" -lco SCHEMA=sa_import -lco "GEOMETRY_NAME=geom" -lco "OVERWRITE=yes" \
	 -s_srs "+proj=longlat +ellps=GRS80 +towgs84=0.06155,-0.01087,-0.04019,-0.0394924,-0.0327221,-0.0328979,-0.009994 +proj=merc +proj=longlat +ellps=GRS80 +no_defs +nadgrids=/Users/rupert/Projects/transformation_grids/GDA94_GDA2020_conformal.gsb" \
	 -t_srs "EPSG:4283" \
	 "/Users/rupert/com.landchecker.au/sa/cadastre/state_cadastrre_val_numbers_locations.gpkg" \
	 -nln sa_import.sa_cadastre_gda2020_test8