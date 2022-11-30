FROM debian:buster

RUN apt update -y && apt install mariadb-client -y && apt install mariadb-server -y \
	&& apt install gettext-base

COPY ./dbsetup.sql /var/. 
COPY ./initdb.sh /var/.
COPY ./my.cnf /etc/mysql/my.cnf

ENTRYPOINT ["/bin/bash", "/var/initdb.sh"]
