# Stage 1: Build with Maven
FROM maven:3.9.6-eclipse-temurin-17 as builder

WORKDIR /app

# Copy pom.xml and download dependencies first (for caching)
COPY pom.xml .
RUN mvn dependency:go-offline

# Copy the rest of the source code
COPY src ./src

# Package the application
RUN mvn package -DskipTests

# Stage 2: Run with JDK
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy the built jar from the builder stage
COPY --from=builder /app/target/myapp.jar app.jar

CMD ["java", "-jar", "app.jar"]
