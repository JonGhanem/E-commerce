# rules.md

# Mandatory Development Rules

## Architecture

1. Follow microservice architecture.
2. Each service owns its database.
3. No direct database access between services.
4. All external traffic goes through API Gateway.
5. Register all services in Eureka.
6. Centralized configuration through Config Server.

---

## Communication Rules

### Synchronous

Use:
- OpenFeign (preferred)
- RestTemplate only for legacy integrations

Requirements:
- Timeouts configured
- Retries configured
- Circuit breaker enabled
- Fallback strategy required

### Asynchronous

Use Kafka for:
- Order events
- Payment events
- Notification events
- Inventory updates

Event naming:

- order.created
- order.confirmed
- payment.completed
- payment.failed
- notification.sent

Events must be immutable.

---

## Security Rules

1. Keycloak is the single identity provider.
2. JWT authentication only.
3. No hardcoded secrets.
4. Secrets stored in environment variables.
5. Public endpoints explicitly documented.

---

## Observability Rules

1. Enable Spring Boot Actuator.
2. Enable tracing for all services.
3. Propagate trace IDs.
4. Configure Zipkin.
5. Health endpoint required.

Required Actuator endpoints:

- /actuator/health
- /actuator/info
- /actuator/metrics
- /actuator/prometheus

---

## Coding Rules

### Java

- Java 25
- Use records for DTOs when appropriate.
- Prefer immutable objects.
- Use Optional only as return type.
- Use constructor injection.
- Avoid static state.

### Spring Boot

- Use @ConfigurationProperties.
- Use validation annotations.
- Global exception handling mandatory.
- API versioning required.

### Logging

- Structured logging.
- Never log passwords.
- Never log JWT tokens.
- Include traceId in logs.

---

## Testing Rules

Minimum coverage:
- Unit tests: 80%
- Integration tests for APIs
- Kafka integration tests

Tools:
- JUnit 5
- Mockito
- Testcontainers

---

## Docker Rules

Each service must provide:

- Dockerfile
- healthcheck
- non-root execution

Docker Compose must include:

- Kafka
- Keycloak
- Zipkin
- Databases
- Config Server
- Eureka Server
- API Gateway

---

## Recommended Service Structure

customer-service
product-service
order-service
payment-service
notification-service
config-server
discovery-server
api-gateway

---

## API Standards

Success Response:

{
  "data": {}
}

Error Response:

{
  "timestamp": "",
  "traceId": "",
  "code": "",
  "message": ""
}

---

## Branch Strategy

main
develop
feature/*
bugfix/*
hotfix/*

---

## Definition of Done

- Code reviewed
- Tests passing
- Docker image builds
- Service registered in Eureka
- Tracing visible in Zipkin
- Security validated with Keycloak
- Documentation updated
