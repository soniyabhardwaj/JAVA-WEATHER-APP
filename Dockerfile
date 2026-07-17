FROM tomcat:10.1-jdk17-openjdk-slim
COPY ROOT.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]