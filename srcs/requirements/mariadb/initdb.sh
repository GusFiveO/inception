#!/bin/sh

envsubst < /var/dbsetup.sql > /var/dbsetupenv.sql
touch /var/lib/mysql/.db_create
exec mysqld_safe && mysql < /var/dbsetupenv.sql
service mysql stop
exec mysqld_safe
