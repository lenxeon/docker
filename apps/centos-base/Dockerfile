FROM centos:centos6.8

MAINTAINER workin.me lenxeon lenxeon@163.com


EXPOSE 22 80 443 8080

RUN echo '================install basic cmd================'
RUN yum -y install yum-utils NetworkManager NetworkManager-tui

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
#mysql
RUN echo '================install mysql================'
RUN yum install -y mysql-server
RUN service mysqld start > mysql.log 
RUN service mysqld restart > mysql2.log
RUN sleep 30s
RUN cat mysql.log | grep new-password | sed 's/new-password/Sample09X#/' > mysql.sh
RUN chmod +x mysql.sh
RUN sh mysql.sh


#jdk
RUN echo '================install jdk================'


ADD jdk1.8.0_121.tar .
ADD apache-tomcat-7.0.94.tar .


#jdk
# RUN tar -zxvf jdk1.8.0_121.tar -C /usr/local
RUN mv jdk1.8.0_121 /usr/local/jdk1.8

RUN echo 'JAVA_HOME=/usr/local/jdk1.8' >> /etc/profile
RUN echo 'CLASSPATH=.:$JAVA_HOME/jre/lib/rt.jar:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar' >> /etc/profile
RUN echo 'PATH=$JAVA_HOME/bin:$PATH' >> /etc/profile
RUN source /etc/profile

#tomcat
RUN echo '================install tomcat-7================'

RUN mkdir -p /usr/local/server\
  && mv apache-tomcat-7.0.94 /usr/local/server\
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
