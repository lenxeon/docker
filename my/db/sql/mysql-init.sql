#!/bin/bash
/usr/bin/mysqld_safe &
sleep 5
mysql -u root -e "CREATE DATABASE db_apps"
mysql -u root mydb < /sql/db_apps.sql
