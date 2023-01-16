FROM debian:buster

RUN apt update -y && apt install php -y && apt install php-mysql -y  && apt install php-fpm -y \
	&& apt install curl -y

COPY ./init.sh /var/init.sh
COPY ./www.conf /etc/php/7.3/fpm/pool.d/www.conf 

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
RUN mkdir -p /run/php 
RUN mkdir -p /var/www/html/wordpress

WORKDIR /var/www/html/wordpress

CMD  ["bash", "/var/init.sh"]
