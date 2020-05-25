# Pull base image
FROM tomcat:8.0-alpine
ADD target/Elibrary-0.0.1-SNAPSHOT /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
