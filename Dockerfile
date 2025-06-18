FROM tomcat:8-jdk8

# Clean default apps to avoid conflicts
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy iClock web app into Tomcat
COPY iclock/ /usr/local/tomcat/webapps/iclock/

EXPOSE 8080

CMD ["catalina.sh", "run"]
