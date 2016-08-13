FROM centos:latest

MAINTAINER workin.me lenxeon lenxeon@163.com

#wget
RUN echo '====================================准备============================================'
RUN yum install -y wget
#ozsh
RUN yum install -y sudo
RUN sudo yum install -y zsh
RUN sudo yum install -y git
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
#jdk
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk//7u79-b15/jdk-7u79-linux-x64.rpm
RUN rpm -ivh jdk*.rpm
