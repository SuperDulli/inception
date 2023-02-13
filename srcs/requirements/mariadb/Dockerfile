FROM alpine:3.16

RUN apk update && apk add \
    gettext \
    mariadb \
    mariadb-client

COPY ./tools/my.cnf /etc
RUN /usr/bin/mariadb-install-db --basedir=/usr --user=mysql --skip-test-db
RUN chown -R mysql:mysql /var/lib/mysql

COPY ./tools/init.template /usr/local/bin/
EXPOSE 3306

CMD ["/usr/bin/mysqld", "--user=mysql"]
