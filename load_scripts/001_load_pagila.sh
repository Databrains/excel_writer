#!/bin/bash

set -e

psql -f /pagila/pagila-schema.sql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$APP_DB"
psql -f /pagila/pagila-data.sql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$APP_DB"
