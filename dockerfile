# THIS DOCKER FILE FOR CATALOGSERVER 

# SPECIFY THE CONTAINER IMAGE
FROM            centos
MAINTAINER      Nagesha H B (nagesha.hb.ext@siemens.com)
ADD ./jre1.8.0_151/bin /usr/bin
ADD ./jre1.8.0_151/lib /usr/lib
ADD ./apache-tomcat-8.0.28 /usr/local/tomcat
ADD ./*.xml /usr/local/tomcat/conf/
ADD ./lib /usr/local/tomcat/lib/
ADD ./*.properties /usr/local/tomcat/
ADD ./*.war /usr/local/tomcat/webapps/
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"
