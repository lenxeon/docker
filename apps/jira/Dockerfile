FROM dev/centos-base

MAINTAINER workin.me lenxeon lenxeon@163.com


EXPOSE 22 80 443 8080 8888

ADD ./init/ /init/

RUN chmod +x /init/*
# RUN /init/atlassian-jira-software-7.2.2-x64.bin

# docker build -t dev/base .

ENV CATALINA_HOME /app/tomcat7
ENV PATH $PATH:$CATALINA_HOME/bin

CMD ["catalina.sh", "run"]
