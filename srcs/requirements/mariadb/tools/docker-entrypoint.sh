#!/bin/sh
/usr/bin/mariadb-install-db --user=root
/usr/bin/mariadbd --datadir='/var/data' --user=root