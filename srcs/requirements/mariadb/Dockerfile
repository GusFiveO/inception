FROM debian:buster

RUN apt update -y && apt install mariadb-client -y && apt install mariadb-server -y \
	&& apt install gettext-base

COPY ./dbsetup.sql /var/. 
COPY ./initdb.sh /var/.
COPY ./my.cnf /etc/mysql/my.cnf

RUN mkdir -p /var/lib/mysql
RUN mkdir -p  /run/mysqld
RUN chown -R mysql:mysql /run/mysqld

CMD ["/bin/bash", "/var/initdb.sh"]
