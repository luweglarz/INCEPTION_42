FROM debian:buster 

EXPOSE 3306

RUN apt-get -y update

RUN apt-get -y install mariadb-server

COPY mariadb_setup.sh /
COPY config/mariadbconf.sql /
COPY config/userdump.sql /

ENTRYPOINT  ["bash", "mariadb_setup.sh"]

CMD ["mysqld_safe"]