UPDATE mysql.user SET Password=PASSWORD('${ROOT_PASSWD}') WHERE User='root';
DELETE FROM mysql.user WHERE user='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DELETE FROM mysql.db WHERE Db='test' OR Db='test\_%';
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
CREATE USER IF NOT EXISTS '${USER_NAME}'@'localhost' IDENTIFIED BY '${USER_PASSWD}';
GRANT ALL PRIVILEGES ON ${DB_NAME}. * TO '${USER_NAME}'@'localhost';
FLUSH PRIVILEGES;
