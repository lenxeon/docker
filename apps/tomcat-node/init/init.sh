base=/usr/local/server/tomcat7/
killall -9 java
rm -r -f $base/webapps/
cd $base
wget https://static-youth.teamillion.com/soft/apps/apps-web.war
cp apps-web.war $base/webapps/
$base/bin/catalina.sh run