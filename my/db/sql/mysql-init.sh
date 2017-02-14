#!/bin/bash
service mysql restart
sleep 5
mysql --user=root -e "CREATE DATABASE db_apps" -p $MYSQL_ROOT_PASSWORD
mysql --user=root --password admin -e "use db_apps; source /sql/db_apps.sql; \q"
