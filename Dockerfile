# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "valaxytech@gmail.com" 
COPY /var/lib/Jenkins/workspace/docker_p/webapp/target/webapp.war /usr/local/tomcat/webapps
