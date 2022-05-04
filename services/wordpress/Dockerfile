FROM debian:buster

EXPOSE 8080

#Updating container packages and installing wget
RUN apt-get -y update 
RUN apt-get -y install wget

#Install php and php-fpm
RUN apt-get -y install php7.3 \
                    php7.3-fpm

#Installing wordpress and moving it nginx root 
RUN wget https://wordpress.org/latest.tar.gz 

COPY config/wp-config.php /
COPY wordpress_setup.sh /

CMD ["bash", "wordpress_setup.sh"]