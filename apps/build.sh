
currentTime=`date "+%Y-%m-%d %H:%M:%S"`

rm jdk1.8.0_121.tar
rm apache-tomcat-7.0.94.tar
rm apps-web.war
rm canal.deployer.tar

git reset --hard

git clean -d -f

git pull

wget https://static-youth.teamillion.com/soft/sun-jdk/jdk1.8.0_121.tar?t=`date -d "$currentTime" +%s`  -O ./jdk1.8.0_121.tar
wget https://static-youth.teamillion.com/soft/apache/apache-tomcat-7.0.94.tar?t=`date -d "$currentTime" +%s`  -O ./apache-tomcat-7.0.94.tar
wget http://static-youth.teamillion.com/soft/apps/apps-web.war?t=`date -d "$currentTime" +%s` -O ./apps-web.war
wget https://static-youth.teamillion.com/soft/alibaba/canal.deployer.tar?t=`date -d "$currentTime" +%s` -O ./canal.deployer.tar


# 停止服务
docker ps -a | awk -F ' ' '{print $1}' | xargs docker stop 

#删除容器 
docker ps -a | awk -F ' ' '{print $1}' | xargs docker rm

#删除错误的镜像
docker images | grep none  | awk -F ' ' '{print $3}' | xargs docker rmi

docker build -t apps/base centos-base
docker build -t apps/tomcat tomcat-node

docker-compose up --build