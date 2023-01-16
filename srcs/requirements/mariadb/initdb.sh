#!/bin/sh

set -e

chown -R mysql:mysql /var/lib/mysql

if [ ! -f "/var/lib/mysql/.db_create" ]
then
	envsubst < /var/dbsetup.sql > /var/dbsetupenv.sql
	service mysql start 
	sleep 2
	mysql < /var/dbsetupenv.sql

	service mysql stop
	touch /var/lib/mysql/.db_create
fi

exec mysqld_safe --user=mysql
