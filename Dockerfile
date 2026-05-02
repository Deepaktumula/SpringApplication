# Stage 1: Build
FROM maven:3.9.9-eclipse-temurin-21 AS builder
WORKDIR /build
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Run (Lightweight)
FROM eclipse-temurin:21-jre-jammy
WORKDIR /app

# Security: create non-root user
RUN useradd -m appuser
USER appuser

COPY --from=builder /build/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]

#===================================================================================================================
#
#http://a1c0c8beb932149149f4a4dd264ed4de-365732534:ap-south-1:elb:amazonaws:com:3000/price?amount=100&country=IN
#
#===================================================================================================================
#
#
#For service-b (lighter):
#requests:
#  cpu: "100m"
#  memory: "128Mi"
#limits:
#  cpu: "500m"
#  memory: "512Mi"
#
#
#For service-a (handles traffic):
#requests:
#  cpu: "100m"
#  memory: "128Mi"
#limits:
#  cpu: "500m"
#  memory: "512Mi"

