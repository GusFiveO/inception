FROM debian:buster

RUN apt update -y && apt install mariadb-client -y && apt install mariadb-server -y \
	&& apt install gettext-base

COPY ./dbsetup.sql /var/tmp/ 

RUN service mysql start

RUN envsubst < /var/tmp/dbsetup.sql > /var/tmp/dbsetupenv.sql

RUN mysql < /var/tmp/dbsetupenv.sql

CMD ["/bin/sh"]
