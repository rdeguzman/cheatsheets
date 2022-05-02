# PostGIS

## Links

- [Update Polygon Geometry from GeometryCollection](https://gis.stackexchange.com/questions/165151/postgis-update-multipolygon-with-st-makevalid-gives-error) - Uses ST_CollectionExtract. 
  - `set geomcol = st_multi(st_collectionextract(st_makevalid(geomcol),3))` 


## Installation

### brew install postgis

	==> Downloading https://homebrew.bintray.com/bottles/postgis-2.4.4_1.high_sierra.bottle.tar.gz
	######################################################################## 100.0%
	==> Pouring postgis-2.4.4_1.high_sierra.bottle.tar.gz
	==> Caveats
	To create a spatially-enabled database, see the documentation:
		https://postgis.net/docs/manual-2.4/postgis_installation.html#create_new_db_extensions
	If you are currently using PostGIS 2.0+, you can go the soft upgrade path:
		ALTER EXTENSION postgis UPDATE TO "2.4.4";
	Users of 1.5 and below will need to go the hard-upgrade path, see here:
		https://postgis.net/docs/manual-2.4/postgis_installation.html#upgrading

	PostGIS SQL scripts installed to:
		/usr/local/homebrew/opt/postgis/share/postgis
	PostGIS plugin libraries installed to:
		/usr/local/homebrew/lib
	PostGIS extension modules installed to:
		/usr/local/homebrew/share/postgresql/extension
	==> Summary
	🍺  /usr/local/homebrew/Cellar/postgis/2.4.4_1: 248 files, 101.2MB

### PostgresApp

PostgresApp have postgis installed.  See https://postgresapp.com/downloads.html


	
### Postgis version
	SELECT POSTGIS_FULL_VERSION();	

### Add Geometry Column
	SELECT AddGeometryColumn('public', 'poi', 'the_geom', 4326, 'POINT', 2)
	
### Create GIST index	
	CREATE INDEX [indexname] ON [tablename] USING GIST ([geometryfield]);

### Creates a point geometry from longitude and latitude columns
The function below will create a point geometry as long as ST_GeomFromText does not throw an exception

	CREATE OR REPLACE FUNCTION CreatePointGeomFromGPSHistories(srid integer) RETURNS integer AS
	$BODY$
	DECLARE
	  update_count INTEGER := 0;
	  error_count INTEGER := 0;
	  history RECORD;
	BEGIN
	  FOR history IN SELECT id, gps_latitude, gps_longitude FROM gps_histories ORDER BY id LOOP
	    BEGIN
	      UPDATE gps_histories
	      SET the_geom = postgis.ST_GeomFromText('POINT(' || history.gps_longitude || history.gps_latitude || ')', srid)
	      WHERE id = history.id;
	
	      update_count = update_count + 1;
	    EXCEPTION
	      WHEN internal_error THEN
	        error_count = error_count + 1;
	        RAISE NOTICE '% exception on id: % (%, %)', error_count, history.id, history.gps_longitude, history.gps_latitude;
	    END;
	  END LOOP;
	
	  RETURN update_count;
	END;
	$BODY$
	LANGUAGE plpgsql;

### Create point geometry from GeomFromText

	SELECT ST_GeomFromText('POINT(' || longitude || latitude || ')', 4326);
