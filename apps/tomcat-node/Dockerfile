FROM apps/base

MAINTAINER workin.me lenxeon lenxeon@163.com

ENV JAVA_HOME /usr/local/jdk1.8/
ENV PATH $PATH:$JAVA_HOME/bin/

ENV CATALINA_HOME /usr/local/server/tomcat7
ENV PATH $PATH:$CATALINA_HOME/bin

ADD apps-web.war /usr/local/server/tomcat7/webapps
ADD canal.deployer.tar /usr/local/server

EXPOSE 8080
# RUN tail -f /*
CMD ["catalina.sh", "run"]
