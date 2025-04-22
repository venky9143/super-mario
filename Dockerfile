FROM venkateshkesa/super-mario:v1
# Enable HTTP connector
RUN sed -i '/Connector port="8080"/s/<!--//' /usr/local/tomcat/conf/server.xml && \
    sed -i '/Connector port="8080"/s/-->//' /usr/local/tomcat/conf/server.xml

EXPOSE 8080
CMD ["catalina.sh", "run"]