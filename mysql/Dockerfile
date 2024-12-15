FROM mysql:5.7-debian
ENV MYSQL_DATABASE=mydb_tugas4 \
    MYSQL_PASSWORD=mydb6789tyui \
    MYSQL_ROOT_PASSWORD=mydb6789tyui \
    MYSQL_ROOT_HOST=%

COPY dbscripts /docker-entrypoint-initdb.d/
