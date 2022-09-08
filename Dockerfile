FROM tomcat:latest
WORKDIR /opt/tomcat
RUN wget -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.82/bin/apache-tomcat-8.5.82.tar.gz
RUN tar xvfz tomcat*.tar.gz
RUN mv apache-tomcat-8.5.82/* /opt/tomcat/.
EXPOSE 8080
