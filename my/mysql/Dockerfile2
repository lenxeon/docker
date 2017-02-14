FROM mysql:latest
MAINTAINER workin.me lenxeon lenxeon@163.com


RUN echo '====================================set path============================================'
ENV PATH $PATH:/usr/local/mysql/bin:/usr/local/mysql/scripts

WORKDIR /usr/local/mysql
VOLUME /var/lib/mysql

COPY file/entrypoint.sh /entrypoint.sh

EXPOSE 3306

CMD ["/entrypoint.sh", "mysqld", "--datadir=/var/lib/mysql", "--user=mysql"]
