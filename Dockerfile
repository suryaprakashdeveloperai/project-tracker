# STAGE 1: Build the application
FROM gradle:8.5-jdk17 AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
# Run the build command to create the JAR file
RUN ./gradlew bootJar --no-daemon

# STAGE 2: Run the application
FROM eclipse-temurin:17-jdk-alpine
EXPOSE 8080
WORKDIR /app
# Copy the JAR specifically from the 'build' stage above
COPY --from=build /home/gradle/src/build/libs/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
