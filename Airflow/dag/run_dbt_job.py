from airflow import DAG
from airflow.providers.dbt.cloud.operators.dbt import DbtCloudRunJobOperator
from airflow.utils.dates import days_ago

with DAG(
    dag_id="run_dbt_job",
    schedule_interval="@daily",
    start_date=days_ago(1),
    catchup=False,
    tags=["dbt"],
) as dag:

    run_dbt_job = DbtCloudRunJobOperator(
        task_id="run_dbt_job",
        dbt_cloud_conn_id="my_conn",  
        job_id=YOUR_DBT_JOB_ID,      
        check_interval=10,
        timeout=300,
    )
