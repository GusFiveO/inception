FROM debian:buster

RUN apt update -y && apt install php -y && apt install php-fpm -y \
	&& apt install curl -y
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

RUN wp --info

