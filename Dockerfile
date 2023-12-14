# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY target/app.jar /app/app.jar

# Specify the default command to run on boot
CMD ["java", "-jar", "app.jar"]
