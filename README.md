# 🚂 Train Ticket Booking System

A fully-featured train booking backend built with Java, Spring Boot, and MySQL. Includes JWT authentication, Dockerized deployment, and a CLI interface.

![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![Spring Boot](https://img.shields.io/badge/Spring_Boot-6DB33F?style=for-the-badge&logo=spring-boot&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Gradle](https://img.shields.io/badge/Gradle-02303A?style=for-the-badge&logo=gradle&logoColor=white)

---

## ✨ Features

- 🎫 **Book & cancel tickets** — full CRUD for reservations
- 🔐 **JWT Authentication** — secure user login and session management
- 🚉 **Train & route management** — search trains by source/destination
- 🐳 **Dockerized** — runs with a single `docker-compose up`
- 💻 **CLI interface** — interact directly from the terminal

---

## 🛠 Tech Stack

| Layer | Technology |
|-------|-----------|
| Backend | Java 17, Spring Boot |
| Database | MySQL |
| Auth | JWT (Spring Security) |
| Build | Gradle |
| Deployment | Docker, Docker Compose |

---

## 🚀 Getting Started

### Prerequisites
- Java 17+
- Docker & Docker Compose
- MySQL (or use Docker)

### Option 1 — Docker (Recommended)

```bash
git clone https://github.com/oveshshaikh786/Train-ticket-booking.git
cd Train-ticket-booking

docker-compose up --build
# API running at http://localhost:8080
```

### Option 2 — Run Locally

```bash
# Clone and build
git clone https://github.com/oveshshaikh786/Train-ticket-booking.git
cd Train-ticket-booking

# Configure database in src/main/resources/application.properties
spring.datasource.url=jdbc:mysql://localhost:3306/traindb
spring.datasource.username=root
spring.datasource.password=yourpassword

# Build and run
./gradlew bootRun
```

---

## 📡 API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | `/api/auth/register` | Register a new user |
| POST | `/api/auth/login` | Login and get JWT token |
| GET | `/api/trains` | List all trains |
| GET | `/api/trains/search` | Search by source & destination |
| POST | `/api/bookings` | Book a ticket |
| GET | `/api/bookings/{id}` | Get booking details |
| DELETE | `/api/bookings/{id}` | Cancel a booking |

---

## 📁 Project Structure

```
├── src/main/java/
│   ├── controller/     # REST controllers
│   ├── service/        # Business logic
│   ├── repository/     # JPA repositories
│   ├── model/          # Entity classes
│   └── security/       # JWT config
├── Dockerfile
├── docker-compose.yml
└── build.gradle
```

---

## 🔮 Planned Improvements

- [ ] Seat selection
- [ ] Payment integration
- [ ] Email confirmation
- [ ] Admin dashboard

---

## 👤 Author

**Ovesh Shaikh** · [LinkedIn](https://linkedin.com/in/oveshshaikh786) · [Portfolio](https://portfolio-ovesh.vercel.app)
