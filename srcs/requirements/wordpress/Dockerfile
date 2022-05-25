FROM debian:buster

RUN apt-get -y update 
RUN apt-get -y install wget
RUN apt-get -y install unzip 

RUN apt-get -y install php7.3 \
                    php7.3-fpm \
                    php7.3-mysql 

RUN wget https://fr.wordpress.org/wordpress-5.9.1-fr_FR.zip

COPY conf/wp-config.php /
COPY tools/wordpress_setup.sh /

RUN rm -rf /etc/php/7.3/fpm/pool.d/www.conf
COPY conf/www.conf /etc/php/7.3/fpm/pool.d

ENTRYPOINT ["bash", "wordpress_setup.sh"]

CMD ["php-fpm7.3", "--nodaemonize"]
