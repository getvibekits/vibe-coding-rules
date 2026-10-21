# AGENTS.md

## Project
A REST API for a small booking app. Java 21, Spring Boot, Maven, PostgreSQL.
Code in src/main/java, tests in src/test/java. Layers: controller -> service -> repository.

## Setup commands
- Run locally: ./mvnw spring-boot:run
- Test: ./mvnw test
- Build: ./mvnw package

## Code style
- Constructor injection only. No field injection.
- Controllers stay thin: validation and mapping only. Business logic goes in services.
- Use DTOs for requests and responses. Don't return entities from controllers.

## Rules
- Database changes go in a new migration file. Never edit a migration that already ran.
- Never put passwords or keys in application.properties. Use environment variables.
- Run ./mvnw test before you say a task is done.
