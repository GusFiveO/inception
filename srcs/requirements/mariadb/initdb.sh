#!/bin/sh

if [ ! -f "/var/lib/mysql/.db_create" ]
then
	envsubst < /var/dbsetup.sql > /var/dbsetupenv.sql
	service mysql start 
	mysql < /var/dbsetupenv.sql
	touch /var/lib/mysql/.db_create

	#echo $ROOT_PASSWD | mysql -u root -p stop 
	#mysqladmin -uroot -p$ROOT_PASSWD shutdown
	service mysql stop
fi

exec mysqld_safe
