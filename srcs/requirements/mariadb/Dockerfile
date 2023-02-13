FROM alpine:3.16

RUN apk update && apk add \
    mariadb \
    mariadb-client

COPY ./tools/my.cnf /etc
RUN /usr/bin/mariadb-install-db --basedir=/usr --user=mysql --skip-test-db
RUN chown -R mysql:mysql /var/lib/mysql
EXPOSE 3306

CMD ["/usr/bin/mysqld", "--user=mysql", "--init-file=/usr/local/bin/init.sql"]
