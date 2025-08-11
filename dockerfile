# OpenJDK distribution
FROM eclipse-temurin:21-jdk-alpine
# Application folder
WORKDIR /app
# Get APP_VERSION from --build-arg
ARG APP_VERSION
# copy jar from build maven and rename to app.jar
COPY target/com.shiyatsu.training.docker-*.jar /app/app.jar
# expose spring port
EXPOSE 8080
# Command to start spring application
ENTRYPOINT ["java","-jar","/app/app.jar"]