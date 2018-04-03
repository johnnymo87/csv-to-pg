FROM postgres:9.6.3

ENV POSTGRES_DB postgres
ENV PGDATA /var/lib/pgdata

COPY db /docker-entrypoint-initdb.d
