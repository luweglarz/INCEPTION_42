#!/bin/bash
sed -i "s/TO_SED/$DOMAIN/g" /etc/nginx/sites-available/website.conf

#mv /var/www/html/index.nginx-debian.html ../

nginx -g "daemon off;"
