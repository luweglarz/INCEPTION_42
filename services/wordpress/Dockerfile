FROM debian:buster

EXPOSE 8000:80

#Updating container packages and installing wget
RUN apt-get -y update 
RUN apt-get -y install wget


#Install php and php-fpm
RUN apt-get -y install php7.3 \
                    php7.3-fpm

#Installing wordpress and moving it nginx root 
RUN wget https://wordpress.org/latest.tar.gz \
    && tar xf latest.tar.gz \
    && mv wordpress/ /var/www/inception \
    && rm latest.tar.gz