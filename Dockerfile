FROM tomcat:9.0-jdk17

COPY studentapp.zip /usr/local/tomcat/webapps/

RUN cd /usr/local/tomcat/webapps && \
    jar -xf studentapp.zip && \
    rm studentapp.zip

EXPOSE 8080

CMD ["catalina.sh", "run"]
