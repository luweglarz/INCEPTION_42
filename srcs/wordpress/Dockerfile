FROM debian:buster

EXPOSE 9000

#Updating container packages and installing wget
RUN apt-get -y update 
RUN apt-get -y install wget

RUN apt-get -y install php7.3 \
                    php7.3-fpm \
                    php7.3-mysql 

RUN wget https://wordpress.org/latest.tar.gz 

COPY conf/wp-config.php /
COPY tools/wordpress_setup.sh /

COPY conf/www.conf /etc/php/7.3/fpm/pool.d

CMD ["bash", "wordpress_setup.sh"]
