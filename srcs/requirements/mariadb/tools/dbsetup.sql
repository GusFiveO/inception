CREATE DATABASE IF NOT EXISTS ${DB_NAME};
CREATE USER IF NOT EXISTS '${USER_NAME}'@'%' IDENTIFIED BY '${USER_PASSWD}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${USER_NAME}'@'%' WITH GRANT OPTION;
ALTER USER 'root'@'localhost' IDENTIFIED BY '${ROOT_PASSWD}'; 
FLUSH PRIVILEGES;