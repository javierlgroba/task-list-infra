#!/bin/bash
set -e

PGPASSWORD=API_POSTGRES_PASSWORD
psql -v ON_ERROR_STOP=1 --username "$API_POSTGRES_USER" --dbname "task_list" <<-EOSQL
    CREATE SCHEMA "task_list"
EOSQL