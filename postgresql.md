PostgreSQL
---

### Kill client connection
	SELECT * FROM pg_stat_activity;
	SELECT * FROM pg_stat_activity WHERE datname = 'sample_database';
	SELECT pg_terminate_backend(23240) FROM pg_stat_activity WHERE datname = 'sample_database';
	
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

### Insert N Random Records
	insert into clients(name) select random_string(10) from generate_series(1,100000);
