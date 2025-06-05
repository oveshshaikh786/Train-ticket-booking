# Use Gradle image with Java to build the project
FROM gradle:8.4.0-jdk17 AS builder
WORKDIR /home/app
COPY . .
RUN gradle build --no-daemon

# Use lightweight image to run the app
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY --from=builder /home/app/app/build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]