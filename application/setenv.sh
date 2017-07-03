#!/bin/bash
# Define environment variables required for Tomcat

export OPENEMPI_HOME=/opt/openempi-3.3.0
export CATALINA_OPTS="-Xms512m -Xmx4096m -XX:+UseG1GC \
                      -XX:MaxDirectMemorySize=1999m \
                      -Dopenempi.home=$OPENEMPI_HOME \
                      -Djdbc.url=jdbc\:postgresql\://postgres:5432/openempi"
