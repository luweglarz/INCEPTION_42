#!/bin/bash
if [ ! -f "/var/www/wordpress/wp-config.php" ]; then

    tar xf latest.tar.gz
    mv wordpress /var/www/
    rm latest.tar.gz
    mv /wp-config.php /var/www/wordpress/

    sed -i "s/DB_NAME_TO_SED/$MYSQL_DB_NAME/g" /var/www/wordpress/wp-config.php
    sed -i "s/HOST_TO_SED/$MYSQL_HOST/g" /var/www/wordpress/wp-config.php
    sed -i "s/USERNAME_TO_SED/$MYSQL_USER_NAME/g" /var/www/wordpress/wp-config.php
    sed -i "s/PASS_TO_SED/$MYSQL_USER_PASSWORD/g" /var/www/wordpress/wp-config.php
fi

mkdir /run/php
php-fpm7.3 -F -R