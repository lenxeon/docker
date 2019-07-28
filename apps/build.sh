 
 docker ps -a | awk -F ' ' '{print $1}' | xargs docker stop 

 docker ps -a | awk -F ' ' '{print $1}' | xargs docker rm 

 git reset

 git clean -d -f

 git pull

 docker-compose up -d