#!/bin/bash
sed -i "s/TO_SED/$DOMAIN/g" /etc/nginx/sites-available/website.conf

mv index.nginx-debian.html /var/www/

nginx -g "daemon off;"
