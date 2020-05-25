# Pull base image
From tomcat:8-jre8

EXPOSE 8080
# Copy to images tomcat path
ADD dockerwar.war /usr/local/tomcat/webapps/
