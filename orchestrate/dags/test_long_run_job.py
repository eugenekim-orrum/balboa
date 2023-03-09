import os

import pendulum

from airflow import DAG
from airflow.decorators import task
from airflow.operators.bash import BashOperator

default_args = {
    'owner': 'airflow',
    'email': 'andres@datacoves.com',
    'email_on_failure': True
}

with DAG(
    dag_id="test_long_run_job",
    default_args=default_args,
    start_date=pendulum.datetime(2021, 1, 1, tz="UTC"),
    catchup=False,
    tags=["sample_tag"],
) as dag:
    BashOperator(
        task_id='failing',
        bash_command="sleep 3600"
    )
