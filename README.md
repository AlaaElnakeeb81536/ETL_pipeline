### End-to-End Data Engineering Project: dbt, Snowflake & Apache Airflow

## Overview
This project is a complete data engineering pipeline using dbt (Data Build Tool), Snowflake (Data Warehouse), and Apache Airflow (Orchestration Tool). It covers data ingestion, transformation, and scheduling in a structured and scalable manner.

 ## I took that messy CSV file and turned it into a clean, queryable dataset ready for reporting. I used Snowflake for warehousing, dbt for cleaning and transformation, and Power BI to build out a dashboard.
 
<img width="1316" height="710" alt="image" src="https://github.com/user-attachments/assets/988fa565-f82b-4ae8-808f-3ba503a62d03" />

## Tech Stack
- dbt Core – For data transformation and modeling
- Snowflake – Cloud-based data warehouse
- Apache Airflow – Workflow automation and orchestration
- Python – Scripting and automation
- Git – Version control
   
## Project Structure
 snowflake_data_project/
- │──  models/                                (  dbt models (staging, marts))
- │──  dags/                                  (   Airflow DAGs (for scheduling))
- │──  logs/                                  (   Airflow logs)
- │──  dbt_project.yml                        ( dbt project config file)
- │──  README.md                              ( Project documentation)

<img width="1774" height="714" alt="image" src="https://github.com/user-attachments/assets/31266801-b27c-4e00-b77f-736e20d80abc" />
