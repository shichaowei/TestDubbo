rm -rf /usr/local/tomcat-dubbo-admin/temp/*
rm -rf /usr/local/tomcat-dubbo-admin/work/*
rm -rf /usr/local/tomcat-dubbo-admin/logs/*
/usr/local/tomcat-dubbo-admin/bin/startup.sh
tail -f /usr/local/tomcat-dubbo-admin/logs/catalina.out
