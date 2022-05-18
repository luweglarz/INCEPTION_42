FROM debian:buster 

RUN apt-get -y update

RUN apt-get -y install mariadb-server

COPY tools/mariadb_setup.sh /
COPY conf/mariadbconf.sql /
COPY conf/userdump.sql /

ENTRYPOINT  ["bash", "mariadb_setup.sh"]

CMD ["mysqld_safe"]
