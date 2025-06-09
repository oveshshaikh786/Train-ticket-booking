# Build Stage
FROM gradle:8.4.0-jdk17 AS builder
WORKDIR /app
COPY . .
RUN cd app && gradle build --no-daemon

# Run Stage
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY --from=builder /app/app/build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]