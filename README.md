# 🚀 Spring Boot CI/CD Application (Docker + AWS EKS)

This is a Spring Boot application demonstrating a complete **CI/CD pipeline using GitHub Actions**, containerization using **Docker**, and deployment on **AWS EKS (Kubernetes)**.

---

# 📌 Features

- Spring Boot REST API
- Docker containerization
- GitHub Actions CI/CD pipeline
- Deployment to AWS EKS (Kubernetes)
- Unit & integration testing with JUnit + MockMvc

---

# 🌐 API Endpoints

## 1. Root Endpoint
GET /
### Response:
```json
{
  "message": "Hello from Spring Application",
  "env": "ENV_VALUE",
  "container": "hostname"
}
```
## 2. Users Endpoint
GET /users
```json
[
  {
    "id": 1,
    "name": "Deepak",
    "email": "deepak@example.com"
  },
  {
    "id": 2,
    "name": "Amit",
    "email": "amit@example.com"
  },
  {
    "id": 3,
    "name": "Rahul",
    "email": "rahul@example.com"
  }
]
```
## Tech Stack
Java 17+
Spring Boot
Maven
Docker
GitHub Actions
AWS EKS (Kubernetes)

## Run Tests
mvn clean test

# Run with Docker
### Build Image
docker build -t springapplication .
### Run Container
docker run -p 8080:8080 springapplication

# Kubernetes Deployment (AWS EKS)
### Apply Deployment
kubectl apply -f app.yml
### Check Pods
kubectl get pods
### Check Service
kubectl get svc

# CI/CD Pipeline (GitHub Actions)

## Pipeline includes:

### 1. Build & Test
  Maven build
  Unit & integration tests
### 2. Docker Build & Push
  Builds Docker image
  Pushes to Docker Hub
### 3. Deploy to AWS EKS
  Applies Kubernetes configuration
  Updates image using Git commit SHA
  Performs rolling deployment

## 📁 Project Structure

<pre>
src/
├── main/
│   └── java/
│       └── com/
│           └── docker/
│               └── application/
│                   ├── controller/
│                   │   ├── WelcomeController.java
│                   │   └── UserController.java
│                   └── model/
│                       └── User.java
│
└── test/
    └── java/
        └── com/
            └── docker/
                └── application/
                    ├── WelcomeControllerTest.java
                    └── UserControllerTest.java
</pre>

## Docker Image
tumuladeepak/springapplication

### Tags used:
  - latest  
  - github commit SHA  
  - branch name  
## Environment Variable (Kubernetes)
Example : ENV_VALUE = Hello from AWS Cluster Kubernetes using CI-CD!!
