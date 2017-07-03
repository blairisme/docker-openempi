FROM tomcat:8.0-jre8

MAINTAINER Alessandro Fael Garcia <alessfg@hotmail.com>

LABEL OpenEMPI-Version="3.3.0" \
      Description="Docker image for the OpenEMPI application"

# Copy OpenEMPI files into their corresponding directories
COPY ./openempi-3.3.0/openempi-entity-webapp-web-3.3.0c.war /opt/openempi-3.3.0/openempi-entity-webapp-web-3.3.0c.war
COPY ./openempi-3.3.0/conf /opt/openempi-3.3.0/conf
COPY ./openempi-3.3.0/conf/openempi-admin.xml /usr/local/tomcat/conf/Catalina/localhost/openempi-admin.xml
COPY ./setenv.sh /usr/local/tomcat/bin/setenv.sh
COPY ./wait-for-it.sh /opt/openempi-3.3.0/bin/wait-for-it.sh
COPY ./openempi-3.3.0/postgresql-42.1.1.jar /usr/local/tomcat/lib/

# Make startup script executable
RUN chmod +x /opt/openempi-3.3.0/bin/wait-for-it.sh

# Expose port 8080 outside of Docker
EXPOSE 8080

# Initialisation scripts
# Wait until database is available
# Then proceed to start Tomcat
CMD /opt/openempi-3.3.0/bin/wait-for-it.sh postgres:5432 -t 60 && \
  catalina.sh run
