FROM centos

MAINTAINER workin.me lenxeon lenxeon@163.com

# RUN echo '====================================准备============================================'
RUN yum install -y wget
# #openresty
# RUN echo '====================================下载============================================'
# RUN yum install -y readline-devel pcre-devel openssl-devel gcc make perl postgresql-devel\
#  && mkdir -p /usr/local/server\
#  && cd /usr/local/server/\
#  && wget https://openresty.org/download/openresty-1.9.15.1.tar.gz\
#  && tar -zxvf openresty-1.9.15.1.tar.gz\
#  && cd openresty*\
#  && ./configure --prefix=/usr/local/server/openresty \
#             --with-luajit \
#             --without-http_redis2_module \
#             --with-http_iconv_module \
#             --with-http_postgres_module\
#  && make && make install

RUN echo '====================================jdk============================================'
RUN cd /tmp \
  && wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u76-b13/jdk-7u76-linux-x64.rpm\
  && rpm -ivh *.rpm \
  && rm -r -f *.rpm

RUN echo '====================================tomcat============================================'
RUN cd /tmp \
  && wget http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.8/bin/apache-tomcat-7.0.8.tar.gz \
  && tar zxvf apache-tomcat-7.0.8.tar.gz \
  && mkdir -p /usr/local/server \
  && mv apache-tomcat-7.0.8 /usr/local/server/tomcat7 \
  && rm -r -f *

ENV CATALINA_HOME /usr/local/server/tomcat7
ENV PATH $PATH:$CATALINA_HOME/bin

RUN echo '====================================sshd============================================'
RUN yum install -y openssh-server

ADD www/ /etc/nginx/sites-enabled

EXPOSE 8080
CMD ["catalina.sh", "run"]
