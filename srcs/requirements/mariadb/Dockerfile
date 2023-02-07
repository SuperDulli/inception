FROM alpine:3.16

#install MariaDB
RUN apk update && apk add \
    bash \
    mariadb \
    mariadb-client

COPY ./tools/my.cnf /etc
RUN /usr/bin/mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql --skip-test-db
COPY ./tools/init.sql /usr/local/bin
COPY ./tools/create.sh /usr/local/bin
RUN create.sh
# RUN /usr/bin/mysqld --user=mysql&
# RUN mysql -S /var/lib/mysql/mysql.sock < /usr/local/bin/init.sql
# RUN /etc/init.d/mariadb start && mysql < /usr/local/bin/init.sql

EXPOSE 3306
CMD ["/usr/bin/mysqld", "--user=mysql"]
# ENTRYPOINT [ "docker-entrypoint.sh" ]
