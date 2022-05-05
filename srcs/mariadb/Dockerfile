FROM debian:buster


RUN apt-get -y update

RUN apt-get -y install mariadb-server

COPY mariadb_setup.sh /

RUN ["bash", "mariadb_setup.sh"]

CMD ["mysqld_safe"]