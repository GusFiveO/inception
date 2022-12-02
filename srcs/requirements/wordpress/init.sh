#!bin/bash
if [ ! -f "/var/.wp_init" ]
then
	wp core download --allow-root
	wp config create --dbhost=mariadb:3306 --dbname=${DB_NAME} --dbuser=${USER_NAME} \
		--dbpass=${USER_PASSWD} --allow-root --skip-check 
fi
