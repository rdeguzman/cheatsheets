# Airflow

## Links

### Upgrading db
	airflow db reset
    airflow db init

### Users and Roles
	airflow roles create PipelineAPI
    
    airflow users create --role Admin --username admin --email admin --firstname admin --lastname admin --password admin    
    airflow users create -r PipelineAPI -f pipeline-api -l landchecker -e pipeline@landchecker.com.au -u pipeline-api -p password
    
### Connections
    airflow connections add 'airflow-api' \
    --conn-type 'HTTP' \
    --conn-host 'https://pipeline.staging.landchecker.com.au/'


### Tasks
    airflow tasks run vic_import process_ data.Property.delta -l --pool 'default_pool' -S 'DAGS_FOLDER/vic_import.py' --force -i -I now

And via regex

    airflow tasks clear -y -f vic_planning_scheme_link_scraper -t \.*.map_geometry_amendments -s 2022-05-01T11:11:23+00:00

### Loading and checking DAGs

    import airflow.models
    dags = airflow.models.DagBag()
    dags.import_errors