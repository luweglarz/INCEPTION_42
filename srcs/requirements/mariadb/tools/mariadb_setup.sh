#!/bin/bash

sed -i "s/MYSQL_USER_NAME/${MYSQL_USER_NAME}/g" mariadbconf.sql
sed -i "s/MYSQL_USER_PASSWORD/${MYSQL_USER_PASSWORD}/g" mariadbconf.sql
sed -i "s/MYSQL_DB_NAME/${MYSQL_DB_NAME}/g" mariadbconf.sql
sed -i "s/MYSQL_ROOT_PASS/${MYSQL_ROOT_PASS}/g" mariadbconf.sql

sed -i "s/#port/port/g" /etc/mysql/mariadb.conf.d/50-server.cnf
sed -i "s/127.0.0.1/0.0.0.0/g" /etc/mysql/mariadb.conf.d/50-server.cnf

if [ ! -d "/var/lib/mysql/wordpress" ]; then

service mysql start

mysql < mariadbconf.sql

mysql -uroot -p${MYSQL_ROOT_PASS} < userdump.sql

sleep 3

service mysql stop

fi

exec "$@"