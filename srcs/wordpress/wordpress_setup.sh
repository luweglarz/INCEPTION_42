#!/bin/bash
tar xf latest.tar.gz
mv wordpress /var/www/
rm latest.tar.gz
mv /wp-config.php /var/www/wordpress/

mkdir /run/php
php-fpm7.3 -F -R