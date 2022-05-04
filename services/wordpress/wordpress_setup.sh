#!/bin/bash
tar xf latest.tar.gz
mv wordpress /var/www/inception/
rm latest.tar.gz
mv /wp-config.php /var/www/inception/wordpress/

while :
do
    sleep 1
done