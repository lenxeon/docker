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
