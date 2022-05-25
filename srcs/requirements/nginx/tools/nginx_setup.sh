#!/bin/bash
sed -i "s/TO_SED/$DOMAIN/g" /etc/nginx/sites-available/website.conf

nginx -g "daemon off;"
