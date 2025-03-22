#!/bin/bash

docker-compose down -v

docker-compose up --build --wait postgres

docker-compose exec -e PGPASSWORD=root postgres psql -U root -d test -f /var/project/sql/DDL.sql
docker-compose exec -e PGPASSWORD=root postgres psql -U root -d test -f /var/project/sql/indexes.sql
docker-compose exec -e PGPASSWORD=root postgres psql -U root -d test -f /var/project/sql/insert.sql
docker-compose exec -e PGPASSWORD=root postgres psql -U root -d test -f /var/project/sql/view.sql

docker-compose start
