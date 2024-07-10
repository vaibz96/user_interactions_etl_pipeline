# user_interactions_etl_pipeline
This repository contains the code and scripts for an ETL pipeline that processes user interaction data to store data in PostgreSQL database. The pipeline is automated using Apache Airflow.

## Table of Contents

- [Setup](#setup)
- [ETL Process](#etl-process)
  - [Data Ingestion](#data-ingestion)
  - [Data Cleaning](#data-cleaning)
  - [Data Transformation](#data-transformation)
  - [Data Loading](#data-loading)
- [Airflow DAG](#airflow-dag)
- [Data Storage and Retrieval](#data-storage-and-retrieval)
  - [Schema Creation](#schema-creation)
  - [Data Insertion](#data-insertion)
  - [Data Retrieval](#data-retrieval)
- [Optimization Techniques](#optimization-techniques)


## Setup

### Prerequisites

- Python 3.x
- PostgreSQL
- Apache Airflow
- Required Python packages: `pandas`, `sqlalchemy`, `psycopg2`

### Installation

1. **Clone the repository**:
    ```sh
    git clone https://github.com/your-username/user-interaction-data-pipeline.git
    cd user-interaction-data-pipeline
    ```

2. **Install Python packages**:
    ```sh
    pip install pandas sqlalchemy psycopg2 apache-airflow
    ```

3. **Set up Airflow**:
    ```sh
    export AIRFLOW_HOME=~/airflow
    airflow db init
    airflow users create --username admin --firstname FIRST_NAME --lastname LAST_NAME --role Admin --email admin@example.com
    ```

4. **Start Airflow services**:
    ```sh
    airflow webserver --port 8080
    airflow scheduler
    ```

## ETL Process

### Data Ingestion
The `data_ingestion.ipynb` script reads the data from a CSV file.

### Data Cleaning
The `data_cleaning.ipynb` script handles missing values and ensures correct data types.

### Data Transformation
The `data_transformation.ipynb` script calculates the number of interactions per user and per product, then adds a new column `interaction_count`.

### Data Loading
The `data_loading.ipynb` script loads the cleaned and transformed data into a PostgreSQL database.

## Airflow DAG
The `user_interactions_etl_dag.py` file defines the Airflow DAG that automates the ETL process.

## Data Storage and Retrieval

### Schema Creation
The `user_interactions_schema_creation.sql` script creates the necessary user interactions table in the PostgreSQL database.

### Data Insertion of transformed data
The `user_interactions_data_transformed.sql` script inserts data into the PostgreSQL database.

### Data Retrieval
The `data_retrieval_scripts.sql` script contains queries to retrieve data from the database.

## Optimization Techniques
The `optimization_techniques.md` file explains the techniques used to futher optimize our query performance.

## Author
Vaibhav Shanbhag
