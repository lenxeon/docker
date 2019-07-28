use mysql;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'Sample09X#';
flush privileges;
DROP DATABASE IF EXISTS db_plat;
CREATE DATABASE `db_plat` DEFAULT CHARACTER SET utf8mb4 ;
use db_plat;