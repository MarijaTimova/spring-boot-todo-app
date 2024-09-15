# Use the official OpenJDK 20 image as a base
FROM eclipse-temurin:20-jdk

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file from the target directory
COPY target/app-0.0.1-SNAPSHOT.jar /app/spring-boot-todo-app.jar

# Expose the port that Spring Boot will run on
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "spring-boot-todo-app.jar"]
