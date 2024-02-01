# zoomcamp-2024
latest zoomcamp with github codespace

#Docker for Postgres13:

docker run -it \
 -e POSTGRES_USER="root" \
 -e POSTGRES_PASSWORD="root" \
 -e POSTGRES_DB="ny_taxi" \
 -v postgres-vol:/var/lib/postgresql/data \
 -p 5432:5432 \
 --network=pg-network \
 --name pg-db \
 postgres:13

 #Docker container for PG ADMIN:
 docker run -it \
    -e PGADMIN_DEFAULT_EMAIL="admin@admin.com" \
    -e PGADMIN_DEFAULT_PASSWORD="root" \
    -p 8000:80 \
    --network=pg-network \
    --name pgadmin \
    dpage/pgadmin4