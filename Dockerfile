FROM tomcat:9.0-jdk17

# Copy web app
COPY studentapp.zip /usr/local/tomcat/webapps/

RUN cd /usr/local/tomcat/webapps && \
    jar -xf studentapp.zip && \
    rm studentapp.zip

# Copy MySQL JDBC driver into Tomcat lib
COPY lib/mysql-connector-j-9.5.0.jar /usr/local/tomcat/lib/

EXPOSE 8080

CMD ["catalina.sh", "run"]
