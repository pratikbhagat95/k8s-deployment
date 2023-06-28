# Stage1 : Build application
FROM maven:3.8.4-openjdk-17 AS build
WORKDIR /app
COPY spring-petclinic/pom.xml .
RUN mvn dependency:go-offline -B
COPY spring-petclinic/src ./src
RUN mvn package -DskipTests

# Stage2 : Used to run application

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/spring-petclinic-3.1.0-SNAPSHOT.jar /app/app.jar
EXPOSE 8080
CMD ["java","-jar","-Dspring.profiles.active=postgres","app.jar"]