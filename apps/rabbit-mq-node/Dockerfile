FROM centos

MAINTAINER workin.me lenxeon lenxeon@163.com

RUN yum clean all

RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6

RUN yum install -y wget unzip tar

RUN rpm -Uvh ftp://bo.mirror.garr.it/1/slc/centos/7.0.1406/extras/x86_64/Packages/epel-release-7-2.noarch.rpm

RUN yum install -y erlang

RUN rpm --import http://www.rabbitmq.com/rabbitmq-signing-key-public.asc

#RUN yum install -y  http://www.rabbitmq.com/releases/rabbitmq-server/v3.4.0/rabbitmq-server-3.4.0-1.noarch.rpm
RUN yum install -y  http://www.rabbitmq.com/releases/rabbitmq-server/v3.6.5/rabbitmq-server-3.6.5-1.noarch.rpm

RUN /usr/sbin/rabbitmq-plugins enable rabbitmq_mqtt rabbitmq_stomp rabbitmq_management  rabbitmq_management_agent rabbitmq_management_visualiser rabbitmq_federation rabbitmq_federation_management sockjs



# CMD /usr/sbin/rabbitmq-server


ADD rabbitmq.config /etc/rabbitmq/

RUN chmod u+rw /etc/rabbitmq/rabbitmq.config
#
# ADD erlang.cookie /var/lib/rabbitmq/.erlang.cookie
#
# RUN chown rabbitmq:rabbitmq /var/lib/rabbitmq/.erlang.cookie
#
# RUN chmod 400 /var/lib/rabbitmq/.erlang.cookie
#
# RUN mkdir /opt/rabbit
#
# RUN mkdir -p /var/log/rabbitmq/
#
# ADD startrabbit.sh /opt/rabbit/
#
# RUN chmod a+x /opt/rabbit/startrabbit.sh


EXPOSE 5671
EXPOSE 5672
EXPOSE 15672
# EXPOSE 25672
EXPOSE 4369
# EXPOSE 9100
# EXPOSE 9101
# EXPOSE 9102
# EXPOSE 9103
# EXPOSE 9104
# EXPOSE 9105

# CMD /opt/rabbit/startrabbit.sh


CMD service rabbitmq-server start

CMD top
