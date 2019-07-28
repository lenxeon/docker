 
 docker ps -a | awk -F ' ' '{print $1}' | xargs docker stop 

 docker ps -a | awk -F ' ' '{print $1}' | xargs docker rm 

 git clean -d -f

 docker-compose up -d