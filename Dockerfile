# Dockerfile
# Use Maven base image with JDK 17
FROM maven:3.9.6-eclipse-temurin-17

# Set working directory inside container
WORKDIR /app

# Copy the pom.xml and source code
COPY . .

# Run Maven build
RUN mvn clean package

# Default command to run your app (optional)
CMD ["java", "-jar", "target/myapp.jar"]
