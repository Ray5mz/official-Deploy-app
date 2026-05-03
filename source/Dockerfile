FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app

COPY pom.xml .
COPY sihati-system-utils/pom.xml sihati-system-utils/
COPY sihati-system-domain/pom.xml sihati-system-domain/
COPY sihati-system-persistence/pom.xml sihati-system-persistence/
COPY sihati-system-web/pom.xml sihati-system-web/
COPY sihati-system-infrastructure/pom.xml sihati-system-infrastructure/
COPY sihati-system-application/pom.xml sihati-system-application/

COPY sihati-system-utils/src sihati-system-utils/src
COPY sihati-system-domain/src sihati-system-domain/src
COPY sihati-system-persistence/src sihati-system-persistence/src
COPY sihati-system-web/src sihati-system-web/src
COPY sihati-system-infrastructure/src sihati-system-infrastructure/src
COPY sihati-system-application/src sihati-system-application/src

RUN mvn clean package -DskipTests

FROM eclipse-temurin:21-jre
WORKDIR /app

COPY --from=build /app/sihati-system-web/target/*.war app.jar
COPY key/ /key/

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]