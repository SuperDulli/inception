FROM alpine:3.16

RUN apk update
#install MariaDB
RUN apk add mariadb
# RUN /usr/bin/mariadb-install-db

COPY tools/docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT [ "docker-entrypoint.sh" ]
EXPOSE 3306

# CMD ["mariadbd", "--skip-grant-tables", "--general-log", "--user=root"]