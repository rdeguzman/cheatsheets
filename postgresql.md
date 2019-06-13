---
layout: default
---
PostgreSQL CheatSheet
---

### brew install

	rupsmbp-lc:Cellar/postgresql/10.4[stable]% psql postgres
	psql (10.4)
	Type "help" for help.
	
	postgres=#

### Postgis version?	
	SELECT POSTGIS_FULL_VERSION();
	
### Set the current timezone
	# SESSION based ONLY
	SET TIME zone 'utc';
	SELECT  current_setting('TIMEZONE');
	# Permanent
	# Edit /usr/LOCAL/var/postgres/postgresql.conf (#postgres installed via homebrew)
	timezone = 'UTC'	
	
### Show the bytea_output for a client connection
	SHOW bytea_output
	
### Kill client connection
	SELECT * FROM pg_stat_activity;
	SELECT * FROM pg_stat_activity WHERE datname = 'sample_database';
	SELECT pg_terminate_backend(23240) FROM pg_stat_activity WHERE datname = 'sample_database';
	
### Show size in MB for each database
	postgres=# select datname, pg_size_pretty(pg_database_size(datname)) from pg_database;
	       datname        | pg_size_pretty
	----------------------+----------------
	 template1            | 5425 kB
	 template0            | 5425 kB
	 postgres             | 5425 kB
	 testdb               | 5425 kB
	 template_postgis     | 9401 kB
	 gazetteer_au         | 5417 MB
	 nominatim            | 7516 MB
	 nominatim_20121210   | 9319 MB
	(10 rows)	
	
### Show schema_size for DB

	SELECT schema_name, 
	       pg_size_pretty(sum(table_size)::bigint)
	FROM (
	  SELECT pg_catalog.pg_namespace.nspname as schema_name,
	         pg_relation_size(pg_catalog.pg_class.oid) as table_size
	  FROM   pg_catalog.pg_class
	     JOIN pg_catalog.pg_namespace ON relnamespace = pg_catalog.pg_namespace.oid
	) t
	GROUP BY schema_name
	ORDER BY schema_name	
	
### Showing the biggest tables in MB
	SELECT 
	  table_schema, 
	  table_name, 
	  pg_size_pretty(pg_relation_size(table_schema || '.' || table_name)) as size_in_mb, 
	  pg_size_pretty(pg_indexes_size(table_schema || '.' || table_name))	  as index_in_mb,
	  pg_relation_size(table_schema || '.' || table_name) as size	FROM information_schema.tables 
	WHERE 
	  table_schema NOT IN ('information_schema','pg_catalog') 
	ORDER BY size DESC;
	
	COPY (
        SELECT
          table_schema,
          table_name,
          pg_size_pretty(pg_relation_size(table_schema || '.' || table_name)) as size_in_mb,
          pg_relation_size(table_schema || '.' || table_name) as size
        FROM information_schema.tables
        WHERE
          table_schema NOT IN ('information_schema','pg_catalog')
        ORDER BY size DESC
	) TO '/var/log/pgsql/db_estimate.csv' (format csv, delimiter ',');



### Informational
	\d[S+]                 list tables, views, and sequences
	\d[S+]  NAME           describe table, view, sequence, or index
	\dg[+]  [PATTERN]      list roles
	\di[S+] [PATTERN]      list indexes
	\dL[S+] [PATTERN]      list procedural languages
	\dn[S+] [PATTERN]      list schemas
	\dp     [PATTERN]      list table, view, and sequence access privileges
	\ds[S+] [PATTERN]      list sequences
	\dt[S+] [PATTERN]      list tables
	\dT[S+] [PATTERN]      list data types
	\du[+]  [PATTERN]      list roles
	\dv[S+] [PATTERN]      list views
	\l[+]                  list all databases
	\sf[+] FUNCNAME        show a function's definition
	\z      [PATTERN]      same as \dp
	
### Show all databases

	postgres=# \l
	List of databases
	Name       |  Owner   | Encoding
	------------------+----------+----------
	postgis          | postgres | UTF8
	postgres         | postgres | UTF8
	template0        | postgres | UTF8
	template1        | postgres | UTF8
	template_postgis | postgres | UTF8
	(5 rows)	
	
### show all schemas

	select schema_name from information_schema.schemata	
	
### Describe a table
	\d schema_name.table_name or \d table_name (which references public)

	test_db=# \d dfms_4000.drivers
	                                         Table "dfms_4000.drivers"
	   Column   |            Type             |                           Modifiers                            
	------------+-----------------------------+----------------------------------------------------------------
	 id         | integer                     | not null default nextval('dfms_4000.drivers_id_seq'::regclass)
	 fleet_id   | smallint                    | not null default 
	 name       | character varying(32)       | default ''::character varying
	 tag_id     | character varying(32)       | default ''::character varying
	 created_at | timestamp without time zone | 
	 updated_at | timestamp without time zone | 
	 is_asset   | boolean                     | default false
	 pin        | integer                     | 
	Indexes:
	    "drivers_pkey" PRIMARY KEY, btree (id)	
### describe a function

	datalink_development=# \df postgis.st_intersects
	                                                   List of functions
	 Schema  |     Name      | Result data type |                       Argument data types                       |  Type
	---------+---------------+------------------+-----------------------------------------------------------------+--------
	 postgis | st_intersects | boolean          | geography, geography                                            | normal
	 postgis | st_intersects | boolean          | geom1 geometry, geom2 geometry                                  | normal
	 postgis | st_intersects | boolean          | geom geometry, rast raster, nband integer DEFAULT NULL::integer | normal
	 postgis | st_intersects | boolean          | rast1 raster, nband1 integer, rast2 raster, nband2 integer      | normal
	 postgis | st_intersects | boolean          | rast1 raster, rast2 raster                                      | normal
	 postgis | st_intersects | boolean          | rast raster, geom geometry, nband integer DEFAULT NULL::integer | normal
	 postgis | st_intersects | boolean          | rast raster, nband integer, geom geometry                       | normal
	 postgis | st_intersects | boolean          | text, text                                                      | normal
 	
### Roles
    SELECT rolname FROM pg_roles;
   
	CREATE ROLE myrole WITH LOGIN PASSWORD 'mypassword' SUPERUSER INHERIT CREATEDB CREATEROLE;
	
### Change the password for a user/role
	ALTER ROLE lbs PASSWORD 'mynewpassword';	
	
### Provide/restrict access privileges to tables
	GRANT SELECT ON TABLE TABLE TO USER;
	REVOKE SELECT ON TABLE TABLE FROM USER;	
  
### pg_dump
	pg_dump --host=127.0.0.1 --port=5432 --username=dbadmin --format=custom --file="/path/to/database.backup" database_name
	
	pg_dump --host=abraham --port=5432 --username=dbadmin -F p --file="roles.backup" --table='public.roles' --data-only --inserts datalink_development

### pg_restore
	pg_restore --verbose --host=localhost --port=5432 --username=dbadmin --dbname=datalink_development file_name 
	
### Run a script from the prompt	
	psql -d cybersoftbj -u user -f myfile.sql
	
### Rename a database	
	ALTER DATABASE beijing_app RENAME TO beijing_app_20080801;
	
### Update table using two relations
	UPDATE road_for_update u
	SET the_geom = r.the_geom
	FROM roads r
	WHERE r.rd_id = u.rd_id;	
	
### Alter table 

#### changing column names with spaces
	ALTER TABLE class_aroundme RENAME "level 1" TO level_1;	
	
#### change a column type with Cast
	ALTER TABLE roads ALTER COLUMN class_new TYPE INTEGER USING class_new::INTEGER;
	
#### change integer primary key to serial
	CREATE SEQUENCE seq_job_id INCREMENT 1 MINVALUE 1000 MAXVALUE 2147483648 START 1000 CACHE 1;
	 
	ALTER TABLE job ALTER COLUMN job_id SET DEFAULT NEXTVAL('seq_job_id'::regclass);
	 
	SELECT * FROM job
	 
	SELECT NEXTVAL('seq_job_id')	
	
#### How to specify the id of a sequence to prevent SQL Error: PGRES_FATAL_ERROR:ERROR: duplicate key value violates unique constraint “gps_histories_pkey”?

This happens when the maximum number of records in gps_histories is not in sync with the sequence id.	

	SELECT SETVAL('dfms_4000.gps_histories_id_seq', (SELECT MAX(id) FROM dfms_4000.gps_histories)+1)
	
### Drop table
	DROP TABLE IF EXISTS "my_table";
		
### DateTime Functions
	from_unixtime(bigint) or
	
		to_timestamp(gps_timestamp) AT TIME ZONE 'AEST'
			1376346762 => 2013-08-13 08:32:42 
		
		to_timestamp(gps_timestamp)::timestamp (UTC)
			1376346762 => 2013-08-12 22:32:42
			
	# extract(epoch from '2015-08-31T08:16:27+10:00' at time zone 'utc');
	 1440972987			

### Insert N Random Records
	insert into clients(name) select random_string(10) from generate_series(1,100000);

### Create Random Strings
  	create or replace function random_string(length integer) returns text as 
  	$$
  	declare
    	chars text[] := '{0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z}';
    	result text := '';
    	i integer := 0;
  	begin
    	if length < 0 then
      		raise exception 'Given length cannot be less than 0';
    	end if;
    	for i in 1..length loop
      		result := result || chars[1+random()*(array_length(chars, 1)-1)];
    	end loop;
    	return result;
  	end;
  	$$ language plpgsql;
  	
### CSV OUTPUT
	COPY (SELECT * from users) To '/tmp/output.csv' With CSV;  	
### Search Path

	set search_path to dfms_5000, public

### Updating Postgres packages on Ubuntu

	wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
	sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
	sudo apt-get update
	sudo apt-get install postgresql-client-10

	sudo apt-get install curl ca-certificates
	curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
	sudo vim /etc/apt/sources.list
	sudo apt-get update
	sudo apt-get install pgdg-keyring postgresql-client-11
