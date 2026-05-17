FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app

COPY source/pom.xml .
COPY source/sihati-system-utils/pom.xml sihati-system-utils/
COPY source/sihati-system-domain/pom.xml sihati-system-domain/
COPY source/sihati-system-persistence/pom.xml sihati-system-persistence/
COPY source/sihati-system-web/pom.xml sihati-system-web/
COPY source/sihati-system-infrastructure/pom.xml sihati-system-infrastructure/
COPY source/sihati-system-application/pom.xml sihati-system-application/

COPY source/sihati-system-utils/src sihati-system-utils/src
COPY source/sihati-system-domain/src sihati-system-domain/src
COPY source/sihati-system-persistence/src sihati-system-persistence/src
COPY source/sihati-system-web/src sihati-system-web/src
COPY source/sihati-system-infrastructure/src sihati-system-infrastructure/src
COPY source/sihati-system-application/src sihati-system-application/src

RUN mvn clean package -DskipTests

FROM eclipse-temurin:21-jre
WORKDIR /app

COPY --from=build /app/sihati-system-web/target/*.war app.jar
COPY source/key/ /app/key/

EXPOSE 10000

ENTRYPOINT ["java", "-jar", "app.jar"]