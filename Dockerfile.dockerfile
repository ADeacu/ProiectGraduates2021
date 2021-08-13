FROM tomcat

RUN apt-get update && apt-get -y upgrade

ADD /target/proiect.war /usr/local/tomcat/webapps

CMD chmod 777 /usr/local/tomcat/bin/catalina.sh
CMD [“catalina.sh”, “run”]