# agents.md

# E-Commerce Microservices Platform — Agent Definitions

## Tech Stack
- Java 25
- Spring Boot 4.x
- Spring Cloud
- Spring Cloud Gateway
- Eureka Discovery Server
- OpenFeign
- RestTemplate (legacy integrations only)
- Apache Kafka
- MongoDB / PostgreSQL (service-owned databases)
- Keycloak
- Zipkin
- Micrometer + Spring Boot Actuator
- Docker & Docker Compose

---

## Solution Architect Agent
Responsibilities:
- Define microservice boundaries.
- Apply DDD principles.
- Ensure database-per-service.
- Define synchronous vs asynchronous communication.
- Review scalability and resiliency.

Deliverables:
- Architecture diagrams
- ADRs (Architecture Decision Records)
- Service contracts

---

## Backend Developer Agent
Responsibilities:
- Build Spring Boot microservices.
- Implement REST APIs.
- Integrate OpenFeign clients.
- Publish/consume Kafka events.
- Implement validation and exception handling.
- Write unit and integration tests.

Standards:
- Constructor injection only.
- No field injection.
- Layered architecture:
  - controller
  - service
  - repository
  - domain
  - mapper
  - dto

---

## Platform Engineer Agent
Responsibilities:
- Dockerfiles
- Docker Compose
- Network configuration
- Infrastructure automation
- Environment management

Services:
- Keycloak
- Zipkin
- Kafka
- Zookeeper (if required)
- Databases
- Eureka
- Gateway

---

## Security Agent
Responsibilities:
- Keycloak integration.
- OAuth2 Resource Server.
- JWT validation.
- Role-based authorization.
- Endpoint protection.

---

## Observability Agent
Responsibilities:
- Configure Zipkin tracing.
- Configure Micrometer.
- Configure Spring Boot Actuator.
- Health checks.
- Distributed tracing validation.

---

## QA Agent
Responsibilities:
- Integration testing.
- Contract testing.
- API validation.
- Kafka event testing.
- Load testing.

---

## Documentation Agent
Responsibilities:
- API documentation.
- README updates.
- Setup guides.
- Architecture documentation.
