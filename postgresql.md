PostgreSQL
---
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
  
### pg_dump
	pg_dump --host=127.0.0.1 --port=5432 --username=dbadmin --format=custom --file="/path/to/database.backup" database_name
  	
  	pg_dump --host=abraham --port=5432 --username=dbadmin -F p --file="./roles.backup" --table='public.roles' --data-only --inserts datalink_development

### pg_restore
  
  	pg_restore --verbose --host=localhost --port=5432 --username=dbadmin --dbname=datalink_development file_name 
	
### Insert N Random Records
	insert into clients(name) select random_string(10) from generate_series(1,100000);

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
	
### Showing the biggest tables in MB
	SELECT 
	  table_schema, 
	  table_name, 
	  pg_size_pretty(pg_relation_size(table_schema || '.' || table_name)) as size_in_mb, 
	  pg_relation_size(table_schema || '.' || table_name) as size 
	FROM information_schema.tables 
	WHERE 
	  table_schema NOT IN ('information_schema','pg_catalog') 
	ORDER BY size DESC;

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

