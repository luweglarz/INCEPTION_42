
service mysql start

echo "CREATE USER '${MYSQL_USER_NAME}'@'localhost' IDENTIFIED BY '${MYSQL_USER_PASSWORD}';" | mysql -u root
echo "CREATE DATABASE ${MYSQL_DB_NAME};" | mysql -u root
echo "USE ${MYSQL_DB_NAME}; GRANT ALL PRIVILEGES ON * TO '${MYSQL_USER_NAME}'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;" | mysql -u root

echo "alter user 'root'@'localhost' identified by 'password';" | mysql -u root

sed -i "s/#port/port/g" /etc/mysql/mariadb.conf.d/50-server.cnf
sed -i "s/127.0.0.1/0.0.0.0/g" /etc/mysql/mariadb.conf.d/50-server.cnf