FROM mysql

MAINTAINER workin.me lenxeon lenxeon@163.com

ENV MYSQL_ROOT_PASSWORD admin

ENV MYSQL_DATABASE db_apps

ADD sql/ /sql

# # RUN service mysql restart
# RUN chmod +x /sql/*.sh \
#   && /sql/mysql-init.sh


EXPOSE 3306

# RUN tail -f /*
