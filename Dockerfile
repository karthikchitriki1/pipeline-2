FROM tomcat:9.0

WORKDIR /usr/local/tomcat

User root

RUN mv /usr/local/tomcat/webapps /usr/local/tomcat/webapps2

RUN mv /usr/local/tomcat/webapps.dist/ webapps

ADD ./target/dptweb-1.0.war /usr/local/tomcat/webapps/

COPY /usr/local/tomcat/conf/tomcat-users.xml /usr/local/tomcat/conf/

COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/

COPY context.xml /usr/local/tomcat/webapps/host-manager/META-INF/

EXPOSE 8080

CMD ["catalina.sh", "run"]
