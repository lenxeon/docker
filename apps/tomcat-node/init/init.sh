base=/app/tomcat7
rm -r -f $base/webapps/*
wget http://static-youth.teamillion.com/soft/apps/apps-web.war?t=`date -d "$currentTime" +%s` -O ./apps-web.war
cp ./apps-web.war $base/webapps/