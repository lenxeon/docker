#!/bin/bash
# echo 'start mysql'
# service mysql restart
# sleep 5
# echo 'create databases'
# mysql -uroot -p$MYSQL_ROOT_PASSWORD mysql < /init/init.sql;
echo 'import data'
mysql -uroot -p$MYSQL_ROOT_PASSWORD db_project < /init/db_project.sql;
