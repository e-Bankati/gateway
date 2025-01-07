# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Label the image
LABEL authors="houda"

# Set the working directory in the container
WORKDIR /app

# Copy the jar file of the Gateway application into the container
COPY target/Gateway-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port used by the Gateway application
EXPOSE 8222

# Run the Gateway application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
