 
 docker ps -a | awk -F ' ' '{print $1}' | xargs docker stop 

 docker ps -a | awk -F ' ' '{print $1}' | xargs docker rm 

 git reset --hard

 git clean -d -f

 git pull

 docker build -t apps/base centos-base

 docker-compose up --build