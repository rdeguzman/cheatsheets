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