FROM apps/base

MAINTAINER workin.me lenxeon lenxeon@163.com

ENV CATALINA_HOME /usr/local/server/tomcat7
ENV PATH $PATH:$CATALINA_HOME/bin

ADD apps-web.war /usr/local/server/tomcat7/webapps

EXPOSE 8080
# RUN tail -f /*
CMD ["catalina.sh", "run"]
