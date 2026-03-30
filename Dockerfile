# Step 1: Use an official Java runtime
FROM eclipse-temurin:17-jdk-alpine

# Step 2: Set the directory inside the container
WORKDIR /app

# Step 3: Copy your project's JAR file
# Render will find the JAR in build/libs/ after the build step
COPY build/libs/*.jar app.jar

# Step 4: Expose the port
EXPOSE 8080

# Step 5: START THE APP (Replace the 'top' command)
ENTRYPOINT ["java", "-jar", "app.jar"]
