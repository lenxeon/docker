FROM apps/base

MAINTAINER workin.me lenxeon lenxeon@163.com


#openresty
RUN echo '====================================下载============================================'
RUN yum install -y readline-devel pcre-devel openssl-devel gcc make perl postgresql-devel\
 && mkdir -p /usr/local/server\
 && cd /usr/local/server/\
 && wget https://openresty.org/download/openresty-1.9.15.1.tar.gz\
 && tar -zxvf openresty-1.9.15.1.tar.gz\
 && cd openresty*\
 && ./configure --prefix=/usr/local/server/openresty \
            --with-luajit \
            --without-http_redis2_module \
            --with-http_iconv_module \
            --with-http_postgres_module\
 && make && make install

ADD www/ /etc/nginx/sites-enabled

CMD cd /usr/local/server/openresty/nginx/ \
  && sbin/nginx \
  && tail -f logs/access.log
