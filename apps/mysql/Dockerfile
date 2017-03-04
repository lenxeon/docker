#
# MySQL Dockerfile
#

# Pull base images.
FROM dev/base
MAINTAINER workin.me lenxeon lenxeon@163.com

RUN groupadd -r mysql && useradd -r -g mysql mysql

# installs from mysql public repo
# RUN \
#   wget http://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm -d && \
#   yum install mysql57-community-release-el7-8.noarch.rpm -y && \
#   yum install mysql-community-server -y --nogpgcheck && \
#   rm mysql57-community-release-el7-8.noarch.rpm && \
#   yum clean all

#安装源
RUN echo '====================================install mysql repo============================================'
RUN yum -y install yum-utils
RUN wget dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm
RUN yum -y localinstall mysql-community-release-el6-5.noarch.rpm
RUN yum repolist all | grep mysql
RUN yum-config-manager --disable mysql55-community
RUN yum-config-manager --disable mysql56-community
RUN yum-config-manager --enable mysql57-community-dmr
RUN yum repolist enabled | grep mysql
# #安装mysql
# RUN echo '====================================install mysql============================================'
# RUN yum -y install mysql-community-server
# #设置开机自启动
# RUN chkconfig --list | grep mysqld
# RUN chkconfig mysqld on
# RUN chmod 755 /etc/rc.d/init.d/mysqld
#
# RUN echo '====================================set path============================================'
# ENV PATH $PATH:/usr/local/mysql/bin:/usr/local/mysql/scripts
#
# # WORKDIR /usr/local/mysql
# # VOLUME /var/lib/mysql
#
# COPY file/entrypoint.sh /entrypoint.sh
#
# EXPOSE 3306
#
# CMD ["/entrypoint.sh", "mysqld", "--datadir=/var/lib/mysql", "--user=mysql"]

RUN tail -f /*
