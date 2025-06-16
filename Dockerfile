FROM tomcat:8-jdk8

# Deploy iClock into Tomcat under /iclock path
COPY iclock/ /usr/local/tomcat/webapps/iclock/

EXPOSE 8080
