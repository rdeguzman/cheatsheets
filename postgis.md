PostGis
---
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