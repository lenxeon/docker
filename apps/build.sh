


rm /jdk1.8.0_121.tar
wget -P / --no-check-certificate https://static-youth.teamillion.com/soft/sun-jdk/jdk1.8.0_121.tar
rm /apache-tomcat-7.0.94.tar.gz
wget -P / --no-check-certificate https://static-youth.teamillion.com/soft/apache/apache-tomcat-7.0.94.tar.gz


# 停止服务
docker ps -a | awk -F ' ' '{print $1}' | xargs docker stop 

#删除容器 
docker ps -a | awk -F ' ' '{print $1}' | xargs docker rm



git reset --hard

git clean -d -f

git pull

docker build -t apps/base centos-base

docker-compose up --build