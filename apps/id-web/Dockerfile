FROM apps/base

MAINTAINER workin.me lenxeon lenxeon@163.com

ADD ~/apps-web.war /usr/local/server/tomcat7/webapps/

ENV zookeeper.host zookeeper:2181
ENV zookeeper.group /apps/config
ENV zookeeper.version 1.0.002

EXPOSE 8080
RUN tail -f /*
