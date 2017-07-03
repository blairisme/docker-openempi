#!/bin/bash
# Define environment variables required for Tomcat

export OPENEMPI_HOME=/opt/openempi-3.3.0
export CATALINA_OPTS="-Xms128m -Xmx2048m -XX:+UseG1GC \
                      -Dopenempi.home=$OPENEMPI_HOME \
                      -Djdbc.url=jdbc\:postgresql\://postgres:5432/openempi"
