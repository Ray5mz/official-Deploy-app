FROM adoptopenjdk/openjdk11:latest
MAINTAINER Mesbah GUEFFAF <mesbah.gueffaf@elit.dz>

ENTRYPOINT "java", "-jar", "/usr/share/pfe/pfe.jar"]

# Add the service itself
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/pfe/pfe.jar
