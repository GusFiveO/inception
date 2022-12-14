DELETE FROM mysql.db WHERE Db='test' OR Db='test\_%';
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
CREATE USER IF NOT EXISTS '${USER_NAME}'@'localhost' IDENTIFIED BY '${USER_PASSWD}';
GRANT ALL PRIVILEGES ON ${DB_NAME}. * TO '${USER_NAME}'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
SET PASSWORD FOR 'root'@'localhost'=PASSWORD('${ROOT_PASSWD}');
