FROM mysql

MAINTAINER workin.me lenxeon lenxeon@163.com

ENV MYSQL_ROOT_PASSWORD admin

ADD sql/ /sql

RUN /sql/mysql-init.sh
