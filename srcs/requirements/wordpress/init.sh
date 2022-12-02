#!bin/bash
if [ ! -f "/var/www/html/.wp_init" ]
then
	wp core download --allow-root
	wp config create --dbhost=mariadb:3306 --dbname=${DB_NAME} --dbuser=${USER_NAME} \
		--dbpass=${USER_PASSWD} --allow-root --skip-check 
	wp core install --url=alorain.42.fr --title="Your Blog Title" --admin_name=${ADMIN_NAME} \
		--admin_password=${ADMIN_PASSWD} --allow-root --skip-check
	history -c
	touch /var/lib/.wp_init
fi
service php7.3-fpm start
