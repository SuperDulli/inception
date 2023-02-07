#!/bin/bash
/usr/bin/mysqld --user=mysql --skip-networking &
MARIADB_PID=$!
for i in {30..0}; do
    echo $i
    if mysql -S /var/lib/mysql/mysql.sock --database=mysql <<<'SELECT 1' &> /dev/null; then
        break
    fi
    sleep 1
done
if [ "$i" = 0 ]; then
    mysql_error "Unable to start server."
fi
echo $MARIADB_PID
mysql -S /var/lib/mysql/mysql.sock < /usr/local/bin/init.sql
