FROM centos:centos6.8

MAINTAINER workin.me lenxeon lenxeon@163.com


EXPOSE 22 80 443 8080

RUN echo '================install basic cmd================'
RUN yum -y install yum-utils
RUN yum install -y sudo
RUN yum install -y tar
#wget
RUN echo '================install wget================'
RUN yum install -y wget
#zsh
RUN echo '================install zsh================'
RUN yum install -y zsh
#ozsh
RUN echo '================install git================'
RUN yum install -y git
#zsh
RUN echo '================install zsh================'
RUN wget http://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
#jdk
RUN echo '================install jdk================'
RUN wget http://static-youth.teamillion.com/soft/sun-jdk/jdk-8u151-linux-x64.rpm
RUN rpm -ivh jdk*.rpm
RUN rm -f /jdk*.rpm


#tomcat
RUN echo '================install tomcat-7================'
RUN wget http://static-youth.teamillion.com/soft/apache/apache-tomcat-7.0.94.tar.gz\
  && mkdir -p /usr/local/server\
  && tar -zxvf apache-tomcat-7.0.94.tar.gz -C /usr/local/server\
  && cd /usr/local/server/\
  && mv apache-tomcat-7.0.94 tomcat7\
  && mkdir /app\
  && ln -s /usr/local/server/tomcat7 /app/tomcat7

ENV CATALINA_HOME /app/tomcat7
ENV PATH $PATH:$CATALINA_HOME/bin

RUN rm -f /apache-tomcat*.gz
RUN rm -r -f /usr/local/server/tomcat7/webapps/*

CMD ["catalina.sh", "run"]

# docker build -t apps/base .
