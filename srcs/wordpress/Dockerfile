FROM debian:buster

EXPOSE 9000

#Updating container packages and installing wget
RUN apt-get -y update 
RUN apt-get -y install wget

#Install php and php-fpm
RUN apt-get -y install php7.3 \
                    php7.3-fpm \
                    php7.3-mysql 

#Installing wordpress and moving it nginx root 
RUN wget https://wordpress.org/latest.tar.gz 

COPY config/wp-config.php /
COPY wordpress_setup.sh /

COPY config/www.conf /etc/php/7.3/fpm/pool.d

CMD ["bash", "wordpress_setup.sh"]
